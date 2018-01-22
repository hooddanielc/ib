#!/bin/bash
pip install pytest pytest-xdist pytest-cov pyinotify
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ROOT=$($DIR/abs.sh $DIR/../)
python -m pytest $ROOT/test

rem clang -c -fdiagnostics-format=msvc -target "amd64-pc-windows-msvc" ^
rem     -I "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\ClangC2\14.10.25903\include" ^
rem     -I "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.11.25503\include" ^
rem     -I "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.11.25503\atlmfc\include" ^
rem     -I "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\VS\include" ^
rem     -I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.15063.0\ucrt" ^
rem     -I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.15063.0\um" ^
rem     -I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.15063.0\shared" ^
rem     -I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.15063.0\winrt" ^
rem     -I Include\um ^
rem     -g2 ^
rem     -gdwarf-2 ^
rem     -o "main.obj" ^
rem     -Wall ^
rem     -O0 ^
rem     -fno-strict-aliasing ^
rem     -fno-omit-frame-pointer ^
rem     -fexceptions ^
rem     -fstack-protector ^
rem     -fpic ^
rem     -fno-short-enums ^
rem     -frtti ^
rem     -D _MBCS ^
rem     -x ^
rem     c++ ^
rem     -fno-ms-compatibility ^
rem     -fms-extensions ^
rem     -fno-delayed-template-parsing ^
rem     -D_DEBUG ^
rem     -D_MT ^
rem     -D_DLL ^
rem     -Xclang ^
rem     --dependent-lib=msvcrtd ^
rem     -Xclang ^
rem     --dependent-lib=oldnames ^
rem     main.cc

rem link.exe ^
rem     /ERRORREPORT:PROMPT ^
rem     /OUT:"simple-project.exe" ^
rem     /INCREMENTAL ^
rem     /NOLOGO ^
rem     kernel32.lib ^
rem     user32.lib ^
rem     gdi32.lib ^
rem     winspool.lib ^
rem     comdlg32.lib ^
rem     advapi32.lib ^
rem     shell32.lib ^
rem     ole32.lib ^
rem     oleaut32.lib ^
rem     uuid.lib ^
rem     odbc32.lib ^
rem     odbccp32.lib ^
rem     /MANIFEST ^
rem     /MANIFESTUAC:"level='asInvoker' uiAccess='false'" ^
rem     /manifest:embed ^
rem     /DEBUG:FASTLINK ^
rem     /TLBID:1 ^
rem     /DYNAMICBASE ^
rem     /NXCOMPAT ^
rem     /MACHINE:X64 main.obj

clang -c ^
    -I "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\ClangC2\14.10.25903\include" ^
    -I "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.11.25503\include" ^
    -I "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.11.25503\atlmfc\include" ^
    -I "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\VS\include" ^
    -I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.16299.0\ucrt" ^
    -I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.16299.0\um" ^
    -I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.16299.0\shared" ^
    -I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.16299.0\winrt" ^
    -o main.obj ^
    -Xclang ^
    --dependent-lib=msvcrtd ^
    -Xclang ^
    --dependent-lib=oldnames ^
    main.cc

link ^
    /ERRORREPORT:PROMPT ^
    /OUT:basic.exe ^
    /INCREMENTAL ^
    /NOLOGO ^
    kernel32.lib ^
    user32.lib ^
    gdi32.lib ^
    winspool.lib ^
    comdlg32.lib ^
    advapi32.lib ^
    shell32.lib ^
    ole32.lib ^
    oleaut32.lib ^
    uuid.lib ^
    odbc32.lib ^
    odbccp32.lib ^
    /MANIFEST ^
    /MANIFESTUAC:"level='asInvoker' uiAccess='false'" ^
    /manifest:embed ^
    /DEBUG:FASTLINK ^
    /TLBID:1 ^
    /DYNAMICBASE ^
    /NXCOMPAT ^
    /MACHINE:X64 ^
    main.obj

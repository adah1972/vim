:: MSVC11 (VS2012) is assumed.  It may or may not work in other MSVC versions.
@echo off
setlocal
if "%PROCESSOR_ARCHITECTURE%"=="AMD64" set PF32=%ProgramFiles(x86)%
if "%PROCESSOR_ARCHITECTURE%"=="x86" set PF32=%ProgramFiles%
if "%PF32%"=="" goto PF_ERROR
set WinSdk71=%PF32%\Microsoft SDKs\Windows\v7.1A
set SDK_INCLUDE_DIR=%WinSdk71%\Include
set INCLUDE=%WinSdk71%\Include;%INCLUDE%
set LIB=%WinSdk71%\Lib;%LIB%
set PATH=%WinSdk71%\Bin;%PATH%
set CL=/D_USING_V110_SDK71_
.\update_version.pl
nmake -f Make_mvc.mak GUI=yes DIRECTX=yes OLE=yes MBYTE=yes IME=yes GIME=yes CSCOPE=yes PERL=C:\Strawberry\perl DYNAMIC_PERL=yes PERL_VER=532 PYTHON=C:\Python27 DYNAMIC_PYTHON=yes PYTHON_VER=27 PYTHON3=C:\Python310 DYNAMIC_PYTHON=yes PYTHON3_VER=310 RUBY=C:\ruby30 DYNAMIC_RUBY=yes RUBY_VER=30 RUBY_VER_LONG=3.0.0 RUBY_MSVCRT_NAME=msvcrt SODIUM=C:\Libraries\libsodium XPM=C:\Libraries\xpm USERNAME=Yongwei USERDOMAIN=Shanghai WINVER=0x0501 SUBSYSTEM_VER=5.01 %*
nmake -f Make_mvc.mak MBYTE=yes CSCOPE=yes PERL=C:\Strawberry\perl DYNAMIC_PERL=yes PERL_VER=532 PYTHON=C:\Python27 DYNAMIC_PYTHON=yes PYTHON_VER=27 PYTHON3=C:\Python310 DYNAMIC_PYTHON=yes PYTHON3_VER=310 RUBY=C:\ruby30 DYNAMIC_RUBY=yes RUBY_VER=30 RUBY_VER_LONG=3.0.0 RUBY_MSVCRT_NAME=msvcrt SODIUM=C:\Libraries\libsodium USERNAME=Yongwei USERDOMAIN=Shanghai WINVER=0x0501 SUBSYSTEM_VER=5.01 %*
endlocal
goto END

:PF_ERROR
echo Unsupported platform!

:END

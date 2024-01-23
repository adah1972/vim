:: MSVC14 (VS2022) is assumed.  It may or may not work in other MSVC versions.
@echo off
setlocal
if "%PROCESSOR_ARCHITECTURE%"=="AMD64" set PF32=%ProgramFiles(x86)%
if "%PROCESSOR_ARCHITECTURE%"=="x86" set PF32=%ProgramFiles%
if "%PF32%"=="" goto PF_ERROR
.\update_version.pl
nmake -f Make_mvc.mak GUI=yes DIRECTX=yes OLE=yes MBYTE=yes IME=yes GIME=yes CSCOPE=yes PERL=C:\Strawberry\perl DYNAMIC_PERL=yes PERL_VER=532 PYTHON=C:\Python27 DYNAMIC_PYTHON=yes PYTHON_VER=27 PYTHON3=C:\Python310 DYNAMIC_PYTHON=yes PYTHON3_VER=3 DYNAMIC_PYTHON3_STABLE_ABI=yes RUBY=C:\ruby32 DYNAMIC_RUBY=yes RUBY_VER=32 RUBY_VER_LONG=3.2.0 RUBY_MSVCRT_NAME=msvcrt SODIUM=C:\Libraries\libsodium USERNAME=Yongwei USERDOMAIN=Shanghai WINVER=0x0601 SUBSYSTEM_VER=6.01 %*
nmake -f Make_mvc.mak MBYTE=yes CSCOPE=yes PERL=C:\Strawberry\perl DYNAMIC_PERL=yes PERL_VER=532 PYTHON=C:\Python27 DYNAMIC_PYTHON=yes PYTHON_VER=27 PYTHON3=C:\Python310 DYNAMIC_PYTHON=yes PYTHON3_VER=3 DYNAMIC_PYTHON3_STABLE_ABI=yes RUBY=C:\ruby32 DYNAMIC_RUBY=yes RUBY_VER=32 RUBY_VER_LONG=3.2.0 RUBY_MSVCRT_NAME=msvcrt SODIUM=C:\Libraries\libsodium USERNAME=Yongwei USERDOMAIN=Shanghai WINVER=0x0601 SUBSYSTEM_VER=6.01 %*
endlocal
goto END

:PF_ERROR
echo Unsupported platform!

:END

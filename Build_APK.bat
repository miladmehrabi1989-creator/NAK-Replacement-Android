@echo off
setlocal
cd /d "%~dp0"
echo ====================================================
echo  NAK Replacement Engineering - Android APK Builder
echo ====================================================
echo.
if exist gradlew.bat (
  call gradlew.bat assembleDebug
  if errorlevel 1 goto fail
  echo.
  echo APK: app\build\outputs\apk\debug\app-debug.apk
  pause
  exit /b 0
)
echo Gradle Wrapper is not bundled in this source package.
echo Open this folder in Android Studio and choose Build ^> Build APK(s).
echo See README_BUILD_APK.txt.
pause
exit /b 1
:fail
echo Build failed. Open the project in Android Studio and check SDK/Gradle setup.
pause
exit /b 1

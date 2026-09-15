NAK Replacement Engineering Tool - Android v1.0.0

This is a complete offline Android Studio project.
Runtime internet is NOT required. No INTERNET permission is requested.
All compatibility datasets and 62 unit images are packaged in app/src/main/assets.

BUILD APK (Android Studio):
1) Open this folder in Android Studio (Ladybug or newer recommended).
2) Let Gradle sync and install Android SDK 35 if Android Studio asks.
3) Build > Build APK(s).
4) Debug output: app\build\outputs\apk\debug\app-debug.apk

COMMAND LINE (when Gradle wrapper/SDK are available):
    gradlew.bat assembleDebug

The app is intentionally built with only Android framework WebView APIs (no AndroidX/runtime libraries), so the installed APK remains self-contained and offline.

UI: corporate dark navy + orange, using Selection_Background.png supplied for the Windows tool.
Data: Nokia/Ericsson RF and System Module matrices copied from the current project datasets.
Images: extracted from Complete_Unit_Images_ALL_EMBEDDED.xlsx.

GITHUB ACTIONS (no local Android Studio needed):
1) Upload this project to a GitHub repository.
2) Open Actions > Build Android APK > Run workflow.
3) Download artifact: NAK-Replacement-Engineering-APK.
The workflow file is included at .github/workflows/build-apk.yml.

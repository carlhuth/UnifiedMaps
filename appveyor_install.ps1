$AndroidToolPath = "${env:ProgramFiles(x86)}\Android\android-sdk\tools\android.bat"
$AndroidSdkManagerToolPath = "${env:ProgramFiles(x86)}\Android\android-sdk\tools\sdkmanager.bat"

if (!(Test-Path $AndroidToolPath)) {
    $AndroidToolPath = "$env:localappdata\Android\android-sdk\tools\android.bat"
}

& $AndroidSdkManagerToolPath sdkmanager --list
& $AndroidSdkManagerToolPath sdkmanager --install platform-tools,build-tools-26.0.1,build-tools-25.0.2,android-25,android-24,extra-android-m2repository,extra-google-m2repository

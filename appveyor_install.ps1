$AndroidToolPath = "${env:ProgramFiles(x86)}\Android\android-sdk\tools\android.bat"
$AndroidSdkManagerToolPath = "${env:ProgramFiles(x86)}\Android\android-sdk\tools\bin\sdkmanager.bat"

if (!(Test-Path $AndroidToolPath)) {
    $AndroidToolPath = "$env:localappdata\Android\android-sdk\tools\android.bat"
}

if (!(Test-Path $AndroidSdkManagerToolPath)) {
    $AndroidSdkManagerToolPath = "$env:localappdata\Android\android-sdk\tools\bin\sdkmanager.bat"
}
$null = Echo 'y' | & $AndroidToolPath update sdk -u

$null = Echo 'y' | & $AndroidToolPath update sdk --no-ui --all --filter platform-tools,build-tools-26.0.1,build-tools-25.0.2,android-25,android-24,extra-android-m2repository,extra-google-m2repository

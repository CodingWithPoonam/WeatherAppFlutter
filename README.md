# weather_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Installation

- Download flutter from [flutter.dev](https://flutter.dev/docs/get-started/install) and set the environment variables with your SDK route.

MAC:

```bash
sudo nano ~/.bash_profile
```

```bash
export FLUTTER_SDK=/Users/<YOUR-USER>/Development/flutter
export PATH=$PATH:$FLUTTER_SDK/bin:$PATH
```

check your current and pending installations with:

```bash
flutter doctor
```

Set the Flutter Path (Just for MAC)

```bash
sudo nano /etc/paths 
```

```bash
/Users/<YOUR-USER>/Development/flutter/bin
```

- Download [Android studio](https://developer.android.com/studio) and set the environment variables with your SDK route

```bash
sudo nano ~/.bash_profile
```

```bash
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
```

- Download [Xcode and Xcode tools](https://developer.apple.com/xcode/) if you are using MACOS System
- Download the last [GIT Version](https://git-scm.com/downloads)
- Setup the emulators using XCode or Android Studio
Go to your root folder inside the project and open a new terminal:

- Install dependencies

```bash
flutter pub get
``` 

- then

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

- finally, on Mobile

```bash
flutter run lib/main.dart --flavor dev
```

- or Web

```bash
flutter run web -d chrome -t lib/main.dart --web-port=5000
```

- select the target device from the prompt

Additionally

You can get all available commands for Flutter on the [Flutter CLI page](https://flutter.dev/docs/reference/flutter-cli)




![Simulator Screenshot - iPhone 15 Pro - 2024-04-16 at 20 29 32](https://github.com/CodingWithPoonam/WeatherAppFlutter/assets/163306834/9f5f189a-a6b7-4fe3-ac6c-e6f7ddd863eb)

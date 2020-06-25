# mampufb

A new Flutter project to demo Firebase capabilities 
during my training at MAMPU Malaysia June 22-26 2020

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

If exception error, you need to do these:
You need to configure your Google Cloud Api project with your package.

https://developers.google.com/identity/sign-in/android/start-integrating#configure_a_project
Make sure to be logged in with the same account of Firebase

Select your firebase project
Select Android
Open terminal inside your flutter project
cd android
./gradlew signingReport or gradlew signingReport
Paste your package name and your SHA1 key
Download Client Information
Download and replace the google-services.json
flutter clean
IOS:

Select your Firebase project
Select IOS
Enter your Bundle ID
Download credetials
Download and replace GoogleService-info.plist

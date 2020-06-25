import 'package:flutter/material.dart';
// import 'package:mampufb/addbuah.dart';
import 'package:mampufb/login.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase MAMPU Demo',
      //we will straight use Addbuah UI
      home: Login(),
    );
  }
}













// ====================================================
// FOR MESSAGING
// ====================================================
// import 'package:flutter/material.dart';
// import 'package:mampufb/messaging_widget.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   final String appTitle = 'Firebase Mampu Demo';
//   @override
//   Widget build(BuildContext context) => MaterialApp(
//         title: appTitle,
//         home: MainPage(appTitle: appTitle),
//       );
// }

// class MainPage extends StatelessWidget {
//   final String appTitle;

//   const MainPage({this.appTitle});

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//           title: Text(appTitle),
//         ),
//         body: MessagingWidget(),
//       );
// }

// import 'package:flutter/material.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
 
// void main() => runApp(MyApp());
 
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Material App',
//       home: PushMessagingExample(),
//     );
//   }
// }

// class PushMessagingExample extends StatefulWidget {
//   @override
//   _PushMessagingExampleState createState() => _PushMessagingExampleState();
// }
// class _PushMessagingExampleState extends State<PushMessagingExample> {
//   String _homeScreenText = "Waiting for token...";
//   String _messageText = "Waiting for message...";
// final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
// @override
//   void initState() {
//     super.initState();
//     _firebaseMessaging.configure(
//       onMessage: (Map<String, dynamic> message) async {
//         setState(() {
//           _messageText = "Push Messaging message: $message";
//         });
//         print("onMessage: $message");
//       },
//       onLaunch: (Map<String, dynamic> message) async {
//         setState(() {
//           _messageText = "Push Messaging message: $message";
//         });
//         print("onLaunch: $message");
//       },
//       onResume: (Map<String, dynamic> message) async {
//         setState(() {
//           _messageText = "Push Messaging message: $message";
//         });
//         print("onResume: $message");
//       },
//     );
//     _firebaseMessaging.requestNotificationPermissions(
//         const IosNotificationSettings(sound: true, badge: true, alert: true));
//     _firebaseMessaging.onIosSettingsRegistered
//         .listen((IosNotificationSettings settings) {
//       print("Settings registered: $settings");
//     });
//     _firebaseMessaging.getToken().then((String token) {
//       assert(token != null);
//       setState(() {
//         _homeScreenText = "Push Messaging token: $token";
//       });
//       print(_homeScreenText);
//     });
//   }
// @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Push Messaging Demo'),
//         ),
//         body: Material(
//           child: Column(
//             children: <Widget>[
//               Center(
//                 child: Text(_homeScreenText),
//               ),
//               Row(children: <Widget>[
//                 Expanded(
//                   child: Text(_messageText),
//                 ),
//               ])
//             ],
// ),
//         ));
//   }
// }
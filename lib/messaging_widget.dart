// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
// import 'package:mampufb/message.dart';

// class MessagingWidget extends StatefulWidget {
//   @override
//   _MessagingWidgetState createState() => _MessagingWidgetState();
// }

// class _MessagingWidgetState extends State<MessagingWidget> {
//   final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
//   final List<Message> messages = [];

//   @override
//   void initState() {
//     super.initState();

//     //optional:
//     //just to get the messaging token
//     //we need it if we want to test on device later
//     print('Initializing....');
//     _firebaseMessaging.getToken().then((token) {
//       assert(token != null);
//       print('Token: $token');
//     });
//     //---

//     //initialised
//     // 3 stages: onMessage, onLaunch, Resume
//     _firebaseMessaging.configure(

//       onMessage: (Map<String, dynamic> message) async {
//         //do wha you want here
//         print("onMessage: $message");
//         final notification = message['notification'];
//         setState(() {
//           messages.add(Message(
//               title: notification['title'], body: notification['body']));
//         });
//       },

//       onLaunch: (Map<String, dynamic> message) async {
//         //do wha you want here
//         print("onLaunch: $message");
//         final notification = message['data'];
//         setState(() {
//           messages.add(Message(
//             title: '${notification['title']}',
//             body: '${notification['body']}',
//           ));
//         });
//       },

//       onResume: (Map<String, dynamic> message) async {
//         //do wha you want here
//         print("onResume: $message");
//         final notification = message['data'];
//         setState(() {
//           messages.add(Message(
//             title: '${notification['title']}',
//             body: '${notification['body']}',
//           ));
//         });
//       },

//     );

//     _firebaseMessaging.requestNotificationPermissions(
//         const IosNotificationSettings(sound: true, badge: true, alert: true));
//   }

//   @override
//   Widget build(BuildContext context) => ListView(
//         children: messages.map(buildMessage).toList(),
//       );

//   Widget buildMessage(Message message) => ListTile(
//         title: Text(message.title),
//         subtitle: Text(message.body),
//       );
// }

import 'dart:io';
import 'dart:math';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebasenotification/view/chat_screen.dart';
import 'package:firebasenotification/view/message_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationServices {
  FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  void requestPermissions() async {
    NotificationSettings notificationSettings =
        await firebaseMessaging.requestPermission(
            alert: true,
            announcement: true,
            badge: true,
            sound: true,
            carPlay: true,
            criticalAlert: true,
            provisional: true);

    if (notificationSettings.authorizationStatus ==
        AuthorizationStatus.authorized) {
      print('user grad the permision  ');
    } else if (notificationSettings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      print('user provissional grade the permision  ');
    } else {
      print('user denied  ');
    }
  }

  void initLocalNotification(BuildContext context, RemoteMessage message) {
    var androidInitializationSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    var iosDarwinInitializationSettings = DarwinInitializationSettings();

    var initLocalNotificationSetting = InitializationSettings(
        android: androidInitializationSettings,
        iOS: iosDarwinInitializationSettings);

    flutterLocalNotificationsPlugin.initialize(
      initLocalNotificationSetting,
      onDidReceiveNotificationResponse: (details) {
        handleMessage(context, message);
      },
    );

    print('init data local notification  ');
  }

  void firebaseMessageInit(BuildContext context) {
    FirebaseMessaging.onMessage.listen((message) {
      debugPrint(message.notification!.title.toString());
      debugPrint(message.notification!.body.toString());

if(Platform.isIOS){
  foregroundMessage();
}

      if (Platform.isAndroid) {
        initLocalNotification(context, message);
        showNotification(message);
      } else {
        showNotification(message);
      }
    });
  }

  Future<void> showNotification(RemoteMessage message) async {
    AndroidNotificationChannel androidNotificationChannel =
        AndroidNotificationChannel(Random.secure().nextInt(10000).toString(),
            'high importance Notification',
            importance: Importance.max);

    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
            androidNotificationChannel.id, androidNotificationChannel.name,
            channelDescription: 'your channel description',
            importance: Importance.high,
            priority: Priority.high,
            ticker: 'ticker',
            playSound: true,
            channelShowBadge: true,
            );

    DarwinNotificationDetails darwinNotificationDetails =
        DarwinNotificationDetails(
            presentAlert: true,
            presentBanner: true,
            presentBadge: true,
            presentSound: true);

    NotificationDetails notificationDetails = NotificationDetails(
        android: androidNotificationDetails, iOS: darwinNotificationDetails);

    Future.delayed(Duration.zero, () {
      flutterLocalNotificationsPlugin.show(
          0,
          message.notification!.title.toString(),
          message.notification!.body.toString(),
          notificationDetails);
    });
  }

  Future<String> getToken() async {
    String? token = await firebaseMessaging.getToken();
    // print("FCM Token: $token");
    return token!;
  }

  void isRefreshToken() async {
    firebaseMessaging.onTokenRefresh.listen((event) {
      event.toString();
    });
  }

  Future<void> setupInteractMessage(BuildContext context)async{
    RemoteMessage? initlizeMessage=await FirebaseMessaging.instance.getInitialMessage();
    if(initlizeMessage != null){
      handleMessage(context, initlizeMessage);
    }

 FirebaseMessaging.onMessageOpenedApp.listen((message)=>{
      handleMessage(context, message)

 });

  }


Future foregroundMessage()async{
await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(alert: true,badge: true,sound: true);

}


  void handleMessage(BuildContext context, RemoteMessage message) {
    if (message.data['type'] == 'msg') {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MessageView(
                    id: message.data['id'],
                    body: message.notification!.body.toString(),
                  )));
    }else if(message.data['type']=='chat'){
       Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>ChatScreen() ));
    }
  }




}

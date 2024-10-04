import 'package:firebasenotification/Services/Notification_services.dart';
import 'package:firebasenotification/Services/get_services_key.dart';
import 'package:firebasenotification/Services/push_notification_by_device.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
final notificationServices=NotificationServices();

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    notificationServices.requestPermissions();
    notificationServices.foregroundMessage();
    // notificationServices.initLocalNotification();
    notificationServices.firebaseMessageInit(context);
    notificationServices.setupInteractMessage(context);
    notificationServices.isRefreshToken();
    notificationServices.getToken().then((val){
      print('Device Token   :   ');
      print(val);
    });

  }
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        ElevatedButton(onPressed: ()async{
          var obj=GetServerKey();
          String data=await obj.getServerKeyToken();
          print(data);


          PushNotificationByDevice.pushNotifications(token: 'eI7KC586SJu6Xo6FjnLR3o:APA91bH18lE0KaAhxPpb7MACgf905DvLrYjK7uDj82l1EErh2b3zTPi7sHFhTRcvqEMiMJdapwzhV942xy7RaoShtkqBjuZe60l1HQVLGFCM_Xtv572y1BgqSZ6EckfqIDQh1kcLunpY', title: 'like post zia', body: 'check zia message body', data: {
            'type':'chat',
          'message':'sdfasdfasdfasfd'
          });
        }, child: Text('Token'))
      ],),),
    );
  }
}
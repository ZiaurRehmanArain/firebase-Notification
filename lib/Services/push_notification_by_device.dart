
import 'dart:convert';

import 'package:firebasenotification/Services/get_services_key.dart';
import 'package:http/http.dart' as http;

class PushNotificationByDevice {
  static Future<void> pushNotifications(
   { required String token, required String title,required String body,required Map data}
  )async{
    String accesToken=await GetServerKey().getServerKeyToken();
    String url='https://fcm.googleapis.com/v1/projects/web-boiler-template/messages:send';

    var headers = {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer $accesToken'
};
Map<String,dynamic> message={
   "message":{
      "token":token,
      "notification":{
        "body":body,
        "title":title
      },'data':data
   }
};

await http.post(Uri.parse(url),
headers: headers,
body: jsonEncode(message)
);

  }
}
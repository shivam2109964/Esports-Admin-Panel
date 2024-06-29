import 'dart:convert';

import 'package:http/http.dart' as http;

class Constant {
  static const String BASE_URL =
      "https://fcm.googleapis.com/fcm/send";

  static const String KYE_SERVER = '42f34f19bfd2843f51da053a8252e9741d328451';
  static const String SENDER_ID = "274636634429";
}

class NotificationService {
  Future<bool> pushNotifcation({required String title, body, token}) async {
    Map<String, dynamic> payload = {
      'to': token,
      'notification': {
        'priority': "high",
        'title': title,
        'body': body,
        'sound': "default",
      }
    };
    String dataNotification = jsonEncode(payload);
    // ignore: unused_local_variable
    var response = await http.post(Uri.parse(Constant.BASE_URL),
        headers: <String, String>{
          'Content-Type': 'application/json',
          'Authorization': 'key = ${Constant.KYE_SERVER}'
        },
        body: dataNotification);
    //debugPrint(response..body.toString());
    return true;
  }
}

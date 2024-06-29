import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:esports_admin/services/notificationService.dart';
import 'package:firebase_auth/firebase_auth.dart';
// ignore: unused_import
import 'package:meta/meta.dart';

part 'notification_event.dart';
part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  FirebaseFirestore firestore;
  NotificationBloc(this.firestore) : super(NotificationInitial()) {
    on<SendNotifaction>((event, emit) async {
      User? user = FirebaseAuth.instance.currentUser;
      final uid = user!.uid;
      final data = await firestore
          .collection("Users")
          .doc(uid)
          .collection("User_Notification")
          .get();
      data.docs.forEach((doc) async {
        final Map<String, dynamic> data1 = doc.data() as Map<String, dynamic>;

        if (data1.containsKey("notificationToken")) {
          NotificationService().pushNotifcation(
            title: event.title,
            body: event.body,
            token: data1['notificationToken'],
          );
        }
      });
    });
  }
}

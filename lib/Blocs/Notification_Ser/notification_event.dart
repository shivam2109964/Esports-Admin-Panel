part of 'notification_bloc.dart';

abstract class NotificationEvent {}

class SendNotifaction extends NotificationEvent {
  final title;
  final body;
  SendNotifaction(this.title, this.body);
}

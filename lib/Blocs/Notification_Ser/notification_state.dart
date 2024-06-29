part of 'notification_bloc.dart';

abstract class NotificationState{}

final class NotificationInitial extends NotificationState {}

class LoadingState extends NotificationState {}

class LoadedState extends NotificationState{}
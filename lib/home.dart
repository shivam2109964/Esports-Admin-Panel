import 'package:esports_admin/Blocs/Notification_Ser/notification_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Admin"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: titleController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: bodyController,
            ),
          ),
          Center(
            child: BlocBuilder<NotificationBloc, NotificationState>(
              builder: (context, state) {
                if (state is LoadingState) {
                  const CircularProgressIndicator();
                }
                return ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<NotificationBloc>(context).add(
                      SendNotifaction(
                        titleController.text,
                        bodyController.text,
                      ),
                    );
                  },
                  child: const Text("Send"),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

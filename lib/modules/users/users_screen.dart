// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../models/user/user.dart';

class UsersScreen extends StatelessWidget {
  UsersScreen({super.key});
  List<UserModel> users = [
    UserModel(1, 'Mostafa Ahmed', '+2011223344555'),
    UserModel(2, 'Ali Mohamed', '+2011223344555'),
    UserModel(3, 'Mohamed Mahmoud', '+2011223344555'),
    UserModel(4, 'Anas Emad', '+2011223344555'),
    UserModel(5, 'Mostafa Ahmed', '+2011223344555'),
    UserModel(6, 'Hazem Sayed', '+2011223344555'),
    UserModel(7, 'Mohamed Idrees', '+2011223344555'),
    UserModel(8, 'Tarek Idrees', '+2011223344555')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.menu),
        title: const Text("User"),
        actions: const [Icon(Icons.search)],
      ),
      body: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) => buildUserItem(users[index]),
          separatorBuilder: ((context, index) => Container(
                width: double.infinity,
                height: 1.0,
                color: Colors.grey[300],
              )),
          itemCount: users.length),
    );
  }

  Widget buildUserItem(UserModel user) => Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(children: [
        CircleAvatar(
            radius: 25,
            child: Text(
              '${user.id}',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            )),
        const SizedBox(width: 20),
        Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.name, // of type string hence no need for ${}
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Text(
                user.phone,
                style: const TextStyle(color: Colors.grey),
              )
            ])
      ]));
}

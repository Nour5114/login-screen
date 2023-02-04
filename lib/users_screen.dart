import 'package:flutter/material.dart';

class UserModel {
  int id;
  String name;
  String phone;

  UserModel({
    required this.id,
    required this.name,
    required this.phone,
  });
}

class UsersScreen extends StatelessWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<UserModel> users = [
      UserModel(id: 1, name: 'Nour', phone: '01915234566'),
      UserModel(id: 2, name: 'Ali', phone: '01028388838'),
      UserModel(id: 3, name: 'Omar', phone: '0193373788'),
      UserModel(id: 4, name: 'Ahmed', phone: '01327272882'),
      UserModel(id: 5, name: 'Alaa', phone: '01915234566'),
      UserModel(id: 6, name: 'Tamer', phone: '01915234566'),
      UserModel(id: 7, name: 'Mai', phone: '01915234566'),
      UserModel(id: 8, name: 'Ola', phone: '01915234566'),
      UserModel(id: 9, name: 'Nada', phone: '01915234566'),
      UserModel(id: 1, name: 'Nour', phone: '01915234566'),
      UserModel(id: 2, name: 'Ali', phone: '01028388838'),
      UserModel(id: 3, name: 'Omar', phone: '0193373788'),
      UserModel(id: 4, name: 'Ahmed', phone: '01327272882'),
      UserModel(id: 5, name: 'Alaa', phone: '01915234566'),
      UserModel(id: 6, name: 'Tamer', phone: '01915234566'),
      UserModel(id: 7, name: 'Mai', phone: '01915234566'),
      UserModel(id: 8, name: 'Ola', phone: '01915234566'),
      UserModel(id: 9, name: 'Nada', phone: '01915234566'),
      UserModel(id: 1, name: 'Nour', phone: '01915234566'),
      UserModel(id: 2, name: 'Ali', phone: '01028388838'),
      UserModel(id: 3, name: 'Omar', phone: '0193373788'),
      UserModel(id: 4, name: 'Ahmed', phone: '01327272882'),
      UserModel(id: 5, name: 'Alaa', phone: '01915234566'),
      UserModel(id: 6, name: 'Tamer', phone: '01915234566'),
      UserModel(id: 7, name: 'Mai', phone: '01915234566'),
      UserModel(id: 8, name: 'Ola', phone: '01915234566'),
      UserModel(id: 9, name: 'Nada', phone: '01915234566'),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Users',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.separated(
        itemCount: users.length,
        itemBuilder: (context, index) => BuildUserItem(user: users[index]),
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsetsDirectional.only(start: 20),
          child: Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey[300],
          ),
        ),
      ),
    );
  }
}

class BuildUserItem extends StatelessWidget {
  final UserModel user;

  const BuildUserItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          CircleAvatar(
              radius: 20,
              child: Text(
                '${user.id}',
                style: const TextStyle(fontSize: 20, color: Colors.white),
              )),
          const SizedBox(
            width: 15,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.name,
                style: const TextStyle(fontSize: 20, color: Colors.black),
              ),
              Text(
                user.phone,
                style: const TextStyle(fontSize: 20, color: Colors.grey),
              )
            ],
          )),
        ],
      ),
    );
  }
}

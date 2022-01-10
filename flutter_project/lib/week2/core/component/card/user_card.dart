import 'package:flutter/material.dart';
import 'package:flutter_project/week2/statefull/model/user.dart';

class UserCard extends StatelessWidget {
  final User user;

  //void callback hiçbirşey yapmadan sadece tıklamaya yarar
  final VoidCallback? onPressed;

  const UserCard({Key? key, required this.user, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(user.imageUrl),
        ),
        title: Text(user.title),
        subtitle: Text(user.description),
        trailing: Icon(Icons.arrow_right_alt),
        onTap: onPressed,
      ),
    );
  }
}

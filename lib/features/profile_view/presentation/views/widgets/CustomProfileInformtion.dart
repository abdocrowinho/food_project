import 'package:flutter/material.dart';

class CustomProfileInformtion extends StatelessWidget {
  const CustomProfileInformtion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage("assets/profilepicture.jpg"),
        ),
        Expanded(
          child: ListTile(
            titleAlignment: ListTileTitleAlignment.center,
            title: Text(
              'Abdelrahman osama ',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            subtitle: Text(
              'Ahlyua@gmail.com',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ),
        )
      ],
    );
  }
}

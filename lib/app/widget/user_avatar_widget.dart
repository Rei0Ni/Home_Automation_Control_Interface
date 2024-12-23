import 'package:flutter/material.dart';

class UserAvatarWidget extends StatefulWidget {
  const UserAvatarWidget({super.key});

  @override
  State<UserAvatarWidget> createState() => _UserAvatarWidgetState();
}

class _UserAvatarWidgetState extends State<UserAvatarWidget> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Center(
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 24,
            foregroundImage: AssetImage('assets/images/cat.png'),
          ),
        ),
      ),
      onSelected: (value) {
        if (value == "profile") {
          // add desired output
        }else if(value == "settings"){
          // add desired output
        }else if(value == "logout"){
          // add desired output
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
        PopupMenuItem(
          value: "profile",
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(Icons.account_circle),
              ),
              const Text(
                'Profile',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
        PopupMenuItem(
          value: "settings",
          child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.settings)),
              const Text(
                'Settings',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
        PopupMenuItem(
          value: "logout",
          child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.logout)),
              const Text(
                'Logout',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        )
      ],
    );
  }
}

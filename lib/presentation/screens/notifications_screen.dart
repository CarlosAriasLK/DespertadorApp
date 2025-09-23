


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Notificaciones'),
      ),

      body: Column(
        children: [

          SizedBox(height: 30,),

          SwitchListTile(
            title: Text('Notificaciones Web'),
            value: true,
            onChanged: (value){},
          ),

          SwitchListTile(
            title: Text('Recordar Pastillas'),
            value: true,
            onChanged: (value){},
          ),

          SwitchListTile(
            title: Text('Recordar Reuniones'),
            value: true,
            onChanged: (value){},
          ),

          SwitchListTile(
            title: Text('Recordar Alarmas'),
            value: true,
            onChanged: (value){},
          ),

        ],
      ),
    );
  }
}

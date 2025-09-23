import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AlarmasScreen extends StatelessWidget {
  const AlarmasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Mis Alarmas'),
      ),

      body: SingleChildScrollView(

        child: Column(
          children: [
            SwitchListTile(
              title: Text('07:00'),
              subtitle: Text('Lun, Mar, Mier, Jue, Vie'),
              value: false,
              onChanged: (value) {

              },
            ),

            SwitchListTile(
              title: Text('07:00'),
              subtitle: Text('Lun, Mar, Mier, Jue, Vie'),
              value: false,
              onChanged: (value) {

              },
            ),

            SwitchListTile(
              title: Text('07:00'),
              subtitle: Text('Lun, Mar, Mier, Jue, Vie'),
              value: false,
              onChanged: (value) {

              },
            ),

          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          onPressed: () {
            context.push('/add-alarm');
          },
          child: Icon(Icons.add),
      ),
    );
  }
}

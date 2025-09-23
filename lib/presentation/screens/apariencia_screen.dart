
import 'package:despertador/presentation/widgets/shared/custom_dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AparienciaScreen extends StatelessWidget {
  const AparienciaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Apariencia'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Text('Tema', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
            SizedBox(height: 20,),

            Text('Selecciona el tema de la app'),
            SizedBox(height: 10,),
            CustomDropDown(),

            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}

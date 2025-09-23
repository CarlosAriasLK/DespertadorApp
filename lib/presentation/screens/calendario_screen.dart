
import 'package:despertador/presentation/widgets/shared/custom_dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalendarioScreen extends StatelessWidget {
  const CalendarioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Calendario'),
      ),
      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 20,),
              Text('Configuracion Basica', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

              SizedBox(height:30,),
              Text('Dia en que empieza la semana'),
              SizedBox(height:10,),
              SizedBox(
                width: double.infinity,
                child: CustomDropDown(),
              ),

              SizedBox(height:30,),
              Text('Colorear Festivos'),
              SizedBox(height:10,),
              SizedBox(
                width: double.infinity,
                child: CustomDropDown(),
              ),

              SizedBox(height: 20,),
              Text('Sincronizacion', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

              SizedBox(height: 5,),
              Text('Sincronice su calendario con Google y configure la integración', style: TextStyle(fontSize: 18),),


              SizedBox(height: 25,),
              Text('Cuenta de Google', style: TextStyle(fontSize: 18),),

              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Cuenta de Google')
                  ),
                ),
              ),

              SwitchListTile(
                title: Text('Agregar alarmas al calendario'),
                  value: true,
                  onChanged: (value) {},
              ),


              SwitchListTile(
                title: Text('Agregar eventos del calendario como alarmas'),
                  value: true,
                  onChanged: (value) {},
              ),

            ],
          ),
        ),

      ),
    );
  }
}


import 'package:despertador/presentation/widgets/shared/custom_dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:go_router/go_router.dart';
import 'package:multi_dropdown/multi_dropdown.dart';

enum diasSemana {
  lunes, martes, mieroles, jueves, viernes
}

final sonidos = [
  DropdownItem(label: 'Por defecto', value: 'defecto'),
  DropdownItem(label: 'Melodia Suave', value: 'melodiasuave'),
  DropdownItem(label: 'Rock', value: 'rock'),
];

class AddAlarmScreen extends StatefulWidget {
  const AddAlarmScreen({super.key});

  @override
  State<AddAlarmScreen> createState() => _AddAlarmScreenState();
}

class _AddAlarmScreenState extends State<AddAlarmScreen> {

  DateTime? _dateTime;
  final sonidoController = MultiSelectController<String>();
  final etiquetaController = TextEditingController();
  List<diasSemana> repetir = [];
  String? sonido;
  bool posponer = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Anadir Alarma'),
      ),

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            TimePickerSpinner(
              is24HourMode: false,
              normalTextStyle: TextStyle(
                  fontSize: 24,
                  color: Colors.black26
              ),
              highlightedTextStyle: TextStyle(
                  fontSize: 24,
                  color: Colors.black
              ),
              spacing: 50,
              itemHeight: 80,
              isForce2Digits: true,
              onTimeChange: (time) {
                setState(() {
                  _dateTime = time;
                  print(_dateTime);
                });
              },
            ),

            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Align( alignment: Alignment.centerLeft, child: Text('Repetir'), ),
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SegmentedButton(
                  direction: Axis.horizontal,

                  style: ButtonStyle(
                      shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(7)
                          )
                      )
                  ),

                  segments: [
                    ButtonSegment(value: diasSemana.lunes, label: Text('lu') ),
                    ButtonSegment(value: diasSemana.martes, label: Text('ma') ),
                    ButtonSegment(value: diasSemana.mieroles, label: Text('mie') ),
                    ButtonSegment(value: diasSemana.jueves, label: Text('Ju') ),
                    ButtonSegment(value: diasSemana.viernes, label: Text('Vie') ),
                  ],
                  showSelectedIcon: false,
                  multiSelectionEnabled: true,
                  emptySelectionAllowed: true,
                  selected: repetir.toSet(),
                  onSelectionChanged: (Set<diasSemana> dias) {
                    setState(() {
                      repetir = dias.toList();
                      print(repetir);
                    });
                  },
                )
              ],
            ),

            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Align( alignment: Alignment.centerLeft, child: Text('Etiqueta'), ),
            ),
            SizedBox(height: 20,),

            SizedBox(
              width: 350,
              child: TextFormField(
                controller: etiquetaController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Etiqueta'),
                  suffixIcon: Icon(Icons.energy_savings_leaf_outlined),
                ),
              ),
            ),

            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Align( alignment: Alignment.centerLeft, child: Text('Sonido'), ),
            ),


            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CustomDropDown(
                hintText: 'Sonido',
                items: sonidos,
                controller: sonidoController,
                callback: (value) {
                setState(() {
                  sonido = value;
                  print(sonido);
                });
              },),
            ),


            SizedBox(height: 40,),

            SizedBox(
              width: 200,
              child: SwitchListTile(
                title: Text('Posponer'),
                value: posponer,
                onChanged: (value) {
                  setState(() {
                    posponer = value;
                    print(posponer);
                  });
                },
              ),
            ),

            Spacer(),

            Row(
              children: [

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlinedButton(
                        onPressed: () { context.pop(); },
                        child: Text('Cancelar')
                    ),
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FilledButton(
                        onPressed: () {
                          print( etiquetaController.text );
                        },
                        child: Text('Guardar')
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

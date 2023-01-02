import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Radio_button',
      home: radiobutton(),
    );
  }
}

class radiobutton extends StatefulWidget {
  const radiobutton({Key? key}) : super(key: key);

  @override
  State<radiobutton> createState() => _radiobuttonState();
}

var xendar = 'other';

class _radiobuttonState extends State<radiobutton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
          child: Column(
        children: [
          RadioListTile(
            value: 'male',
            groupValue: xendar,
            onChanged: (value) {
              setState(() {
                xendar = value!;
                print('you are select $value');
              });
            },
            title:  Text('Male',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600)),
          ),
          RadioListTile(
            value: 'female',
            groupValue: xendar,
            onChanged: (value) {
              setState(() {
                xendar = value!;
                print('you are select $value');
              });
            },
            title:  Text('Female',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600)),
          ),
          RadioListTile(
            value: 'other',
            groupValue: xendar,
            onChanged: (value) {
              setState(() {
                xendar = value!;
                print('you are select $value');
              });
            },
            title:  Text('Other',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600)),
          ),

        ],
      )),
    );
  }
}

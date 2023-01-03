import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  bool value = false;

  MyApp({super.key});

  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cafe_ordering_system',
      home: cafe_ordering_system(),
    );
  }
}

class cafe_ordering_system extends StatefulWidget {
  const cafe_ordering_system({Key? key}) : super(key: key);

  @override
  State<cafe_ordering_system> createState() => _cafe_ordering_systemState();
}

var amount = 0;

class _cafe_ordering_systemState extends State<cafe_ordering_system> {
  var cheakbox1 = false;
  var cheakbox2 = false;
  var cheakbox3 = false;
  var cheakbox4 = false;
  var cheakbox5 = false;

  var pizza = 870;
  var burger = 320;
  var coffe = 450;
  var cake = 700;
  var icecream = 400;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cafe_ordering_system'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              'Cafe_Ordering_System',
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w400,
                  color: Colors.lightBlue),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Checkbox(
                  value: cheakbox1,
                  onChanged: (value) {
                    setState(() {
                      cheakbox1 = value!;
                      if (cheakbox1 == true) {
                        amount += pizza;
                      } else {
                        amount -= pizza;
                      }
                    });
                  },
                ),
                const Text(
                  'pizza @ rs.870',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                )
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: cheakbox2,
                  onChanged: (value) {
                    setState(() {
                      cheakbox2 = value!;
                      if (cheakbox2 == true) {
                        amount += burger;
                      } else {
                        amount -= burger;
                      }
                    });
                  },
                ),
                const Text(
                  'Burger @ rs.320',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                )
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: cheakbox3,
                  onChanged: (value) {
                    setState(() {
                      cheakbox3 = value!;
                      if (cheakbox3 == true) {
                        amount += coffe;
                      } else {
                        amount -= coffe;
                      }
                    });
                  },
                ),
                const Text(
                  'Coffe @ rs.450',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                )
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: cheakbox4,
                  onChanged: (value) {
                    setState(() {
                      cheakbox4 = value!;
                      if (cheakbox4 == true) {
                        amount += cake;
                      } else {
                        amount -= cake;
                      }
                    });
                  },
                ),
                const Text(
                  'cake @ rs.700',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                )
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: cheakbox5,
                  onChanged: (value) {
                    setState(() {
                      cheakbox5 = value!;
                      if (cheakbox5 == true) {
                        amount += icecream;
                      } else {
                        amount -= icecream;
                      }
                    });
                  },
                ),
                const Text(
                  'Ice-cream @ rs.400',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  print('your total bill is $amount');

                },
                child: const Text('Done Order')),
            const SizedBox(
              height: 30,
            ),
            Text('Your total bill amount  is ${amount}',
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue)),

          ]),
        ),
      ),
    );
  }
}

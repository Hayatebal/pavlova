import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pavlova',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Balilaon_Activity1'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 200,
              child: Center(child: Image.asset('assets/images/pavlova.jpg', fit: BoxFit.cover,)),
            ),

            Container(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Strawberry Pavlova', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text(
                      "Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. "
                      "It features a crisp crust and soft, light inside, usually topped with fruit and whipped cream. "
                      "It is a popular dessert in Australia and New Zealand, where it is often served during festive occasions and celebrations.",
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(child: buildRatingRow()),
            SizedBox(height: 30,),
            buildRowTabs(),
          ],
        ),
      ),
    );
  }
  Widget buildRatingRow() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: List.generate(
            5,
            (index) => Icon(
              index < 4 ? Icons.star : Icons.star_border,
              color: Colors.yellow,
              size: 20,
            ),
          ),
        ),
        const SizedBox(width: 8),
        const Text(
          "90 Reviews",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

Widget buildIconTab(IconData icon, String label, String value) {
  return Column(
    children: [
      Icon(icon, color: Colors.yellow, size: 28),
      const SizedBox(height: 4),
      Text(label, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
      const SizedBox(height: 4),
      Text(value),
    ],
  );
}
Widget buildRowTabs() => Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    buildIconTab(Icons.kitchen, "PREP", "25 min"),
    buildIconTab(Icons.timer, "COOK", "1 hr"),
    buildIconTab(Icons.restaurant, "FEEDS", "4-6 hrs"),
  ],
);
}
import 'package:flutter/material.dart';
import 'package:c_material/c_material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Use All Colors use Package C_Material :
  // But it required Type of Color not MaterialAllProperity  :
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MaterialColors.slateBlueLight,
        centerTitle: true,
        title: const Text(
          "Color Material",
          style: TextStyle(
            color: MaterialColors.blue,
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          // You Can use MaterialColors in Container Like This :
          // Example :
          Container(
            width: double.infinity,
            height: 100,
            decoration: const BoxDecoration(
              color: MaterialColors.brown,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 100,
            decoration: const BoxDecoration(
              color: MaterialColors.white,
            ),
            child: const Card(
              elevation: 2,
              child: Row(
                children: [
                  Text(
                    "Colors",
                    style: TextStyle(
                      color: MaterialColors.aqua,
                      fontSize: 19,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 100,
            decoration: const BoxDecoration(
              color: MaterialColors.red,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          // You Can use MaterialColors in Buttons Like This :
          // Example :
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: MaterialColors.yellow,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {},
            child: const Text(
              "Confirm",
              style: TextStyle(
                color: MaterialColors.burlyWood,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

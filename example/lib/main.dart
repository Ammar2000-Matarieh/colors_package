import 'package:flutter/material.dart';
import 'package:c_material/c_material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // ✅ NEW: Material 3 Theme from c_material
      theme: CTheme.light(seed: CSemanticColors.primary),
      darkTheme: CTheme.dark(seed: CSemanticColors.primary),

      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const primary = CSemanticColors.primary;
    const success = CSemanticColors.success;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        centerTitle: true,
        title: Text(
          "c_material demo",
          style: TextStyle(
            color: primary.contrastColor(), // 🔥 extension
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            /// 🔹 OLD WAY (still supported)
            Container(
              height: 80,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: MaterialColors.coolGray,
              ),
              alignment: Alignment.center,
              child: const Text(
                "Static Color (MaterialColors)",
                style: TextStyle(
                  color: MaterialColors.white,
                ),
              ),
            ),

            const SizedBox(height: 20),

            /// 🔹 NEW: Semantic Colors
            Container(
              height: 80,
              width: double.infinity,
              color: success,
              alignment: Alignment.center,
              child: Text(
                "Semantic Color: success",
                style: TextStyle(
                  color: success.contrastColor(),
                  fontSize: 16,
                ),
              ),
            ),

            const SizedBox(height: 20),

            /// 🔹 NEW: Color Extensions
            Container(
              height: 80,
              width: double.infinity,
              color: primary.lighten(0.15),
              alignment: Alignment.center,
              child: Text(
                "Primary lightened\nHEX: ${primary.toHex()}",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: primary.contrastColor(),
                ),
              ),
            ),

            const SizedBox(height: 30),

            /// 🔹 Buttons using semantic colors
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: CSemanticColors.warning,
              ),
              onPressed: () {},
              child: Text(
                "Warning Button",
                style: TextStyle(
                  color: CSemanticColors.warning.contrastColor(),
                ),
              ),
            ),

            const SizedBox(height: 12),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: CSemanticColors.danger,
              ),
              onPressed: () {},
              child: Text(
                "Danger Button",
                style: TextStyle(
                  color: CSemanticColors.danger.contrastColor(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   // Use All Colors use Package C_Material :
//   // But it required Type of Color not MaterialAllProperity  :
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: MaterialColors.slateBlueLight,
//         centerTitle: true,
//         title: const Text(
//           "Color Material",
//           style: TextStyle(
//             color: MaterialColors.lemonGold,
//             fontSize: 19,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       body: Column(
//         children: [
//           // You Can use MaterialColors in Container Like This :
//           // Example :
//           Container(
//             width: double.infinity,
//             height: 100,
//             decoration: const BoxDecoration(
//               color: MaterialColors.brown,
//             ),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           Container(
//             width: double.infinity,
//             height: 100,
//             decoration: const BoxDecoration(
//               // new colors :
//               color: MaterialColors.pastelGreen,
//             ),
//             child: const Card(
//               elevation: 2,
//               child: Row(
//                 children: [
//                   Text(
//                     "Colors",
//                     style: TextStyle(
//                       color: MaterialColors.goldItalicOrange,
//                       fontSize: 19,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           Container(
//             width: double.infinity,
//             height: 100,
//             decoration: const BoxDecoration(
//               // new color
//               color: MaterialColors.coolGray,
//             ),
//           ),
//           const SizedBox(
//             height: 50,
//           ),
//           // You Can use MaterialColors in Buttons Like This :
//           // Example :
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               // new colors :
//               backgroundColor: MaterialColors.cyanAccent,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10),
//               ),
//             ),
//             onPressed: () {},
//             child: const Text(
//               "Confirm",
//               style: TextStyle(
//                 color: MaterialColors.burlyWood,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

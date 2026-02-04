import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("app bar"),
          backgroundColor: const Color.fromARGB(255, 53, 163, 253),
          centerTitle: true,
        ),

        
        
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 24),

                const Text(
                  'Table',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w900,
                  ),
                ),

                const SizedBox(height: 48),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 96.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 2),
                      ),
                      labelText: 'Enter your name',
                    ),
                  ),
                ),

                const SizedBox(height: 24),

                Image.network(
                  "https://flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png",
                  height: 120,
                ),

                const SizedBox(height: 32),

                Container(
                  margin: const EdgeInsets.all(20),
                  child: Table(
                    border: TableBorder.all(
                      color: Colors.red,
                      width: 3,
                    ),
                    children: const [
                      TableRow(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Text('ID'),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Text('Name'),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Text('1'),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Text('Abc'),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Text('2'),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Text('Xyz'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

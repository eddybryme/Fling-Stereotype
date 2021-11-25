import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // list of items

  MyApp({Key? key}) : super(key: key);
  final List<String> names = ['kofi', 'ama', 'john', 'edwin', 'kelvin'];

  final List<String> images = [
    'https://images.unsplash.com/photo-1637238059999-2a3f8a5537af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDV8dG93SlpGc2twR2d8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1634853166008-2c9e90321c92?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDZ8dG93SlpGc2twR2d8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1637436092571-896446bf1ebe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDEzfHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1637367335193-5e930e573e0f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE1fHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1637436091686-048a80a8a50c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDEyfHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: const Text('Fling'),
        ),
        body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) => ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                images[index],
              ),
            ),
            title: const Text('What is your name?'),
            subtitle: Text(names[index]),
            trailing: const Icon(
              Icons.check_box_rounded,
              color: Colors.blue,
            ),
          ),
          itemCount: names.length,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amberAccent,
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
    // ignore: dead_code
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return const 
//         home: Scaffold(
//       appBar: AppBar(
//         title: const Text("Welcome to flutter 101"),
//         backgroundColor: Colors.orangeAccent,
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Container(
//           width: 120.45,
//           height: 110.54,
//           decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               border: Border.all(color: Colors.orangeAccent)),
//         ),
//       ),
//     ));
//   }
// }

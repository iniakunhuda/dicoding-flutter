import 'package:flutter/material.dart';
import 'package:flutter_app_2/main_screen.dart';

void main() => runApp(MyApp());

var informationTextStyle = TextStyle(fontFamily: 'Oxygen');

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),// Panggil FirstScreen di sini

    );
  }
}

// class DetailScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea( // untuk mengsetup margin auto dengan device
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               Image.asset('images/farm-house.jpg'),
//               Container(
//               margin: EdgeInsets.only(top: 16.0), // menambah margin
//               child: Text(
//                   'Farm House Lembang ea',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 30.0,
//                     fontWeight: FontWeight.bold,
//                     fontFamily: 'Staatliches',
//                   ),
//               ),
//             ),
//               Container(
//                 margin: EdgeInsets.symmetric(vertical: 16.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: <Widget>[
//                     Column(
//                       children: [
//                         Icon(Icons.calendar_today),
//                         SizedBox(height: 8.0),
//                         Text(
//                           'Open Everyday',
//                           style: informationTextStyle,
//                         ),
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         Icon(Icons.access_time),
//                         SizedBox(height: 8.0),
//                         Text(
//                           '09:00 - 20:00',
//                           style: informationTextStyle,
//                         ),
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         Icon(Icons.monetization_on),
//                         SizedBox(height: 8.0),
//                         Text(
//                           'Rp 25.000',
//                           style: informationTextStyle,
//                         ),
//                       ],
//                     )
//                   ],
//                 )
//               ),
//               Container(
//                 padding: EdgeInsets.all(16.0),
//                 child: Text(
//                   'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(fontSize: 16.0),
//                 ),
//               ),
//               Container(
//                 height: 150,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(4.0),
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(10),
//                         child: Image.network(
//                             'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg'),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(4.0),
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(10),
//                         child: Image.network(
//                             'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg'),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(4.0),
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(10),
//                         child: Image.network(
//                             'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           )
//         ),
//       ),
//     );
//   }
// }


/**
 * Contoh Listview
 */
// class ScrollingScreen extends StatelessWidget {
//   final List<int> numberList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: numberList.map((number) {
//           return 
//             Expanded(
//               child: Container(
//                 height: 250,
//                 decoration: BoxDecoration(
//                   color: Colors.grey,
//                   border: Border.all(color: Colors.black),
//                 ),
//                 child: Center(
//                   child: Text(
//                     '$number', // Ditampilkan sesuai item
//                     style: TextStyle(fontSize: 50),
//                   ),
//                 ),
//               )
//             );
//         }).toList(),
//       ),
//     );
//   }
// }


/**
 * Pindah state
 */
class FirstScreen extends StatelessWidget {
  final String message = 'Hello from First Screen!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Pindah Screen'),
          onPressed: () {
            //  Navigator.push(context, MaterialPageRoute(builder: (context) {
            //   return SecondScreen();
            // }));
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondScreen(message)));
          },
        ),
      ),
    );
  }
}
class SecondScreen extends StatelessWidget {
  final String message;

  SecondScreen(this.message);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message),
            OutlinedButton(
              child: Text('Kembali'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
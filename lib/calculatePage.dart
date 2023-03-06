import 'package:flutter/material.dart';
import 'package:flutter_application/main.dart';

class V1 extends StatefulWidget {
  const V1({super.key});

  @override
  State<V1> createState() => _V1State();
}

class _V1State extends State<V1> {
  TextEditingController? p1;
  String p2 = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAppBar(
        color: Colors.black,
        
      ),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new)),
        ),
        backgroundColor: const Color.fromARGB(255, 2, 90, 9),
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
            Text("ราคาของปลา"),
          ]),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(""),
            Text(
                'ปลานิล น้ำหนัก ${Appfinal.w.toString()} กิโลกรัม รวมเป็นราคา ${Appfinal.money.toString()} บาท'),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Image.asset(
                'assets/images/Planil.jpg', width: 200, height: 100,)
            ),
            Text(
                'ปลานิล น้ำหนัก ${Appfinal.w2.toString()} กิโลกรัม รวมเป็นราคา ${Appfinal.money2.toString()} บาท'),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Image.asset(
                'assets/images/Plabuk.png', width: 200, height: 100,)
            ),
          ],
        ),
      ),
    );
  }
}
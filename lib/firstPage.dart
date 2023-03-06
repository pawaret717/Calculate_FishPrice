import 'package:flutter/material.dart';
import 'package:flutter_application/main.dart';
import 'calculatePage.dart';

class A1 extends StatefulWidget {
  const A1({super.key});

  @override
  State<A1> createState() => _a1State();
}

class Fish {
  String name;
  String price;
  Fish(this.name, this.price);
}

// ignore: camel_case_types
class _a1State extends State<A1> {
  TextEditingController p1=TextEditingController(text: '');
  String p2 = '';
  Widget dropdownInput(BuildContext context,
      {Object? dopdown,
      List<DropdownMenuItem<Object>>? item,
      void Function(Object?)? onchang}) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 20, bottom: 20),
      child: Card(
        color: const Color.fromARGB(255, 230, 230, 230),
        child: SizedBox(
          height: 40,
          width: 150,
          child: DropdownButton(
            icon:
                const Icon(Icons.arrow_drop_down_rounded, color: Colors.black),
            dropdownColor: Colors.white,
            value: dopdown,
            items: item,
            onChanged: onchang,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 76, 238, 157),
      bottomNavigationBar: const BottomAppBar(
        color: Colors.black,
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 90, 9),
        centerTitle: true,
        title: SizedBox(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
            Text("คำนวณราขาขายปลา   "),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Image(
                image: NetworkImage(
                    'https://cdn-icons-png.flaticon.com/128/2929/2929546.png'),
                width: 60,
                height: 20,
                fit: BoxFit.cover,
              ),
            ),
          ]),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.only(top: 0),
            child: Text(
              '\nราคาชนิดของปลา',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 0),
            child: Text(
              'ปลานิลกิโลกรัมละ 80 บาท \nปลาบึกกิโลกรัมละ 100 บาท',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              'เลือกชนิดของปลา',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          dropdownInput(context,
              dopdown: Appfinal.f,
              item: Appfinal.fish1
                  .map((value) => DropdownMenuItem(
                      value: value,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20, top: 5, right: 5),
                        child: FittedBox(
                          child: Text(value),
                        ),
                      )))
                  .toList(), onchang: (value) {
            setState(() {
              
              Appfinal.f = value as String?;
              print(Appfinal.f);
            });
          }),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              'กรอกน้ำหนักที่ต้องการ (กิโลกรัม)',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SingleChildScrollView(
            child: Center(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: SizedBox(
                    height: 40,
                    width: 360,
                    child: TextField(
                      keyboardType: const TextInputType.numberWithOptions(
                          signed: true, decimal: true),
                      onChanged: (value) {
                        setState(() {
                          p2 = value;
                          if (Appfinal.f == Appfinal.fish1[0]) {
                            Appfinal.money = 80 * double.parse(p1.text);
                            Appfinal.w = double.parse(p1.text);
                          }
                          if (Appfinal.f == Appfinal.fish1[1]) {
                            Appfinal.money2 = 100 * double.parse(p1.text);
                            Appfinal.w2 = double.parse(p1.text);
                          }
                        });
                      },
                      controller: p1,
                      decoration:
                          const InputDecoration(border: OutlineInputBorder()),
                    ),
                  ),
                ),
                Text(""),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const V1()))
                            .then((value) {
                          setState(() {});
                        });
                      });
                    },
                    style: (const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.black))),
                    child: const Text('คำนวณราคา'),
                  ),
                ),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 50,
                ),
                child: Image.network(
                  'https://png.pngtree.com/png-vector/20221215/ourmid/pngtree-tilapia-fish-png-image_6524812.png',
                  width: 300,
                  height: 200,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
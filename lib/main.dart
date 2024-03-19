import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Map<String, dynamic>> menuData = [
    {
      'image': 'images/kolak.png',
      'name': 'Kolak',
      'price': '10.000',
      'rating': 5,
    },
    {
      'image': 'images/es_pisang_ijo.png',
      'name': 'Es Pisang Ijo',
      'price': '8.000',
      'rating': 4,
    },
    {
      'image': 'images/gorengan.png',
      'name': 'Gorengan',
      'price': '5.000',
      'rating': 2,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromRGBO(157, 193, 131, 1),
            title: const Center(
              child: Text(
                'Menu Takjil',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'ramadhan', fontSize: 35),
              ),
            )),
        body: ListView.builder(
            itemCount: menuData.length,
            itemBuilder: (BuildContext context, int index) {
              final Map<String, dynamic> menu = menuData[index];
              return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                  elevation: 10,
                  color: const Color.fromRGBO(157, 193, 131, 1),
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage(menu['image']),
                          width: 120,
                          height: 120,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                menu['name'],
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Hakan',
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                              Text(
                                'Harga ${menu['price']}',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Hakan',
                                    fontWeight: FontWeight.w300,
                                    fontSize: 20),
                              ),
                              Row(
                                children: List.generate(
                                  5,
                                  (index) => Icon(
                                    index < menu['rating']
                                        ? Icons.star
                                        : Icons.star_border,
                                    color: index < menu['rating']
                                        ? Colors.yellow
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 45),
                          child: const Icon(
                            Icons.menu_book,
                          ),
                        )
                      ],
                    ),
                  ));
            }),
        // ),
      ),
    );
  }
}

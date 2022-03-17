import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfinalproject/mediinformation.dart';



class TextFieldDemo extends StatefulWidget {
  TextFieldDemo({Key? key}) : super(key: key);

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  String mediname = '';
  String medicost = '';
  String mediqty = '';

  TextEditingController medinameCotroller = TextEditingController();
  TextEditingController medicostCotroller = TextEditingController();
  TextEditingController mediqtyCotroller = TextEditingController();

  GlobalKey<FormState> key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Add Medicine'),
        ),
        body: Center(
            child:SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: medinameCotroller,
                          decoration: InputDecoration(
                            label: const Text(
                              'Medicine Name',
                              style: TextStyle(fontSize: 20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: const BorderSide(
                                  color: Colors.black, width: 2),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: const BorderSide(
                                  color: Colors.black, width: 3),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          controller: medicostCotroller,
                          decoration: InputDecoration(
                            label: const Text(
                              'Medicine cost',
                              style: TextStyle(fontSize: 20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: const BorderSide(
                                  color: Colors.black, width: 2),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: const BorderSide(
                                  color: Colors.black, width: 3),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  TextField(
                    controller: mediqtyCotroller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(

                      label: const Text(
                        'Quantity',
                        style: TextStyle(fontSize: 20, color: Colors.black87),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        borderSide:
                        const BorderSide(color: Colors.black, width: 3),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        borderSide:
                        const BorderSide(color: Colors.black, width: 3),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    onPressed: () {
                      if (Platform.isAndroid) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MedicineInfo(
                              medi_name: medinameCotroller.text,
                              medi_cost: medicostCotroller.text,
                              medi_qty: mediqtyCotroller.text,
                            ),
                          ),
                        );
                      } else {
                        Navigator.of(context).push(
                          CupertinoPageRoute(
                            builder: (context) => MedicineInfo(),
                          ),
                        );
                      }
                    },
                    child: const Text('Sell Medicine'),
                    color: Colors.blue,
                    elevation: 5,
                  ),

                ],
              ) ,
            )

        ),

      ),

    );
  }
}

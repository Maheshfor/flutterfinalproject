import 'package:flutter/material.dart';

class MedicineInfo extends StatelessWidget {


  MedicineInfo(
      {Key? key,
        this.medi_name = '',
        this.medi_cost = '',
        this.medi_qty = '',
      })
      : super(key: key);
  String medi_name = '';
  String medi_cost = '';
  String medi_qty = '';

  @override
  Widget build(BuildContext context) {
    var items;
    return SafeArea(
      child: Scaffold(
          body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Card(
                  child:ListTile(
                    leading: Icon(Icons.medical_services,size: 78,),
                    title: Text("Medicine name: $medi_name", style: TextStyle(fontSize: 18),),
                    subtitle: Text("Moblie quantity: $medi_qty", style: TextStyle(fontSize: 12),),
                    trailing: Text("Medicine cost: $medi_cost", style: TextStyle(fontSize: 15,color:Colors.blue),),
                  ),
              );
            },
          )

      ),
    );
  }
}
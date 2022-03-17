import 'package:flutter/material.dart';
import 'package:flutterfinalproject/constant.dart';
import 'package:flutterfinalproject/widgets/header_logo.dart';
import 'package:flutterfinalproject/widgets/my_header.dart';
import 'package:flutterfinalproject/hello.dart';
import 'package:flutterfinalproject/addmedicine.dart';
import 'package:flutterfinalproject/mediinformation.dart';

class WelcomeScreen extends StatelessWidget {
  late final Function press;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          MyHeader(
            height: 333,
            imageUrl: 'assets/images/welcome.png',
            child: Column(
              children: <Widget>[
                HeaderLogo(),
                Text(
                  'Wellcome',
                  style: TextStyle(
                    fontSize: 28,
                    color: mTitleTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Spacer(),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                  size: 36,
                ),
                SizedBox(
                  height: 18,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [mBackgroundColor, mSecondBackgroundColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: SingleChildScrollView(
                child:  Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Our MediStore\nServices',
                            style: TextStyle(
                              color: mTitleTextColor,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.menu,
                            color: mSecondBackgroundColor,
                            size: 36,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return TextFieldDemo();
                                },
                              ),
                            );
                          },
                          child: Container(
                            height: 180,
                            width: 180,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              //border: Border.all(color: Colors.blue, width: 6.0),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(25.0),
                                topRight: Radius.circular(25.0),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.add,size: 78,),
                                Text(
                                  'add medicine',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return FirstProgram();
                                },
                              ),
                            );
                          },
                          child:Container(
                            height: 180,
                            width: 180,
                            decoration: const BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(25.0),
                                topLeft: Radius.circular(25.0),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.sell,
                                  size: 85,
                                ),
                                Text(
                                  ' Sell Medicine',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return MedicineInfo();
                                },
                              ),
                            );
                          },
                          child:Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(25.0),
                                topLeft: Radius.circular(25.0),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:[
                                Icon(
                                  Icons.view_agenda,
                                  size: 85,
                                ),
                                Text(
                                  'medicine stock',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return MedicineInfo();
                                },
                              ),
                            );
                          },
                          child:Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.pinkAccent,
                              //border: Border.all(color: Colors.blue, width: 6.0),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(25.0),
                                topRight: Radius.circular(25.0),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.search,
                                  size: 75,
                                ),
                                Text(
                                  'Search Medicine',
                                  style: TextStyle(
                                      fontFamily: 'ComicNeue',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),


                  ],
                ),
                ),
              ),

            ),
        ],
      ),
    );
  }
}

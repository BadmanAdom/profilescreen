import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:profile/screens/button.dart';
import 'package:profile/screens/button2.dart';
import 'package:profile/screens/drop.dart';
import 'package:profile/screens/dropdown.dart';
import 'package:profile/screens/name.dart';
import 'package:profile/screens/textfield.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            Image.asset('images/img_3.png')
          ],
          title: Text(
            'Edit Profile',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: Container( width: 20,child: Image.asset('images/img_2.png',))),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Center(
                  child: Stack(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 70,
                  ),
                  Positioned(
                    right: 0,
                    top: 100,
                    left: 90,
                    child: Container(
                      height: 50,
                      width: 50,
                      child: GestureDetector(
                        onTap: (){ },
                        child:  Image.asset('images/image.png'),
                      ),
                      // child: Image.asset('images/2.png'),
                      // child:  IconButton(
                      //   icon: Icon(Icons.edit),
                      //   onPressed: () {},
                      // ),
                    ),
                  ),
                ],
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyName(name: 'Full Name'),
                  MyField(
                    hint: 'Aaron Nyamekye',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .01,
                  ),
                  MyName(name: 'Username'),
                  MyField(
                    hint: 'Aaron Nyamekye',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .01,
                  ),
                  MyName(name: 'Email Address'),
                  MyField(
                    hint: 'aaronnyamekye@gmail.com',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .01,
                  ),
                  MyName(
                    name: 'Phone number',
                  ),
                  MyField(
                    hint: '+233 24 567 8910',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .01,
                  ),
                  MyName(name: 'Date of Birth'),
                  MyField(
                      hint: '27/05/1992',
                      suffixIcon: GestureDetector(
                        onTap: () {},
                        child: Image(
                          height: 2,
                          image: AssetImage('images/img.png'),
                        ),
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .01,
                  ),
                  MyName(name: 'Gender'),
                  MyField(
                    hint: 'Male',
                    suffixIcon: Container(
                        height: 10,
                        child: SvgPicture.asset('images/dropdown.svg')),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .05,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Button1(
                        color: Colors.white,
                        name: 'Cancel',
                      ),
                      Button2(name: 'Save', color: Colors.black)
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Page_one extends StatefulWidget {
  const Page_one({super.key});

  @override
  State<Page_one> createState() => _ImageChanger();
}

class _ImageChanger extends State<Page_one> {
  int currentIndex = 0;

  List<Map<String, dynamic>> myData = [
    {
      "image": "assets/images/im_one.png",
      "text1": "Having Car Issues!",
      "text2": "We've Got More Than 100+ Services"
    },
    {
      "image": "assets/images/im_two.png",
      "text1": "Access Top-Notch Car Service With Just A Touch!",
      "text2": "Book Any Service In A Jiffy"
    },
    {
      "image": "assets/images/im_three.png",
      "text1": "Tired Of Paying Extra Charges!",
      "text2": "Book Our Services For Free"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width * 1.0,
          height: MediaQuery.of(context).size.height * 1.0,
          color: const Color(0xFFFFFCF0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.4,
                // color: Colors.amber,
                margin: EdgeInsets.only(top: 120),
                child: Image.asset('assets/images/im_one.png'),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.05,
                margin: const EdgeInsets.only(top: 20),
                // color: Colors.blue,
                child: const Center(
                  child: Text(
                    "Having Car Issues!",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Colors.black87),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.03,
                // color: Colors.yellow,
                child: const Center(
                  child: Text(
                    "We've Got More Than 100+ Services",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.04,
                margin: EdgeInsets.only(top: 50),
                // color: Colors.amber,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.circle,
                      size: 13,
                    ),
                    Icon(
                      Icons.circle,
                      size: 13,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.circle,
                      size: 13,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.06,
                margin: EdgeInsets.only(top: 40),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFFE05354))),
                  child: const Text(
                    "LOGIN/SIGNUP",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

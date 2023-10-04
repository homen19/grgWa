import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:dots_indicator/dots_indicator.dart';
// ignore: depend_on_referenced_packages
import 'package:carousel_slider/carousel_slider.dart';

class Image_slider extends StatefulWidget {
  const Image_slider({super.key});

  @override
  State<Image_slider> createState() => ImageChanger();
}

class ImageChanger extends State<Image_slider> {
  List<Map<String, dynamic>> myData = [
    {
      "image": "assets/images/im_one.jpg",
      "text1": "Having Car Issues!",
      "text2": "We've Got More Than 100+ Services"
    },
    {
      "image": "assets/images/im_two.jpg",
      "text1": "Access Top-Notch Car Service With Just A Touch!",
      "text2": "Book Any Service In A Jiffy"
    },
    {
      "image": "assets/images/im_three.jpg",
      "text1": "Tired Of Paying Extra Charges!",
      "text2": "Book Our Services For Free"
    },
  ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                InkWell(
                  onTap: () {
                    print(currentIndex);
                  },
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.1),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.67,
                      // color: Colors.amber,
                      child: CarouselSlider(
                        items: myData
                            .map(
                              (item) => Column(
                                children: [
                                  Image.asset(
                                    item["image"],
                                    // fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.03,
                                        bottom:
                                            MediaQuery.of(context).size.height *
                                                0.005),
                                    child: Text(
                                      item["text1"],
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                  Text(
                                    item["text2"],
                                    style: const TextStyle(
                                        fontSize: 19, color: Colors.black54),
                                  )
                                ],
                              ),
                            )
                            .toList(),
                        carouselController: carouselController,
                        options: CarouselOptions(
                            // width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.7,
                            scrollPhysics: const BouncingScrollPhysics(),
                            autoPlay: true,
                            aspectRatio: 2,
                            viewportFraction: 1,
                            onPageChanged: (index, reason) {
                              setState(() {
                                currentIndex = index;
                              });
                            }),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            DotsIndicator(
              dotsCount: myData.length,
              position: currentIndex,
              decorator: const DotsDecorator(
                color: Colors.grey, // Inactive dot color
                activeColor: Colors.black, // Active dot color
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.06,
              margin: const EdgeInsets.only(top: 40),
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
    );
  }
}

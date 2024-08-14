import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:oau_bike_service/dashboard.dart';
import 'on_boarding_model.dart';
import 'package:flutter/widgets.dart';

class AnimatedOnboardingScreen extends StatefulWidget {
  const AnimatedOnboardingScreen({super.key});

  @override
  State<AnimatedOnboardingScreen> createState() => _AnimatedOnboardingScreenState();
}

class _AnimatedOnboardingScreenState extends State<AnimatedOnboardingScreen> {
  final PageController pageController = PageController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          CustomPaint(
            painter: ArcPaint(),
            child: SizedBox(
              height: size.height / 1.35,
              width: size.width,
            ),
          ),
          Positioned(
            top: 100,
              right: 0,left: 0,
              child: Lottie.network(onboardintItems[currentIndex].lottieURL,
              width: 500, alignment: Alignment.topCenter
              ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 270,
              child: Column(
                children: [
                  Flexible(
                  child: PageView.builder(
                    controller: pageController,
                    itemCount: onboardintItems.length,
                    itemBuilder: (context, index){
                      final items = onboardintItems[index];
                    return Column(
                      children: [
                          SizedBox(height: 50),
                          Text(
                          items.title,
                          style: TextStyle(
                          fontWeight: FontWeight.bold, 
                          fontSize: 30, 
                          color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 50),
                          Text(
                          items.subtitle,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                          fontSize: 18, 
                          color: Colors.black45,
                            ),
                          ),
                      ], 
                      ); 
                    }, 
                    onPageChanged: (value) {
                      setState(() {
                        currentIndex = value;
                      });
                    },
                   ),
                  ),
                  Row (
                  mainAxisSize: MainAxisSize.min,                      
                  children: [
                    for (int index = 0; index < onboardintItems.length; index++)
                    dotIndicator(isSelected: index == currentIndex),
                  ],),
                  SizedBox(height: 50),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
   pageController.page==2? Get.to(() => const Dashboard()):     pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.linear);
      },
      elevation: 0,
      backgroundColor: Colors.white,
      child: Icon(Icons.arrow_forward_ios, color: Colors.black),
      ),
    );
  }
  Widget dotIndicator({ required bool isSelected}) {
    return Padding (padding: EdgeInsets.only(right: 7),
    child: AnimatedContainer(duration: Duration(microseconds: 500),
    height: isSelected ?8:6,
    width: isSelected ? 8 : 6,
    decoration: BoxDecoration(shape: BoxShape.circle,color: isSelected ?Colors.black :Colors.black26,),
      )
    );
  }
}

class ArcPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path orangeArc = Path()
      .. moveTo(0, 0)
      ..lineTo(0, size.height-175)
      ..quadraticBezierTo(size.width/2, size.height, size.width, size.height-175)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..close();
    canvas.drawPath(orangeArc, Paint()..color = Colors.orange);

    Path whiteArc = Path()
      .. moveTo(0, 0)
      ..lineTo(0, size.height-175)
      ..quadraticBezierTo(size.width/2, size.height-60, size.width, size.height-180)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..close();
    canvas.drawPath(whiteArc, Paint()..color = const Color.fromARGB(255, 144, 202, 249));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
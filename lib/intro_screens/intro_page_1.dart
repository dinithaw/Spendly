import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFF8D6C),
      child: Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to Spendly',
              style: TextStyle(
                fontFamily:'AbrilFatface' ,
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10,),
            Lottie.asset(
              'assets/Animation - 1710672669883.json', // Replace 'image_name.png' with the path to your image asset
              width: 200, // Adjust the width to fit your layout
              height: 200, // Adjust the height to fit your layout
            ),
            const SizedBox(height: 10),
            const Text(
              'Manage your finance with ease.spendly helps you track expenses,set budgets,and acheive financial goals',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins-Regular',
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
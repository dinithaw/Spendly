import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF00B2E7),
      child: Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Set Your Budgets',
              style: TextStyle(
                fontFamily:'AbrilFatface' ,
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10,),
            Lottie.asset(
              'assets/Animation - 1712569888125.json', // Replace 'image_name.png' with the path to your image asset
              width: 200, // Adjust the width to fit your layout
              height: 200, // Adjust the height to fit your layout
            ),
            const SizedBox(height: 10),
            const Text(
              'Allocate your funds wisely by setting budgets for different spending categories.Spendly helps you stay within your financial limits',
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
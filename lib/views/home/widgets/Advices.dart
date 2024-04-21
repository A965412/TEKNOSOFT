import 'package:bmi_calculator_app/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Advices_Widget extends StatelessWidget {
  const Advices_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BMIProvider>(context);

    return Container(
      height: MediaQuery.of(context).size.height * .14,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey),
      ),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            const TextSpan(
              text: 'A BMI of ',
              style: TextStyle(
                fontSize: 17,
                fontFamily: 'Inder',
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: provider.bmiCategoryRange(),
              style: const TextStyle(
                fontFamily: 'Inder',
                color: Color(0xff2566cf),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const TextSpan(
              text: ' indicates that your weight is in the ',
              style: TextStyle(
                fontFamily: 'Inder',
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextSpan(
              text: provider.bmiCategory,
              style: const TextStyle(
                fontFamily: 'Inder',
                color: Color(0xff2566cf),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const TextSpan(
              text:
                  ' category for a person of your height.\n\n Maintaining a healthy weight reduces the risk of diseases associated with overweight and obesity.  ',
              style: TextStyle(
                fontFamily: 'Inder',
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:bmi_calculator_app/Mytheme.dart';
import 'package:bmi_calculator_app/provider/provider.dart';
import 'package:bmi_calculator_app/views/home/widgets/Advices.dart';
import 'package:bmi_calculator_app/views/home/widgets/Elevated_Buttun_Widget.dart';
import 'package:bmi_calculator_app/views/home/widgets/Infromation.dart';
import 'package:bmi_calculator_app/views/home/widgets/custom_result_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResultPage extends StatelessWidget {
  static const String routeName = "result_Screen";
  late BMIProvider provider;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BMIProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Mytheme.primaryColor,
        title: const Text(
          'Result',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, fontFamily: 'Inder'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'Your BMI is',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Inder',
                ),
              ),
            ),
            const SizedBox(height: 10),
            const ResultContainer(),
            const SizedBox(height: 30),
            Center(
              child: Text(
                '(${provider.bmiCategory})',
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inder'),
              ),
            ),
            const SizedBox(height: 30),
            const Information_Widget(),
            const SizedBox(height: 40),
            Advices_Widget(),
            const SizedBox(height: 20),
            Elevated_Button_Widget(
                iconData: Icons.refresh_outlined,
                textButton: 'TRY AGAIN',
                onPressed: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}

import 'package:bmi_calculator_app/Mytheme.dart';
import 'package:bmi_calculator_app/provider/provider.dart';
import 'package:bmi_calculator_app/views/home/Screens/result.dart';
import 'package:bmi_calculator_app/views/home/widgets/Elevated_Buttun_Widget.dart';
import 'package:bmi_calculator_app/views/home/widgets/Slider.dart';
import 'package:bmi_calculator_app/views/home/widgets/custom_gender_container.dart';
import 'package:bmi_calculator_app/views/home/widgets/custom_wight_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/custom_age_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String routeName = "Home_Screen";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BMIProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Mytheme.primaryColor,
        title: Text("BMI Calculator",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Mytheme.blackColor)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          const SizedBox(height: 10),
          const Text(
            'Gender',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Inder',
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              CustomGenderContainer(
                borderColor: isSelected
                    ? const Color(0xff6c98de)
                    : const Color(0xffd9d9d9),
                iconColor: isSelected
                    ? const Color(0xff2b67cf)
                    : const Color(0xff8b8b8b),
                color: isSelected
                    ? const Color(0xffe0e9f8)
                    : const Color(0xffd9d9d9),
                iconData: Icons.man,
                text: 'Male',
                onTap: () {
                  setState(() {
                    isSelected = true;
                  });
                },
              ),
              const SizedBox(
                width: 20,
              ),
              CustomGenderContainer(
                borderColor: isSelected
                    ? const Color(0xffd9d9d9)
                    : const Color(0xff6c98de),
                iconColor: isSelected
                    ? const Color(0xff8b8b8b)
                    : const Color(0xff2b67cf),
                color: isSelected
                    ? const Color(0xffd9d9d9)
                    : const Color(0xffe0e9f8),
                iconData: Icons.woman,
                text: 'Female',
                onTap: () {
                  setState(() {
                    isSelected = false;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 20),
          Slider_Widget(),
          const SizedBox(
            height: 55,
          ),
          Row(children: [
            const CustomAgeContainer(),
            const SizedBox(
              width: 10,
            ),
            Expanded(child: Custom_Weight_Container()),
          ]),
          const SizedBox(height: 50),
          Elevated_Button_Widget(
              textButton: 'CALCULATE BMI',
              onPressed: () {
                provider.calculateBMI(provider.weight, provider.height);
                provider.determineBMICategory();
                provider.selectGender(isSelected);
                Navigator.of(context).pushNamed(ResultPage.routeName);
              }),
        ]),
      ),
    );
  }
}

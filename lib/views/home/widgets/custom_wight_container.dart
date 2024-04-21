import 'package:bmi_calculator_app/Mytheme.dart';
import 'package:bmi_calculator_app/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:provider/provider.dart';

class Custom_Weight_Container extends StatefulWidget {
  const Custom_Weight_Container({super.key});

  @override
  State<Custom_Weight_Container> createState() =>
      _Custom_Weight_ContainerState();
}

class _Custom_Weight_ContainerState extends State<Custom_Weight_Container> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BMIProvider>(context);

    return Column(
      children: [
        const Text(
          'Weight (kg)',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            fontFamily: 'Inder',
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.09,
            width: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
              color: Mytheme.primaryColor,
              border: Border.all(color: Mytheme.deepGrayColor),
              borderRadius: BorderRadius.circular(20),
            ),
            child: NumberPicker(
              selectedTextStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Capriola',
              ),
              itemCount: 3,
              itemWidth: 50,
              itemHeight: 80,
              textStyle: const TextStyle(
                fontFamily: 'Capriola',
              ),
              axis: Axis.horizontal,
              value: provider.weight.toInt(),
              minValue: 0,
              maxValue: 200,
              onChanged: (value) {
                setState(() {
                  provider.weight = value.toDouble();
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}

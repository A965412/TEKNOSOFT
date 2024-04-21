import 'package:bmi_calculator_app/Mytheme.dart';
import 'package:bmi_calculator_app/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Information_Widget extends StatelessWidget {
  const Information_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      height: MediaQuery.of(context).size.height * .18,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Mytheme.deepGrayColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Provider.of<BMIProvider>(context).isSelected
                    ? Icons.man
                    : Icons.woman,
                size: 48,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                Provider.of<BMIProvider>(context).isSelected
                    ? 'Male'
                    : 'Female',
                style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'inder',
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                (Provider.of<BMIProvider>(context).height.toInt()).toString(),
                style: const TextStyle(
                    fontSize: 30,
                    fontFamily: 'Capriola',
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Age',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'inder',
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                (Provider.of<BMIProvider>(context).height.toInt()).toString(),
                style: const TextStyle(
                    fontSize: 30,
                    fontFamily: 'Capriola',
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Height',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'inder',
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                (Provider.of<BMIProvider>(context).weight.toInt()).toString(),
                style: const TextStyle(
                    fontSize: 30,
                    fontFamily: 'Capriola',
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Weight',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'inder',
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}

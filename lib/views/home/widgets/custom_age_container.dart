import 'package:bmi_calculator_app/Mytheme.dart';
import 'package:bmi_calculator_app/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomAgeContainer extends StatefulWidget {
  const CustomAgeContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomAgeContainer> createState() => _CustomAgeContainerState();
}

class _CustomAgeContainerState extends State<CustomAgeContainer> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BMIProvider>(context);

    return Column(
      children: [
        const Text(
          'Age',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Inder',
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.09,
          width: MediaQuery.of(context).size.width * 0.45,
          decoration: BoxDecoration(
            color: Mytheme.primaryColor,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Mytheme.deepGrayColor),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  if (provider.age > 0) {
                    provider.age--;
                  }
                  setState(() {});
                },
                icon: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Mytheme.deepGrayColor)),
                  child: const Icon(
                    Icons.remove,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  provider.age.toString(),
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Capriola',
                  ),
                ),
              ),
              IconButton(
                icon: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Mytheme.deepGrayColor)),
                    child: const Icon(Icons.add)),
                onPressed: () {
                  provider.age++;
                  setState(() {});
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}

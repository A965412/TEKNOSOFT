import 'package:bmi_calculator_app/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResultContainer extends StatelessWidget {
  const ResultContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BMIProvider>(context);

    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * .25,
        height: MediaQuery.of(context).size.height * .14,
        decoration: const BoxDecoration(
          color: Color(0xff2566cf),
          borderRadius: BorderRadius.all(
            Radius.circular(22),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              provider.result.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 24,
                fontFamily: 'Capriola',
              ),
            ),
            Text(
              'kg/m2',
              style: TextStyle(
                fontFamily: 'Inder',
                color: Colors.grey.shade300,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

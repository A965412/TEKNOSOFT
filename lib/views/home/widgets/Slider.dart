import 'package:bmi_calculator_app/Mytheme.dart';
import 'package:bmi_calculator_app/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class Slider_Widget extends StatefulWidget {
  const Slider_Widget({super.key});

  @override
  State<Slider_Widget> createState() => _Slider_WidgetState();
}

class _Slider_WidgetState extends State<Slider_Widget> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BMIProvider>(context);

    return Column(
      children: [
        const Text(
          'Height (cm)',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Inder'),
        ),
        SfSlider(
          activeColor: Mytheme.elevetedButtonColor,
          shouldAlwaysShowTooltip: true,
          min: 0.0,
          max: 200.0,
          value: provider.height,
          interval: 20,
          showTicks: true,
          showLabels: true,
          enableTooltip: false,
          onChanged: (value) {
            setState(() {
              provider.height = value;
            });
          },
        ),
      ],
    );
  }
}

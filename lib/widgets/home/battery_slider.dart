import 'package:aboutmobiles/data/dummy_data.dart';
import 'package:aboutmobiles/screens/battery_range_mobile_details.dart';
import 'package:flutter/material.dart';

class BatterySlider extends StatefulWidget {
  const BatterySlider(
      {super.key,
      required this.minValue,
      required this.maxValue,
      required this.value,
      required this.onChanged});
  final double minValue;
  final double maxValue;
  final double value;
  final ValueChanged<double> onChanged;

  @override
  State<BatterySlider> createState() => _BatterySliderState();
}

class _BatterySliderState extends State<BatterySlider> {
  RangeValues _currentRangeValues =
      const RangeValues(0, 6000); // Initial range 0 to 6000 mAh

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: RangeSlider(
            values: _currentRangeValues,
            min: widget.minValue,
            max: widget.maxValue,
            divisions: (widget.maxValue - widget.minValue) ~/ 100,
            labels: RangeLabels(
              _currentRangeValues.start.round().toString(),
              _currentRangeValues.end.round().toString(),
            ),
            onChanged: (RangeValues values) {
              setState(() {
                _currentRangeValues = values;
              });
              widget.onChanged(
                  values.end); // Only pass the end value to the parent widget
            },
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .pop(); // Pass selected value back to parent screen
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => BatteryRangeMobileDetailsScreen(
                    mobile: dummyMobiles,
                    startingRange: _currentRangeValues.start,
                    endingRange: _currentRangeValues.end),
              ),
            );
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}

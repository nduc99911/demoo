import 'package:flutter/material.dart';

class SliderVerticalWidget extends StatefulWidget {
  int ?rotate;
  Color ?color;
  Color?colorTitle;
  double? value;

  SliderVerticalWidget(
      {this.rotate,
        this.color,
        this.colorTitle,
        this.value
        });

  @override
  _SliderVerticalWidgetState createState() => _SliderVerticalWidgetState();
}

class _SliderVerticalWidgetState extends State<SliderVerticalWidget> {



  @override
  Widget build(BuildContext context) {
    final double min = 0;
    final double max = 100;

    return SliderTheme(
      data: SliderThemeData(
        trackHeight: 35,
        thumbShape: SliderComponentShape.noOverlay,
        overlayShape: SliderComponentShape.noOverlay,
        valueIndicatorShape: SliderComponentShape.noOverlay,
        trackShape: RectangularSliderTrackShape(),
        /// ticks in between
        activeTickMarkColor: Colors.transparent,
        inactiveTickMarkColor: Colors.transparent,
      ),
      child: Container(
        height: 30,
        width: 75,
        child: Row(
          children: [

            Expanded(
              child: Stack(
                children: [
                  RotatedBox(
                    quarterTurns: widget.rotate??0,
                    child: Slider(
                      activeColor: widget.color,
                      inactiveColor: Colors.transparent,
                      value: widget.value??0,
                      min: min,
                      max: max,
                      divisions: 20,
                      label: widget.value?.round().toString(),
                      onChanged: (value) => setState(() => this.widget.value = value),
                    ),
                  ),
                  Center(
                    child: Text(
                      '${widget.value?.round()}',
                      style: TextStyle(
                        color: widget.colorTitle,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


}
import 'package:flutter/material.dart';

class AreaWidget extends StatefulWidget {
  final String areaTitle;
  final bool tempSensorPresent;
  final int temperature;
  final List<Widget> devices;
  final int portraitRowItemCount;
  final int landscapeRowItemCount;

  const AreaWidget(
      {super.key,
      required this.areaTitle,
      this.tempSensorPresent = false,
      this.temperature = 0,
      required this.devices,
      this.portraitRowItemCount = 2,
      this.landscapeRowItemCount = 3});

  @override
  State<AreaWidget> createState() => _AreaWidgetState();
}

class _AreaWidgetState extends State<AreaWidget> {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.areaTitle,
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.bold),
              ),
              widget.tempSensorPresent
                  ? Row(
                      children: [
                        Text("${widget.temperature}"),
                        Icon(Icons.thermostat)
                      ],
                    )
                  : SizedBox.shrink(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: orientation == Orientation.portrait ? widget.portraitRowItemCount : widget.landscapeRowItemCount,
              mainAxisExtent: 200,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              // childAspectRatio: gridItemWidth / gridItemHeight,
            ),
            itemCount: widget.devices.length,
            itemBuilder: (BuildContext context, int index) {
              return widget.devices[index];
            },
          ),
        )
      ],
    );
  }
}

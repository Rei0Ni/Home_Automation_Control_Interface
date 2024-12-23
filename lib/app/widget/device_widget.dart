import 'package:flutter/material.dart';

class DeviceWidget extends StatefulWidget {
  late bool deviceState;
  final String deviceName;
  DeviceWidget(
      {super.key, required this.deviceName, required this.deviceState});

  @override
  State<DeviceWidget> createState() => _DeviceWidgetState();
}

class _DeviceWidgetState extends State<DeviceWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                bottom: 8.0,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.light,
                    size: 120,
                    color: Color(0xff9C27B0),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.deviceName,
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Arial',
                        fontWeight: FontWeight.bold),
                  ),
                  Switch(
                    value: widget.deviceState,
                    activeColor: Colors.white,
                    activeTrackColor: Color(0xff4CAF50),
                    inactiveThumbColor: Colors.black,
                    inactiveTrackColor: Color(0xffF44336),
                    trackOutlineColor: WidgetStateProperty.resolveWith<Color?>(
                      (Set<WidgetState> states) {
                        return Colors.transparent; // Use the default color.
                      },
                    ),
                    onChanged: (bool value) {
                      setState(() {
                        widget.deviceState = value;
                      });
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ThermostatWidget extends StatefulWidget {
  int temperature;
  String thermostatName;
  ThermostatWidget(
      {super.key, required this.temperature, required this.thermostatName});

  @override
  State<ThermostatWidget> createState() => _ThermostatWidgetState();
}

class _ThermostatWidgetState extends State<ThermostatWidget> {
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.thermostat,
                    size: 50,
                    color: Color(0xff9C27B0),
                  ),
                  Text(
                    "${widget.temperature}°C",
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'Arial',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        widget.temperature++;
                      });
                    },
                    icon: Icon(
                      Icons.keyboard_arrow_up_rounded,
                      size: 35,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        widget.temperature--;
                      });
                    },
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 35,
                    ),
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  widget.thermostatName,
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Arial',
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}

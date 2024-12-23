import 'package:flutter/material.dart';

class SecurityWidget extends StatefulWidget {
  late bool secured;
  SecurityWidget({super.key, required this.secured});

  @override
  State<SecurityWidget> createState() => _SecurityWidgetState();
}

class _SecurityWidgetState extends State<SecurityWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

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
            Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                bottom: 8.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    widget.secured
                        ? Icons.lock_outline
                        : Icons.lock_open_outlined,
                    size: 80,
                    color: Color(0xff9C27B0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 26.0),
                    child: Text(
                      widget.secured ? "System Armed" : "System Disarmed",
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Arial',
                        color: widget.secured
                            ? Color(0xff4CAF50)
                            : Color(0xffF44336),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    widget.secured = !widget.secured;
                  });
                },
                minWidth: width,
                height: 50,
                color: widget.secured ? Color(0xffF44336) : Color(0xff4CAF50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Text(
                  widget.secured ? "Disarm System" : "Arm System",
                  style: TextStyle(
                    color: widget.secured ? Colors.white : Colors.black,
                    fontSize: 16,
                    fontFamily: 'Arial'
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

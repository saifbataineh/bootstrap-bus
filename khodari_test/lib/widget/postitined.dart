import 'package:flutter/material.dart';
import 'package:khodari_test/utils/constants.dart';

class pp extends StatefulWidget {
  const pp(
      {super.key, required this.top, required this.left, required this.name});
  final double top, left;
  final String name;

  @override
  State<pp> createState() => _ppState();
}
 bool _ishoverd = false;

class _ppState extends State<pp> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: widget.top,
        left: widget.left,
        child: MouseRegion(
          onHover: (event) {
            setState(() {
              _ishoverd = true;
            });
          },
          onExit: (event) {
            setState(() {
              _ishoverd = false;
            });},
          child: Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.location_pin,
                ),
                color: Colors.white,
                onPressed: () {},
              ),
              _ishoverd? Container(
                color: Colors.black,
                child: Text(isEnglish?"you can find us in ${widget.name}":"يمكنك ان تجدنا في ${widget.name}",style: TextStyle(color: Colors.white),),
              ):Container()
            ],
          ),
        ));
  }
}

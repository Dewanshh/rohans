import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rohans/constants.dart';

class Container2 extends StatefulWidget {
  final int ind;
  final double width;
  final CarType data;
  const Container2({
    super.key,
    required this.isSelected,
    required this.ind,
    this.width = 150.0,
    required this.data,
  });

  final bool isSelected;

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.ind == 0
          ? EdgeInsets.only(
              left: 20,
              bottom: 10,
              top: 10,
            )
          : const EdgeInsets.only(
              bottom: 10,
              top: 10,
            ),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 12,
            color: Colors.black.withOpacity(0.3),
          )
        ],
        border: Border.all(
            width: 2,
            color: widget.ind == 0 ? Colors.blue : Colors.transparent),
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      width: widget.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 80,
            child: Row(children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  clipBehavior: Clip.antiAlias,
                  height: 100,
                  child: Image.asset(
                    widget.data.image,
                    scale: 60,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Align(
                alignment: AlignmentDirectional.topStart,
                child: SizedBox(
                    width: 20,
                    height: 20,
                    child: Icon(
                      Icons.info_outline,
                      color: Colors.blue,
                    )),
              )
            ]),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
              height: 20,
              child: Text(
                widget.data.title,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ))
        ],
      ),
    );
  }
}

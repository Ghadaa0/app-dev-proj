import 'package:flutter/material.dart';
import 'package:task0_tech/employee.dart';
import 'package:google_fonts/google_fonts.dart';
import '../details.dart';

class CardEmp extends StatelessWidget {
  final Employee emp;
  const CardEmp(
    this.emp, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => Details(emp)),
          );
        },
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                ),
                clipBehavior: Clip.hardEdge,
                child: Image.asset(
                  emp.image,
                  height: 150,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.widgets_rounded),
                        Text(emp.major),
                      ],
                    ),
                    Text(emp.name,
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: GoogleFonts.cairo().fontFamily,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

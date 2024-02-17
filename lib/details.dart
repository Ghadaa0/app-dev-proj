import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task0_tech/employee.dart';

class Details extends StatelessWidget {
  final Employee emp;
  const Details(this.emp, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "الملف الشخصـي",
          style: TextStyle(
            fontFamily: GoogleFonts.cairo().fontFamily,
          ),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                clipBehavior: Clip.hardEdge,
                child: Image.asset(
                  emp.image,
                  height: 300,
                ),
              ),
              const SizedBox(height: 50),
              Text(
                'اسم الموظف',
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: GoogleFonts.cairo().fontFamily,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 60, 50, 61),
                ),
              ),
              Text(
                emp.name,
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 86, 65, 88),
                  fontFamily: GoogleFonts.cairo().fontFamily,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                'سنوات الخبرة',
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: GoogleFonts.cairo().fontFamily,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 60, 50, 61),
                ),
              ),
              Text(
                emp.experince,
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 86, 65, 88),
                  fontFamily: GoogleFonts.cairo().fontFamily,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.widgets_rounded),
                      Text(
                        emp.major,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    ':التخصص',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: GoogleFonts.cairo().fontFamily,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 171, 107, 177),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

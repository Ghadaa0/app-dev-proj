import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task0_tech/employee.dart';
import 'widget/card_employee.dart';

List<Employee> r = [
  //image, name, visitors(int), xxnumberxx, age(int)
  //image, name, major(string), experince

  Employee('assets/images/1.png', 'غيداء', "Font End Developer", "+4 years"),
  Employee('assets/images/3.png', 'فيصل', "Back End Developr", "+3 years"),
  Employee('assets/images/2.png', 'نجد', "Graphic Designer", "+2 years"),
  Employee('assets/images/4.png', 'أحمد', "UI/UX", "+2 years"),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 219, 241),
      appBar: AppBar(
        title: Text(
          'قائمة الموظفين',
          style: TextStyle(
            fontFamily: GoogleFonts.cairo().fontFamily,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: r.length,
          itemBuilder: ((context, index) => CardEmp(r[index])),
        ),
      ),
    );
  }
}

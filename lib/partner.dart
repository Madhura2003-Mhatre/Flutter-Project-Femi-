import 'package:femi/questions3.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class Partner extends StatefulWidget {
  const Partner({super.key});

  @override
  State<Partner> createState() => _PartnerState();
}

class _PartnerState extends State<Partner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 420,
                color: Colors.pink.shade200,
              ),
               SizedBox(
                height: 10,
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 10),
                  child: LinearProgressBar(
                    key: const ValueKey<int>(4), // Key to trigger re-render
                    maxSteps: 5,
                    progressType: LinearProgressBar.progressTypeLinear,
                    currentStep: 0,
                    progressColor: Colors.pink.shade400,
                    backgroundColor: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
                SizedBox(
                  height: 150,
                  child: Image.asset(
                    "assets/Group 5314.png",
                    fit: BoxFit.fill,
                  ),
                ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 70, bottom: 20, left: 17, right: 17),
            child: Text(
              "Are you using femi  for yourself ?",
              style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const For()));
            },
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 241, 130, 167),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    "Yes",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const For()));
            },
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 241, 130, 167),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    "No, I have a partner code",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
          Container(
            height: 40,
            width: 420,
            color: Colors.pink.shade200,
          ),
        ],
      ),
    );
  }
}

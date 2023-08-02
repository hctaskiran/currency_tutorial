import 'package:currency_tutorial/components/custom_app_bar_text.dart';
import 'package:currency_tutorial/components/textfield.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color mainColor = Colors.blueGrey.shade900;
  final boldFont = FontWeight.bold;
  final startMain = MainAxisAlignment.start;
  final startCross = CrossAxisAlignment.start;
  final centerMain = MainAxisAlignment.center;
  final centerCross = CrossAxisAlignment.center; 
  double barElev = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: barElev,
        backgroundColor: mainColor,
        title: customAppBarText(),
        centerTitle: true,
      ),                
      backgroundColor: mainColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          child: Column(
            mainAxisAlignment: startMain,
            crossAxisAlignment: startCross,
            children: [
              Container(
                width: 200,
              ),
              Expanded(
                child: 
                  Center(
                    child: Column(
                      mainAxisAlignment: centerMain,
                      crossAxisAlignment: centerCross,
                      children: [
                        CustomTextField(),
                        SizedBox(height: 20),
                        Row(
                          children: [
                          ],
                        ),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}


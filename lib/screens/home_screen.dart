import 'package:beginner/theme/constants.dart';
import 'package:beginner/widgets/home/card_home_screen.dart';
import 'package:beginner/widgets/home/training_section.dart';
import 'package:beginner/widgets/home/your_program_details_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          left: Constants.defaultPadding,
          right: Constants.defaultPadding,
        ),
        child: Column(
          children: const [
            TrainingSection(),
            YourProgramDetailsButton(),
            CardHomeSection(),
          ],
        ),
      ),
    );
  }
}

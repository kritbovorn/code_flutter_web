import 'package:beginner/theme/constants.dart';
import 'package:beginner/widgets/home/card_home_section.dart';
import 'package:beginner/widgets/home/card_stack.dart';
import 'package:beginner/widgets/home/training_section.dart';
import 'package:beginner/widgets/home/your_program_details_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          left: Constants.defaultPadding,
          right: Constants.defaultPadding,
        ),
        child: Column(
          children: [
            const TrainingSection(),
            const YourProgramDetailsButton(),
            const CardHomeSection(),
            const CardStack(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: Constants.defaultPadding),
              child: Row(
                children: [
                  Text(
                    'Area of focucs',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.only(
                    bottom: Constants.defaultPadding * 2,
                    top: Constants.defaultPadding / 2),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: Constants.defaultPadding,
                  mainAxisSpacing: Constants.defaultPadding,
                  // mainAxisExtent: 12,
                ),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/ex${index + 1}.png'),
                        Text(
                          'Somethings',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondary),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}


// _CastError (type 'Future<dynamic>' is not a subtype of type 'List<dynamic>' in type cast)

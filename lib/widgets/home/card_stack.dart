import 'package:flutter/material.dart';

class CardStack extends StatelessWidget {
const CardStack({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  Container(
              margin: const EdgeInsets.only(top: 10),
              width: double.maxFinite,
              height: 80,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                      height: 80,
                      width: double.maxFinite,
                      child: Image.asset(
                        'assets/card.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    // color: Colors.green.withOpacity(0.5),
                    width: double.maxFinite,
                    height: 80,
                    child: Row(
                      children: [
                        const Expanded(
                          flex: 2,
                          child: SizedBox(),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'You are doing great',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'keep it up',
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption!
                                        .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary),
                                  ),
                                  Text(
                                    'stick to your plan',
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption!
                                        .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: -10,
                    left: 30,
                    right: 0,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      // width: double.maxFinite,
                      height: 80,
                      // color: Colors.red.withOpacity(0.57),
                      child: Image.asset('assets/figure.png'),
                    ),
                  ),
                ],
              ),
            );
  }
}
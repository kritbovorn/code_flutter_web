import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TemperaturePage extends StatefulWidget {
  const TemperaturePage({Key? key}) : super(key: key);

  @override
  _TemperaturePageState createState() => _TemperaturePageState();
}

class _TemperaturePageState extends State<TemperaturePage> {
  double heating = 12;
  double fan = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.indigo,
                      size: 32,
                    ),
                    onTap: () => Navigator.pop(context),
                  ),
                  GestureDetector(
                    child: const RotatedBox(
                      quarterTurns: 135,
                      child: Icon(
                        Icons.bar_chart_rounded,
                        color: Colors.indigo,
                        size: 32,
                      ),
                    ),
                    onTap: () => Navigator.pop(context),
                  )
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const SizedBox(
                      height: 32,
                    ),
                    CircularPercentIndicator(
                      radius: 100,
                      lineWidth: 14,
                      percent: 0.72,
                      center: const Text(
                        '26\u00b0',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 42,
                    ),
                    const Center(
                      child: Text(
                        'TEMPERATURE',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 42,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _roundedButton(title: 'GENERAL', isActive: true),
                        _roundedButton(title: 'SERVICES'),
                      ],
                    ),
                    const SizedBox(
                      height: 42,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24),
                            child: Text(
                              'HEATING',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Slider(
                            value: heating,
                            onChanged: (newHeating) {
                              setState(() {
                                heating = newHeating;
                              });
                            },
                            max: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('0\u00b0'),
                                Text('15\u00b0'),
                                Text('30\u00b0'),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 42,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24),
                            child: Text(
                              'FAN SPEED',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Slider(
                            value: fan,
                            onChanged: (newFan) {
                              setState(() {
                                fan = newFan;
                              });
                            },
                            max: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('LOW'),
                                Text('MID'),
                                Text('HIGH'),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 42,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _fan(title: 'FAN 1', isActive: true),
                        _fan(title: 'FAN 2', isActive: true),
                        _fan(title: 'FAN 3'),
                      ],
                    ),
                    const SizedBox(
                      height: 42,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _fan({
    required String title,
    bool isActive = false,
  }) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: isActive ? Colors.indigo : Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset(
              isActive ? 'assets/images/fan-2.png' : 'assets/images/fan-1.png'),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          title,
          style: TextStyle(
            color: isActive ? Colors.black87 : Colors.black54,
          ),
        )
      ],
    );
  }

  Widget _roundedButton({
    required String title,
    bool isActive = false,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: isActive ? Colors.indigo : Colors.transparent,
        border: Border.all(color: Colors.indigo),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isActive ? Colors.white : Colors.indigo,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

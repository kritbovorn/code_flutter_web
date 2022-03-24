import 'package:beginner/temperature_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Smart Home App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 18, left: 24, right: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Hi John',
                    style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  RotatedBox(
                    quarterTurns: 135,
                    child: Icon(
                      Icons.bar_chart_rounded,
                      size: 28,
                      color: Colors.indigo,
                    ),
                  )
                ],
              ),

              Expanded(  
                child: ListView( 
                  physics: const BouncingScrollPhysics(), 
                  children: [
                    
                    const SizedBox(height: 32,),
                    Center(
                      child: Image.asset(
                        'assets/images/banner.png',
                        scale: 1.2,
                      ),
                    ),
                    const SizedBox(height: 16,),
                    const Center(  
                      child: Text(  
                        'Smart Home',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 48,),
                    const Text(  
                      'SERVICES',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 16,),

                    Row(  
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _cardMenu(
                          title: 'ENERGY',
                          icon: 'assets/images/energy.png',
                        ),
                        _cardMenu(
                          color: Colors.indigoAccent,
                          fontColor: Colors.white,
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const TemperaturePage()));
                          },
                          title: 'TEMPERATURE',
                          icon: 'assets/images/temperature.png',
                        ),
                      ],
                    ),

                    const SizedBox(height: 28,),

                    Row(  
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _cardMenu(
                          title: 'WATER',
                          icon: 'assets/images/water.png',
                        ),
                        _cardMenu(
                          title: 'ENTERTAINMENT',
                          icon: 'assets/images/entertainment.png',
                        ),
                      ],
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

  Widget _cardMenu({
    required String title,
    required String icon,
    VoidCallback? onTap,
    Color color = Colors.white,
    Color fontColor = Colors.grey,
  }) {
    return GestureDetector(  
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 36),
        width: 156,
        decoration: BoxDecoration(  
          color: color,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(  
          children: [
            Image.asset(
              icon,
            ),

            const SizedBox(height: 10,),

            Text(
              title,
              style: TextStyle(  
                color: fontColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

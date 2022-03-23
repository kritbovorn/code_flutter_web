import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      title: 'Flutter Login Web',
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: ListView(
        children: [
          const Menu(),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 35),
              child: const Content()),
        ],
      ),
    );
  }
}

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Row(
              children: [
                const Expanded(
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _menuItem("Home"),
                      _menuItem('About Us'),
                      _menuItem('Contact'),
                      _menuItem('Help'),
                    ],
                  ),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                const Expanded(
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _menuItem('Sign In', isActive: true),
                      _registerButton(),
                    ],
                  ),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _menuItem(String title, {bool isActive = false}) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            color: isActive ? Colors.deepPurple : Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        isActive
            ? Container(
                width: 24,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(30),
                ),
              )
            : const SizedBox(),
      ],
    );
  }

  Widget _registerButton() {
    return Container(
      // width: 30,
      // height: 8,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 230, 228, 228),
              spreadRadius: 4,
              blurRadius: 4,
            ),
          ]),
      child: const Text(
        'Register',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: SizedBox(),
        ),
        Expanded(
          flex: 8,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Sign In to\nMy Application',
                        style: TextStyle(
                            fontSize: 45, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "If you don't have an account",
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          Text(
                            "You can",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Register Here !',
                            style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Image.asset(
                        'assets/images/illustration-2.png',
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(34.0),
                  child: Image.asset(
                    'assets/images/illustration-1.png',
                  ),
                ),
              ),
              Expanded(
                child: _formLogin(),
              )
            ],
          ),
        ),
        const Expanded(
          child: SizedBox(),
        ),
      ],
    );
  }

  Widget _formLogin() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Email or Phone number',
              fillColor: Colors.blueGrey[50],
              filled: true,
              labelStyle: const TextStyle(fontSize: 10),
              contentPadding: const EdgeInsets.only(left: 30),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blueGrey),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Password',
              counterText: 'Forgot Password?',
              suffixIcon: const Icon(
                Icons.visibility_off_outlined,
                color: Colors.grey,
              ),
              fillColor: Colors.blueGrey[50],
              filled: true,
              labelStyle: const TextStyle(fontSize: 10),
              contentPadding: const EdgeInsets.only(left: 30),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blueGrey),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              onPrimary: Colors.white,
              shadowColor: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
              minimumSize: const Size(double.infinity, 55),
            ),
            child: const Text('Sign In'),
            onPressed: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              Expanded(
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Or continue with'),
              ),
              Expanded(
                child: Divider(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _loginWithButton('assets/images/google.png', isActive: true),
              _loginWithButton('assets/images/github.png', isActive: true),
              _loginWithButton('assets/images/facebook.png', isActive: true),
            ],
          ),
        ],
      ),
    );
  }

  Widget _loginWithButton(String image, {bool isActive = false}) {
    return Container(
      width: 80,
      height: 60,
      decoration: isActive
          ? BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 218, 216, 216),
                    spreadRadius: 4,
                    blurRadius: 5,
                  )
                ]
              
              )
          : BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey),
            ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Image.asset(
          image,
          // fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}

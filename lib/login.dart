import 'package:firstproject/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPg extends StatelessWidget {
  const LoginPg({super.key});

  @override
  Widget build(BuildContext context) {
    final _userctrl = TextEditingController();
    final _passctrol = TextEditingController();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Username',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          TextFormField(
            controller: _userctrl,
            decoration: InputDecoration(),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Text(
            'Password',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          TextFormField(
            controller: _passctrol,
            decoration: InputDecoration(),
            style: TextStyle(fontSize: 20),
          ),
          ElevatedButton(
              onPressed: () {
                if ((_userctrl.text.toString() == 'username') &
                    (_passctrol.text.toString() == 'password')) {
                  Get.to(() => HomePg(_userctrl.text.toString(),_passctrol.text.toString()));
                } else
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Wrong User and Pass'),
                  ));
              },
              child: Text(
                'Login',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              )),
        ],
      ),
    );
  }
}

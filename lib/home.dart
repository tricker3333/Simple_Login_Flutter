import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomePg extends StatelessWidget {
  var uname;
  var upass;

  HomePg(this.uname, this.upass);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text('Home Pg'),
          ),
          SizedBox(
            height: 50,
          ),
          Text('Welcome = $uname and Pass = $upass',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500)),
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text(
                'Back',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ))
        ],
      ),
    );
  }
}

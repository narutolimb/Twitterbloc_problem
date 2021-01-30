import 'package:flutter/material.dart';
import 'package:flutter_list_26_1/modules/home/home_screen.dart';

class screenOne extends StatelessWidget {
  var nameController = TextEditingController();
  var name = '';

  var emailController = TextEditingController();
  var email = '';

  var phoneController = TextEditingController();
  var phone = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Image.asset(
            'images/Twitter_logo.png',
            fit: BoxFit.cover,
            height: 20.0,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Center(
          child: Column(
            children: [
              Container(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Create your account',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 33.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            // focusedBorder: UnderlineInputBorder(
                            //   borderSide: BorderSide(
                            //     color: Colors.teal,
                            //   ),
                            // ),
                            hintText: 'Name',
                            // border: InputBorder.none,
                          ),
                          controller: nameController,
                          keyboardType: TextInputType.name,
                          style: TextStyle(
                            fontSize: 19.0,
                          ),
                        ),
                        SizedBox(
                          height: 60.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            // focusedBorder: UnderlineInputBorder(
                            //   borderSide: BorderSide(
                            //     color: Colors.teal,
                            //   ),
                            // ),
                            hintText: 'Email adress',
                            // border: InputBorder.none,
                          ),
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                            fontSize: 19.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Phone number',
                          ),
                          keyboardType: TextInputType.phone,
                          controller: phoneController,
                          style: TextStyle(
                            fontSize: 19.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 1.0,
                color: Colors.grey[300],
                width: double.infinity,
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.blue),
                    height: 35,
                    width: 70,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => homeScreen()),
                        );
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

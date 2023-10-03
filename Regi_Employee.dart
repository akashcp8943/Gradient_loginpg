import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dob_regi extends StatefulWidget {
  const Dob_regi({super.key});

  @override
  State<Dob_regi> createState() => _Dob_regiState();
}

class _Dob_regiState extends State<Dob_regi> {
  String dob = ''; // Date of Birth
  String? genders; // Gender

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != DateTime.now()) {
      setState(() {
        dob = picked.toString().split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register Employee"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: [
            Form(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 22,right: 22,top: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter your name",
                        // enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.orange))
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, right: 22, left: 22),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Text(
                                dob.isEmpty ? 'Date of Birth' : dob,
                                style: TextStyle(color: dob.isEmpty ? Colors.grey : Colors.black),
                              ),
                              IconButton(
                                icon: Icon(Icons.calendar_today),
                                onPressed: () {
                                  _selectDate(context);
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 5,right: 22,left: 22),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter your Phone number",
                      ),
                      maxLength: 10,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Cannot be empty';
                        } else if (value.length != 10) {
                          return 'Must be 10 characters long';
                        }
                        return null;
                      },
                    ),
                  ),
                  ListTile(
                    title: Row(
                      children: [

                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                value: 'Male',
                                groupValue: genders,
                                onChanged: (rad) {
                                  setState(() {
                                    genders = rad as String?;
                                  });
                                },
                              ),
                              Text('Male'),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                value: 'Female',
                                groupValue: genders,
                                onChanged: (rad) {
                                  setState(() {
                                    genders = rad as String?;
                                  });
                                },
                              ),
                              Text('Female'),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                value: 'Other',
                                groupValue: genders,
                                onChanged: (rad) {
                                  setState(() {
                                    genders = rad as String?;
                                  });
                                },
                              ),
                              Text('Other'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(top: 0,right: 22,left: 22),
                    child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 4,
                      decoration: InputDecoration(
                        labelText: "Address",
                        hintText: "Enter Address",
                        border: InputBorder.none, // Remove border
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your address';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,right: 22,left: 22),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter highest qualification",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your highest qualification';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10,right: 22,left: 22),
                    child: TextFormField(

                      decoration: InputDecoration(
                        hintText: "Enter Username",
                      ),
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a username';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10,right: 22,left: 22),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      maxLength: 10,
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a password';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0,right: 22,left: 22),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Email id",
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email is required';
                        }
                        final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,}$');
                        if (!emailRegex.hasMatch(value)) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10,right: 22,left: 22),
                    child: ElevatedButton(
                      onPressed: () {

                      },
                      child: Text(
                        "Register",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary:  Color(0xFFFFA756),
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                        textStyle: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


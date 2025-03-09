import 'package:flutter/material.dart';
import 'package:flutter_application/models/input_form.dart';
import 'package:flutter_application/models/form_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  bool _isPassword = false;
  bool _isConfirmPassword = false;
  late List<Map<String, dynamic>> _formInput;
  final _formKey = GlobalKey<FormState>();
  late String passwordInput;

  @override
  void initState() {
    super.initState();
    _formInput = getFormInput(
      nameController: _nameController,
      emailController: _emailController,
      phoneController: _phoneController,
      passwordController: _passwordController,
      confirmPasswordController: _confirmPasswordController,
    );
  }

  void _handleSubmit() {
    if (_formKey.currentState!.validate()) {
      String jsonData = getFormData(
        nameController: _nameController,
        emailController: _emailController,
        phoneController: _phoneController,
        passwordController: _passwordController,
        confirmPasswordController: _confirmPasswordController,
      );
      print(jsonData);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Text Field",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: _formInput.map((data) {
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: TextFormField(
                          autofocus: data["name"] == "Name" ? true : false,
                          obscureText: data["name"] == "Password" ||
                                  data["name"] == "Confirm Password"
                              ? data["name"] == "Password"
                                  ? !_isPassword
                                  : !_isConfirmPassword
                              : false,
                          keyboardType: data["name"] == "Phone Number"
                              ? TextInputType.number
                              : TextInputType.text,
                          decoration: InputDecoration(
                            labelText: data["name"],
                            labelStyle: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                            border: OutlineInputBorder(),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 2,
                              ),
                            ),
                            prefixIcon: Icon(data["prefix_icon"]),
                            prefixIconColor: WidgetStateColor.resolveWith(
                                (Set<WidgetState> states) {
                              if (states.contains(WidgetState.focused)) {
                                return Colors.blue;
                              }
                              return Colors.grey;
                            }),
                            suffixIcon: data["name"] == "Password" ||
                                    data["name"] == "Confirm Password"
                                ? IconButton(
                                    onPressed: () {
                                      setState(() {
                                        data["name"] == "Password"
                                            ? _isPassword = !_isPassword
                                            : _isConfirmPassword =
                                                !_isConfirmPassword;
                                      });
                                    },
                                    icon: Icon(
                                      data["name"] == "Password"
                                          ? _isPassword
                                              ? Icons.visibility
                                              : Icons.visibility_off
                                          : _isConfirmPassword
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                    ),
                                  )
                                : null,
                            suffixIconColor: WidgetStateColor.resolveWith(
                                (Set<WidgetState> states) {
                              if (states.contains(WidgetState.focused)) {
                                return Colors.blue;
                              }
                              return Colors.grey;
                            }),
                          ),
                          controller: data["controller"],
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "${data["name"]} can't be empty";
                            }

                            if (data["name"] == "Password") {
                              passwordInput = value;
                            }

                            if (data["name"] == "Confirm Password" &&
                                passwordInput != value) {
                              return "Password and confirm password do not match";
                            }

                            return null;
                          },
                        ),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    onPressed: () {
                      _handleSubmit();
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

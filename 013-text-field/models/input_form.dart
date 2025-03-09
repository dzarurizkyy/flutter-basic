import 'package:flutter/material.dart';

List<Map<String, dynamic>> getFormInput({
  required TextEditingController nameController,
  required TextEditingController emailController,
  required TextEditingController phoneController,
  required TextEditingController passwordController,
  required TextEditingController confirmPasswordController,
}) {
  return [
    {
      "name": "Name",
      "prefix_icon": Icons.person,
      "controller": nameController,
    },
    {
      "name": "Email",
      "prefix_icon": Icons.email,
      "controller": emailController,
    },
    {
      "name": "Phone Number",
      "prefix_icon": Icons.phone,
      "controller": phoneController,
    },
    {
      "name": "Password",
      "prefix_icon": Icons.password,
      "controller": passwordController,
    },
    {
      "name": "Confirm Password",
      "prefix_icon": Icons.password,
      "controller": confirmPasswordController,
    },
  ];
}

import 'dart:convert';
import 'package:flutter/material.dart';

String getFormData({
  required TextEditingController nameController,
  required TextEditingController emailController,
  required TextEditingController phoneController,
  required TextEditingController passwordController,
  required TextEditingController confirmPasswordController,
}) {
  Map<String, String> formData = {
    "name": nameController.text,
    "email": emailController.text,
    "phone": phoneController.text,
    "password": passwordController.text,
    "confirm_password": confirmPasswordController.text,
  };

  return jsonEncode(formData);
}

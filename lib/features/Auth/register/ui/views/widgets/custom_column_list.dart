import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:market/core/utils/extensions.dart';
import 'package:market/core/widgets/custom_text_form_field.dart';
import 'package:market/features/Auth/register/ui/views/widgets/custom_column.dart';

class CustomColumnList extends StatelessWidget {
  const CustomColumnList({
    super.key,
    required this.passwordController,
    required this.confirmController,
  });

  final TextEditingController passwordController;
  final TextEditingController confirmController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomColumn(
            upperText: 'Your Name',
            customTextFromField: CustomTextFromField(
                validator: (value) {
                  if (value!.isEmpty || value.isValidName) {
                    return "Enter a valid name";
                  }
                  return null;
                },
                prefixIcon: FontAwesomeIcons.circleUser,
                hintText: 'Full Name')),
        CustomColumn(
            upperText: 'User name',
            customTextFromField: CustomTextFromField(
                validator: (value) {
                  if (value!.isEmpty || !value.isValidName) {
                    return "Enter a valid name";
                  }
                  return null;
                },
                prefixIcon: FontAwesomeIcons.user,
                hintText: 'User name')),
        CustomColumn(
            upperText: 'Phone Number',
            customTextFromField: CustomTextFromField(
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value!.isEmpty || !value.isValidNumber) {
                    return "Enter a valid number";
                  }
                  return null;
                },
                prefixIcon: FontAwesomeIcons.mobileScreen,
                hintText: '01069262286')),
        CustomColumn(
            upperText: 'Email',
            customTextFromField: CustomTextFromField(
                validator: (value) {
                  if (value!.isEmpty || !value.isValidEmail) {
                    return "Enter a valid email";
                  }
                  return null;
                },
                prefixIcon: Icons.email_outlined,
                hintText: 'You@gmail.com')),
        CustomColumn(
            upperText: 'Password',
            customTextFromField: CustomTextFromField(
                controller: passwordController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter a valid Password';
                  }
                  if (value.length <= 6) {
                    return 'Password must be at least 6 charcter';
                  }
                  return null;
                },
                prefixIcon: Icons.lock_outline_rounded,
                suffixIcon: Icons.visibility,
                hintText: 'Password Here')),
        CustomColumn(
          upperText: 'Confirm Password',
          customTextFromField: CustomTextFromField(
              controller: confirmController,
              validator: (value) {
                if (passwordController.text != confirmController.text) {
                  return "Your Password doesn't match";
                }
                if (value!.isEmpty) {
                  return 'Enter a valid Password';
                }
                if (value.length <= 6) {
                  return 'Password must be at least 6 charcter';
                }
                return null;
              },
              prefixIcon: Icons.lock_outline_rounded,
              suffixIcon: Icons.visibility,
              hintText: 'Password Here again'),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market/core/routes/routes.dart';
import 'package:market/core/themes/colors.dart';
import 'package:market/core/themes/styles.dart';
import 'package:market/core/utils/extensions.dart';
import 'package:market/core/widgets/custom_button.dart';
import 'package:market/core/widgets/custom_text_form_field.dart';
import 'package:market/features/Auth/otp/ui/views/widgets/app_bar.dart';
import 'package:market/features/Auth/register/ui/views/widgets/custom_column.dart';

class CustomForgetPassword extends StatelessWidget {
  final String imageAsset;
  final String description;
  final String upperText;
  final String? hiddenText;
  final IconData prefixIcon;
  final String hintText;
  final String routeName;
  const CustomForgetPassword({
    Key? key,
    required this.imageAsset,
    required this.description,
    required this.upperText,
    required this.prefixIcon,
    required this.hintText,
    this.hiddenText,
    required this.routeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(context, 'Forget Password'),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35.0, bottom: 22),
            child: SvgPicture.asset(
              imageAsset,
              width: 343.52,
              height: 256,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 47, vertical: 22),
            child: Text(
              description,
              style: Styles.textStyle14,
            ),
          ),
          CustomColumn(
            upperText: upperText,
            customTextFromField: CustomTextFromField(
              keyboardType: TextInputType.phone,
              validator: (value) {
                if (value!.isEmpty || !value.isValidNumber) {
                  return "Enter a valid number";
                }
                return null;
              },
              prefixIcon: prefixIcon,
              hintText: hintText,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: CustomButton(
                text: 'Send Code',
                onPressed: () {
                  Navigator.pushNamed(context, routeName);
                }),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.forgetPasswordWithEmail);
            },
            child: Text(
              hiddenText ?? '',
            style: Styles.textStyle16.copyWith(color: buttonColor),
            ),
          )
        ],
      ),
    );
  }
}

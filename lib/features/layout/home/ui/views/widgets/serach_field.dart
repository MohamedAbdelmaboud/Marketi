import 'package:flutter/material.dart';
import 'package:market/core/themes/colors.dart';
import 'package:market/core/themes/styles.dart';

class SerachField extends StatelessWidget {
  const SerachField({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffD9E6FF), width: 2),
          borderRadius: BorderRadius.circular(14),
          color: const Color(0xFFFFFFFF)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(Icons.search),
          const SizedBox(width: 15),
          Expanded(
            child: TextField(
                onChanged: (value) {},
                decoration: const InputDecoration(
                  hintText: 'What are you looking for ?',
                  hintStyle: Styles.textStyle14,
                  border: InputBorder.none,
                )),
          ),
          Container(
            height: 25,
            width: 1.5,
            color: Colors.grey,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.tune_outlined,
                color: primaryColor,
              ))
        ],
      ),
    );
  }
}

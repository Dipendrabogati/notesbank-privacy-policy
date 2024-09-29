import 'package:flutter/material.dart';
import 'package:my_privacy_policy/Constants/constants.dart';

Widget privacyPolicyPoint(
    {required String point, required String message, required int index}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$index.",
              style: AppConstants.textStyle(fontWeight: FontWeight.w600)),
          const SizedBox(
            width: 10,
          ),
          Text(point,
              style: AppConstants.textStyle(
                  fontWeight: FontWeight.w600, fontSize: 18)),
        ],
      ),
      Text(message, style: AppConstants.textStyle()),
      const SizedBox(
        height: 20,
      ),
    ],
  );
}

import 'package:flutter/material.dart';
import 'package:prices_dinamica/constants/components.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: primary,
      ),
    );
  }
}

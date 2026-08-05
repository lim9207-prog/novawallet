import 'package:flutter/material.dart';
import '../widgets/primary_button.dart';
import 'recovery_phrase_screen.dart';

class SecurityScreen extends StatelessWidget {
  const SecurityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 28,
            vertical: 24,
          ),
          child: Column(
            children: [
              const Spacer(),

              const Icon(
                Icons.shield_outlined,
                size: 90,
                color: Colors.black,
              ),

              const SizedBox(height: 30),

              const Text(
                "Protect Your Assets",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Your Recovery Phrase is the only key\n"
                "to your digital assets.\n\n"
                "Keep it safe.\n"
                "Never share it.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black87,
                  height: 1.6,
                ),
              ),

              const Spacer(),

              PrimaryButton(
                text: "Continue",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const RecoveryPhraseScreen(),
                    ),
                  );
                },
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout Design 02',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF141E20),
        useMaterial3: true,
      ),
      home: const SecondaryNumbersScreen(),
    );
  }
}

class SecondaryNumbersScreen extends StatelessWidget {
  const SecondaryNumbersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF141E20),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Section Header: "Secondary Numbers"
              const Text(
                'Secondary Numbers',
                style: TextStyle(
                  color: Color(0xFF98A6B8),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.2,
                ),
              ),
              const SizedBox(height: 18),

              // First Card: +1 (555) 987-6543
              _buildNumberCard(
                phoneNumber: '+1 (555) 987-6543',
                subtitle: 'Home • Added 2mo ago',
              ),
              const SizedBox(height: 16),

              // Second Card: +44 20 7123 4567
              _buildNumberCard(
                phoneNumber: '+44 20 7123 4567',
                subtitle: 'Work • Unverified',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNumberCard({
    required String phoneNumber,
    required String subtitle,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20.0),
      decoration: BoxDecoration(
        color: const Color(0xFF1C2627),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.16),
          width: 1.2,
        ),
        boxShadow: [
          // Subtle bottom glow highlight
          BoxShadow(
            color: Colors.white.withValues(alpha: 0.22),
            offset: const Offset(0, 3),
            blurRadius: 8,
            spreadRadius: -1,
          ),
          // Ambient drop shadow
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.5),
            offset: const Offset(0, 5),
            blurRadius: 12,
          ),
        ],
      ),
      child: Row(
        children: [
          // Circular Phone Icon using Container and Icon
          Container(
            width: 52,
            height: 52,
            decoration: const BoxDecoration(
              color: Color(0xFF273233),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.phone,
              color: Color(0xFF98A6B8),
              size: 24,
            ),
          ),
          const SizedBox(width: 16),

          // Details Column: Phone number & Subtitle
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  phoneNumber,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.2,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Color(0xFF8A97A6),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),

          // Action Icons Row: Edit & Delete
          const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.edit,
                color: Color(0xFF98A6B8),
                size: 23,
              ),
              SizedBox(width: 20),
              Icon(
                Icons.delete,
                color: Color(0xFF98A6B8),
                size: 23,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:ui';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3D4D4), // warna latar belakang sesuai warna E3D4D4
      body: Stack(
        children: [
          // Setengah lingkaran di sudut kiri atas
          Positioned(
            top: -90,
            left: -90,
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                color: const Color(0xFFDDA74C).withOpacity(0.5),
                shape: BoxShape.circle,
                backgroundBlendMode: BlendMode.overlay,
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          // Lingkaran di sebelah kanan logo
          Positioned(
            top: MediaQuery.of(context).size.height / 2 - 40, // Sesuaikan posisi vertikal lingkaran
            right: -120, // Membuat lingkaran hanya setengah terlihat di sebelah kanan
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                color: const Color(0xFFDDA74C).withOpacity(0.5),
                shape: BoxShape.circle,
                backgroundBlendMode: BlendMode.overlay,
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          // Konten tengah (Logo dan teks)
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/splashscreen1.png', // ganti dengan path gambar asli
                  height: 100,
                ),
                const SizedBox(height: 20),
                // Teks CoffeeShop
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                    ),
                    children: [
                      TextSpan(
                        text: 'Sejalan',
                        style: TextStyle(color: Color(0xFF6F5343)), // warna teks "Sejalan"
                      ),
                      TextSpan(
                        text: 'Kopi',
                        style: TextStyle(color: Color(0xFFC3987E)), // warna teks "Kopi"
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
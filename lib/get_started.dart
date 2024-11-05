import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF192438), // Warna gradien atas
              Color(0xFF313139), // Warna gradien bawah
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const Spacer(),
            const Spacer(), // Spacer di atas untuk mendorong gambar ke bawah
            // Gambar kopi
            Image.asset(
              'assets/images/get_started.png',
              width: double.infinity,
              height: 336,
            ),
            const SizedBox(height: 20),
            // Teks judul
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Enjoy quality brew with the finest of flavours',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Teks deskripsi
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'The best gain, the finest roast, the powerful flavor.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 14,
                  color: Colors.white70,
                ),
              ),
            ),
            const Spacer(), // Spacer di bawah untuk mendorong konten ke atas
            // Tombol Get Started
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF854C1F), // Warna tombol sesuai 854C1F
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  // Aksi saat tombol diklik
                },
                child: const Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

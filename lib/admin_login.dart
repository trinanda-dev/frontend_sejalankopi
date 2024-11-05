import 'package:flutter/material.dart';

class AdminLoginScreen extends StatefulWidget {
  const AdminLoginScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AdminLoginScreenState createState() => _AdminLoginScreenState();
}

class _AdminLoginScreenState extends State<AdminLoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF192438),
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, color: Colors.white),
        onPressed: () {
          Navigator.pop(context);
        }),
      ),
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo Kopi
              Image.asset(
                'assets/images/splashscreen1.png', // Ganti dengan path gambar logo
                height: 170,
              ),
              const SizedBox(height: 20),
              // Teks Judul
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'Sora',
                    fontWeight: FontWeight.w400,
                  ),
                  children: [
                    TextSpan(
                      text: 'Sejalan',
                      style: TextStyle(color: Color(0xFF854C1F)),
                    ),
                    TextSpan(
                      text: 'Kopi',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              // Input Email
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  controller: emailController,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFF192438),
                    hintText: 'admin@gmail.com',
                    hintStyle: const TextStyle(color: Colors.white70, fontFamily: 'Sora'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Input Password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  style: const TextStyle(
                    color: Colors.white, 
                    fontFamily: 'Sora',
                    fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFF192438),
                    hintText: '********',
                    hintStyle: const TextStyle(color: Colors.white70),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              // Tombol Signin
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF8C4D21), // Warna tombol
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadowColor: const Color(0xFF8C4D21), // Warna shadow
                    elevation: 8,
                  ),
                  onPressed: () {
                    // Logika untuk tombol signin
                  },
                  child: const Center(
                    child: Text(
                      'Signin',
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
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'admin_login.dart'; // Import halaman AdminLoginScreen
import 'kasir_login.dart'; // Import halaman KasirLoginScreen
import 'staff_dapur_login.dart'; // Import halaman StaffDapurLoginScreen
import 'home.dart'; // Import halaman HomeScreen untuk pelanggan

class RoleScreen extends StatefulWidget {
  const RoleScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RoleScreenState createState() => _RoleScreenState();
}

class _RoleScreenState extends State<RoleScreen> {
  // Variabel untuk menyimpan peran yang dipilih
  String selectedRole = 'Admin';

  void navigateToRoleScreen() {
    // Logika untuk mengarahkan ke halaman sesuai peran
    if (selectedRole == 'Admin') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const AdminLoginScreen()),
      );
    } else if (selectedRole == 'Staff Dapur') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const StaffDapurLoginScreen()),
      );
    } else if (selectedRole == 'Kasir') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const KasirLoginScreen()),
      );
    } else if (selectedRole == 'Pelanggan') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }
  }

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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo Kopi
              Image.asset(
                'assets/images/splashscreen1.png', // Ganti dengan path gambar logo
                height: 120,
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
              // Teks Instruksi
              const Text(
                'Silakan pilih peran untuk masuk',
                style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 16,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: 20),
              // Dropdown untuk memilih peran
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                margin: const EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                  color: const Color(0xFF192438),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButtonFormField<String>(
                  value: selectedRole,
                  dropdownColor: const Color(0xFF313139),
                  icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    filled: true,
                    fillColor: Colors.transparent,
                  ),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Sora',
                  ),
                  items: <String>['Admin', 'Staff Dapur', 'Kasir', 'Pelanggan']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: const TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedRole = newValue!;
                    });
                  },
                ),
              ),
              const SizedBox(height: 40),
              // Tombol Masuk
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF8C4D21), // Warna tombol
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadowColor: const Color(0xFF8C4D21),
                    elevation: 8,
                  ),
                  onPressed: navigateToRoleScreen, // Memanggil fungsi navigateToRoleScreen
                  child: const Center(
                    child: Text(
                      'Masuk',
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

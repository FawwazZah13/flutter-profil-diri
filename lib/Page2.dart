import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gambar Latar Belakang
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background.jpeg'), // Ganti dengan gambar latar belakang Anda
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('images/pp.jpg'), // Ganti dengan gambar profil Anda
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Muhammad Fawwaz Zahran',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0), // Teks putih untuk kontras yang lebih baik
                    ),
                  ),
                  const SizedBox(height: 20),
                  buildSection(
                    title: 'About',
                    content:
                        'Hi Friends, i`m Muhammad Fawwaz Zahran I was born in Bogor 13 May 2007, currently I am studying at Vocational School Wikrama Bogor.',
                    backgroundColor: Color.fromARGB(248, 255, 255, 255).withOpacity(0.5),
                  ),
                  buildSection(
                    title: 'History',
                    content:
                        'I was born in a city located in West Java, namely Bogor, on May 13 2007. I have Javanese and Sundanese lineage which comes from my parents.',
                      backgroundColor: Color.fromARGB(248, 255, 255, 255).withOpacity(0.5),
                  ),
                  buildSkillSection(
                    title: 'Skill',
                    skills: ['HTML', 'CSS', 'JAVASCRIPT'],
                    backgroundColor: Color.fromARGB(248, 255, 255, 255).withOpacity(0.5),

                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Fungsi untuk membuat section umum
  Widget buildSection({
    required String title,
    required String content,
    required Color? backgroundColor,
  }) {
    return Container(
      width: double.infinity, // Lebar penuh untuk semua kartu
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      constraints: BoxConstraints(
        minHeight: 150, // Tinggi minimum agar ukurannya seragam
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black, // Warna teks untuk kontras yang lebih baik
            ),
          ),
          const SizedBox(height: 8),
          Text(
            content,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  // Fungsi khusus untuk membuat section Skill
  Widget buildSkillSection({
    required String title,
    required List<String> skills,
    required Color? backgroundColor,
  }) {
    return Container(
      width: double.infinity, // Lebar penuh untuk semua kartu
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      constraints: BoxConstraints(
        minHeight: 150, // Tinggi minimum agar ukurannya seragam
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black, // Warna teks untuk kontras yang lebih baik
            ),
          ),
          const SizedBox(height: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: skills.map((skill) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: Text(
                  ' $skill',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Page2(),
  ));
}

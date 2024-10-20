import 'package:flutter/material.dart';
import 'main.dart'; // Import halaman HomePage untuk menampilkan data input

class FormInputPage extends StatefulWidget {
  @override
  _FormInputPageState createState() => _FormInputPageState();
}

class _FormInputPageState extends State<FormInputPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _roleController = TextEditingController();
  final TextEditingController _sekolahController = TextEditingController();
  final TextEditingController _aboutMeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Data Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Nama',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _roleController,
              decoration: InputDecoration(
                labelText: 'Role',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _sekolahController,
              decoration: InputDecoration(
                labelText: 'Sekolah',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _aboutMeController,
              decoration: InputDecoration(
                labelText: 'About Me',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman HomePage dan kirim data inputan
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(
                      name: _nameController.text,
                      role: _roleController.text,
                      sekolah: _sekolahController.text,
                      aboutMe: _aboutMeController.text,
                    ),
                  ),
                );
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

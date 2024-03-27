import 'package:flutter/material.dart';

class HistoryReservasi extends StatelessWidget {
  const HistoryReservasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFC1F4FF), Colors.white],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 195,
            color: const Color(0xFF0D0A92),
          ),
          Positioned(
            top: 120,
            left: 25,
            child: Row( // Menggunakan Row untuk menempatkan judul dan ikon kalender secara horizontal
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Reservasi Saya',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 150.00),
                Icon(
                  Icons.calendar_month,
                  size: 30.0,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Positioned(
            top: 230,
            left: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('SAYA SENDIRI'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                const SizedBox(width: 10.00),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('ORANG LAIN'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 280,
            left: 20,
            right: 20,
            child: GestureDetector(
              onTap: () {
                // Handle tap on reservation history
              },
              child: Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Riky Alfandy',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Rabu, 14 Feb 2024, 12:30 - 12:50',
                              style: TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                            Text(
                              'dir. Abdul Halidz',
                              style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                            ),
                            Text(
                              'Specialist Kulit',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 280 + MediaQuery.of(context).size.height * 0.15, // Adjust position dynamically
            left: 16.0,
            right: 16.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'LIHAT HISTORI RESERVASI',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

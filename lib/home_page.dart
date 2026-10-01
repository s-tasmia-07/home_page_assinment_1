import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isEnrolled = false;
  bool isSearching = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7FB),

      appBar: AppBar(
        backgroundColor: const Color(0xFF263238),
        foregroundColor: Colors.white,
        elevation: 2,

        title: isSearching
            ? TextField(
                autofocus: true,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(
                    color: Colors.white70,
                  ),
                  border: InputBorder.none,
                ),
              )
            : Text(
                "Learning Hub",
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

        actions: [
          IconButton(
            icon: Icon(
              isSearching ? Icons.close : Icons.search,
            ),
            onPressed: () {
              setState(() {
                isSearching = !isSearching;
              });
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(22),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              Text(
                "Start Learning 🚀",
                style: GoogleFonts.montserrat(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF263238),
                ),
              ),

              const SizedBox(height: 8),

              Text(
                "Improve your skills and build amazing apps.",
                style: GoogleFonts.openSans(
                  fontSize: 15,
                  color: Colors.blueGrey,
                ),
              ),

              const SizedBox(height: 28),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(22),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 12,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(14),

                      decoration: BoxDecoration(
                        color: const Color(0xFFE0F2F1),
                        borderRadius: BorderRadius.circular(15),
                      ),

                      child: const Icon(
                        Icons.phone_android,
                        size: 35,
                        color: Color(0xFF00897B),
                      ),
                    ),

                    const SizedBox(height: 18),

                    Text(
                      "Flutter Development",
                      style: GoogleFonts.montserrat(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF263238),
                      ),
                    ),

                    const SizedBox(height: 10),

                    Text(
                      isEnrolled
                          ? "Your learning session is ready to begin!"
                          : "Learn Dart and Flutter by creating interactive mobile applications.",
                      style: GoogleFonts.openSans(
                        fontSize: 14,
                        height: 1.5,
                        color: Colors.blueGrey.shade700,
                      ),
                    ),

                    const SizedBox(height: 22),

                    SizedBox(
                      width: double.infinity,
                      height: 48,

                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isEnrolled = true;
                          });
                        },

                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF00897B),
                          foregroundColor: Colors.white,
                          elevation: 0,

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),

                        child: Text(
                          isEnrolled
                              ? "Enrolled ✓"
                              : "Join Course",
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              Text(
                "Learning Topics",
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF263238),
                ),
              ),

              const SizedBox(height: 15),

              Row(
                children: [
                  Expanded(
                    child: topicCard(
                      Icons.code,
                      "Dart",
                    ),
                  ),

                  const SizedBox(width: 12),

                  Expanded(
                    child: topicCard(
                      Icons.phone_android,
                      "Flutter",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget topicCard(IconData icon, String title) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),

        border: Border.all(
          color: const Color(0xFFE0E0E0),
        ),
      ),

      child: Column(
        children: [
          Icon(
            icon,
            size: 30,
            color: const Color(0xFF00897B),
          ),

          const SizedBox(height: 8),

          Text(
            title,
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

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
  bool isFavorite = false;

  final TextEditingController searchController =
      TextEditingController();

  final Color primary = const Color(0xFF344E8C);
  final Color accent = const Color(0xFF58BFA3);
  final Color background = const Color(0xFFF4F6FB);

  final List<Map<String, dynamic>> topics = [
    {
      'title': 'Dart Programming',
      'subtitle': 'Learn the basics of coding',
      'icon': Icons.code_rounded,
      'color': Color(0xFFDDE9FF),
    },
    {
      'title': 'Flutter Widgets',
      'subtitle': 'Create app interfaces',
      'icon': Icons.widgets_outlined,
      'color': Color(0xFFDDF4EA),
    },
    {
      'title': 'Creative Design',
      'subtitle': 'Explore colors and layouts',
      'icon': Icons.palette_outlined,
      'color': Color(0xFFFFEBD8),
    },
    {
      'title': 'Mini Projects',
      'subtitle': 'Practice your new skills',
      'icon': Icons.rocket_launch_outlined,
      'color': Color(0xFFF0E3FA),
    },
  ];

  void showMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,

      // App bar
      appBar: AppBar(
        backgroundColor: primary,
        foregroundColor: Colors.white,
        elevation: 0,
        title: isSearching
            ? TextField(
                controller: searchController,
                autofocus: true,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: 'Search topics...',
                  hintStyle: TextStyle(color: Colors.white70),
                  border: InputBorder.none,
                ),
              )
            : Text(
                'Code Garden',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
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
                if (!isSearching) {
                  searchController.clear();
                }
              });
            },
          ),
        ],
      ),

      // Navigation drawer
      drawer: Drawer(
        backgroundColor: background,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: primary),
              accountName: const Text('My Learning Space'),
              accountEmail: const Text('Learn something new every day'),
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person_outline,
                  size: 36,
                  color: Color(0xFF344E8C),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Home'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.menu_book_outlined),
              title: const Text('My Courses'),
              onTap: () {
                Navigator.pop(context);
                showMessage('Explore your course below.');
              },
            ),
            ListTile(
              leading: const Icon(Icons.favorite_border),
              title: const Text('Favorites'),
              onTap: () {
                Navigator.pop(context);
                showMessage(
                  isFavorite
                      ? 'Your course is in favorites.'
                      : 'You have not added a favorite yet.',
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text('About'),
              onTap: () {
                Navigator.pop(context);
                showMessage('A place to learn and grow.');
              },
            ),
          ],
        ),
      ),

      // Floating action button
      floatingActionButton: FloatingActionButton(
        backgroundColor: accent,
        foregroundColor: Colors.white,
        tooltip: 'Get encouragement',
        onPressed: () {
          showMessage('Keep learning. You are getting better!');
        },
        child: const Icon(Icons.chat_bubble_outline),
      ),

      // Main page
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),

            Text(
              'Hello, Learner! 🌱',
              style: GoogleFonts.poppins(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: primary,
              ),
            ),

            const SizedBox(height: 7),

            Text(
              'Turn your curiosity into coding skills.',
              style: GoogleFonts.poppins(
                fontSize: 13,
                color: Colors.blueGrey,
              ),
            ),

            const SizedBox(height: 25),

            // Featured course
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    primary,
                    const Color(0xFF627FC2),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(22),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Icon(
                      Icons.phone_android_rounded,
                      size: 35,
                      color: Color(0xFF9CE8D2),
                    ),
                  ),

                  const SizedBox(height: 18),

                  Text(
                    'Flutter Development',
                    style: GoogleFonts.poppins(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 9),

                  Text(
                    isEnrolled
                        ? 'Welcome aboard! Your learning journey has started.'
                        : 'Learn to build mobile applications with Dart and Flutter.',
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      height: 1.6,
                      color: Colors.white70,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Learning progress',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        isEnrolled ? 'Started' : 'Ready to begin',
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF9CE8D2),
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: LinearProgressIndicator(
                      value: isEnrolled ? 0.25 : 0,
                      minHeight: 7,
                      backgroundColor: Colors.white24,
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(
                        Color(0xFF9CE8D2),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  SizedBox(
                    width: double.infinity,
                    height: 47,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isEnrolled = !isEnrolled;
                        });

                        showMessage(
                          isEnrolled
                              ? 'You joined the Flutter course!'
                              : 'Course enrollment cancelled.',
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF9CE8D2),
                        foregroundColor: primary,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        isEnrolled
                            ? 'Enrolled ✓'
                            : 'Join the Course',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            // Learning topics
            Text(
              'Explore Your Path',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: primary,
              ),
            ),

            const SizedBox(height: 6),

            Text(
              'Choose a skill to explore.',
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: Colors.blueGrey,
              ),
            ),

            const SizedBox(height: 16),

            ...topics
                .where((topic) {
                  return (topic['title'] as String)
                      .toLowerCase()
                      .contains(searchController.text.toLowerCase());
                })
                .map((topic) {
              return Container(
                margin: const EdgeInsets.only(bottom: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: const Color(0xFFE5E9F2),
                  ),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(12),
                  leading: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: topic['color'] as Color,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      topic['icon'] as IconData,
                      color: primary,
                    ),
                  ),
                  title: Text(
                    topic['title'] as String,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: primary,
                    ),
                  ),
                  subtitle: Text(
                    topic['subtitle'] as String,
                    style: GoogleFonts.poppins(fontSize: 11),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                  ),
                  onTap: () {
                    showMessage(
                      'You selected ${topic['title']}.',
                    );
                  },
                ),
              );
            }),

            const SizedBox(height: 18),

            // Button examples
            Text(
              'Quick Actions',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: primary,
              ),
            ),

            const SizedBox(height: 14),

            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    showMessage('Time to practice coding!');
                  },
                  icon: const Icon(Icons.play_arrow_rounded),
                  label: const Text('Practice'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primary,
                    foregroundColor: Colors.white,
                  ),
                ),

                OutlinedButton.icon(
                  onPressed: () {
                    showMessage('Choose a topic from the list.');
                  },
                  icon: const Icon(Icons.explore_outlined),
                  label: const Text('Explore'),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: primary,
                    side: BorderSide(color: primary),
                  ),
                ),

                TextButton(
                  onPressed: () {
                    showMessage('Consistency is the key to learning.');
                  },
                  child: const Text('Tips'),
                ),

                IconButton.filledTonal(
                  tooltip: 'Favorite course',
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });

                    showMessage(
                      isFavorite
                          ? 'Added to favorites!'
                          : 'Removed from favorites.',
                    );
                  },
                  icon: Icon(
                    isFavorite
                        ? Icons.favorite
                        : Icons.favorite_border,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            // Motivation section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: const Color(0xFFDDF4EA),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.lightbulb_outline_rounded,
                    size: 32,
                    color: Color(0xFF24765D),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Text(
                      'Every small step counts. Keep practicing '
                      'and turn your ideas into real projects!',
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        height: 1.6,
                        color: const Color(0xFF285443),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 22),

            Center(
              child: Text(
                'Keep learning • Keep creating',
                style: GoogleFonts.poppins(
                  fontSize: 11,
                  color: Colors.blueGrey,
                ),
              ),
            ),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
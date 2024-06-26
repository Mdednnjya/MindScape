import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mindscape/ui/widgets/program_widget.dart';
import 'quitezone_intro_screen.dart';


class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 55.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 51),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Explore',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w800,
                      fontSize: 21,
                      letterSpacing: -0.41,
                      height: 1.3,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                    },
                    child: Image.asset(
                      'assets/images/search/Search.png',
                      width: 42,
                      height: 42,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 26),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 350,
                      height: 300,
                      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: const Color(0x87F7F7F),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/images/search/quitezone_asset.svg',
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(height: 32),
                          Text(
                            'Introducing QuiteZone',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                              letterSpacing: -0.41,
                              height: 1.3,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 16),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                showGeneralDialog(
                                  context: context,
                                  pageBuilder: (context, animation, secondaryAnimation) {
                                    return QuitezoneIntroScreen();
                                  },
                                  transitionBuilder: (context, animation, secondaryAnimation, child) {
                                    final tween = Tween(
                                      begin: Offset(0.0, 1.0),
                                      end: Offset.zero,
                                    );
                                    final curvedAnimation =
                                    CurvedAnimation(parent: animation, curve: Curves.fastEaseInToSlowEaseOut);
                                    return SlideTransition(
                                      position: tween.animate(curvedAnimation),
                                      child: child,
                                    );
                                  },
                                  transitionDuration: Duration(milliseconds: 575),
                                );
                              },
                              child: Text(
                                'Learn more >',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  letterSpacing: -0.31,
                                  height: 2.2,
                                  color: const Color(0xFF7F7F7F),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 33),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Meditation Programs',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                      letterSpacing: -0.41,
                      height: 1.3,
                    ),
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                      },
                      child: Text(
                        'View all',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          letterSpacing: -0.41,
                          height: 1.8,
                          color: const Color(0xFF5C5C5C),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProgramWidget(
                    assetPath: 'assets/images/search/self_confidance.svg',
                    text: 'Self Confidence >',
                    route: '/self-confidence',
                  ),
                  ProgramWidget(
                    assetPath: 'assets/images/search/relationship_asset.svg',
                    text: 'Relationship >',
                    route: '/relationship',
                  ),
                ],
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Podcast Programs',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                      letterSpacing: -0.41,
                      height: 1.3,
                    ),
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        print('Button Learn More clicked');
                      },
                      child: Text(
                        'View all',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          letterSpacing: -0.31,
                          height: 2.2,
                          color: const Color(0xFF7F7F7F),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProgramWidget(
                    assetPath: 'assets/images/search/peaceful_talk.svg',
                    text: 'Peaceful Talk >',
                    route: '/peaceful-talk',
                  ),
                  ProgramWidget(
                    assetPath: 'assets/images/search/self_grow.svg',
                    text: 'Self Grow >',
                    route: '/self-grow',
                  ),
                ],
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

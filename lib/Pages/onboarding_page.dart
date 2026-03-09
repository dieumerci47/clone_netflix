import 'package:clone_netflix/widgets/onboarding.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => OnboardingPageState();
}

class OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 80,
        leading: Image(image: AssetImage("assets/images/symbole.png")),
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "PRIVACY",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "SIGN IN",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: AlignmentGeometry.bottomCenter,
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: [
              Onboarding(
                titre: "Films et séries en illimité.",
                subtitle: "Regardez ce que vous voulez, quand vous voulez.",
                image: "assets/images/ob1.jpg",
              ),
              Onboarding(
                titre: "Téléchargez pour regarder hors ligne.",
                subtitle: "Emportez vos histoires partout avec vous.",
                image: "assets/images/ob2.jpg",
              ),
              Onboarding(
                titre: "Un profil pour chacun.",
                subtitle:
                    "Créez des expériences personnalisées pour toute la famille.",
                image: "assets/images/ob3.jpg",
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      margin: EdgeInsets.only(right: 5),
                      height: 10,
                      width: _currentPage == index ? 20 : 10,
                      decoration: BoxDecoration(
                        color: _currentPage == index ? Colors.red : Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Get Started"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
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

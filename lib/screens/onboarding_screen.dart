import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _pageController,

                  itemCount: demo_data.length, // Specify the number of onboarding pages
                  itemBuilder: (context, index) => OnboardingWidget(
                    image: demo_data[index].image,
                    title: demo_data[index].title,
                    description: demo_data[index].description,
                  ),
                ),
              ),
        

              
              SizedBox(
                height: 60,
                width: 60,
                child: ElevatedButton(
                  onPressed: () {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease,
                    );
                  },
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 30,
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    primary: Colors.red,
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

class OnBoard {
  final String image, title, description;

  OnBoard ({
    required this.image,
    required this.title,
    required this.description,
  });
}

final List<OnBoard> demo_data = [
  OnBoard(
    image: "assets/image/download.png",
    title: "IBF", 
    description: "The IBF is a voluntary membership non-profit corporation organized under the laws of the State of New Jersey by interested persons to obtain greater efficiency and uniformity in the supervision of professional boxing and to encourage and assist professional boxing. The organization promulgates rules, suggests standards for boxing guidance, sanctions title fights to establish champions, and prepares monthly ratings of the outstanding contenders in 17 weight classes. This information is shared with the press, the public, and all associate members and is posted on this website."),
  OnBoard(
    image: "assets/image/Wba-logo-488x488.jpg",
    title: "WBA", 
    description: "Our organization was born as the National Boxing Association (NBA) in 1921, in Rhode Island, as an entity devoted to the government and control of this professional activity, with limited jurisdiction in the United States. Boxing was the breach of the world at the time it worn out by wars and the economic crisis. During 41 years the National Boxing Association developed a very interesting and unquestionable work for the benefit of boxing. The NBA accomplished the heavyweight championships with world recognition like Dempsey-Firpo, Dempsey-Carpentier and the memorable fights big hands “The killer” against Tunney, in 1927. For the first time in USA, a radio transmission of boxing was made by initiative of J. Andrew White, who narrated the Packey O’Gatty and Frankie Burs fight from the Boyle’s Thirty Acres of New Jersey. That same night Jack Dempsey defeated Georges Carpentier."),
  OnBoard(
    image: "assets/image/World_Boxing_Council_logo.png",
    title: "WBC", 
    description: "The WBC was established as an initiative of the then President of Mexico, Adolfo López Mateos, to create an organization that would unify all the commissions of the world and  develop the expansion of boxing."),
];


class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Column(
        children: [
          const Spacer(),
          Image.asset(image, height: 280),
          const SizedBox(height: 20),
          Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            description,
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

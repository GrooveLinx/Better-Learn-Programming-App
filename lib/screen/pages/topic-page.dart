import 'package:code_quiz_v2/config/ads_helper.dart';
import 'package:code_quiz_v2/database/language-list.dart';
import 'package:code_quiz_v2/screen/pages/developer-page.dart';
import 'package:code_quiz_v2/widgets/language_grid.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mdi/mdi.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class TopicPage extends StatefulWidget {
  const TopicPage({Key key}) : super(key: key);

  @override
  _TopicPageState createState() => _TopicPageState();
}

class _TopicPageState extends State<TopicPage> {
  BannerAd _bannerAd;
  bool _isBannerAdReady = false;
  Future<InitializationStatus> _initGoogleMobileAds() {
    return MobileAds.instance.initialize();
  }

  @override
  void initState() {
    super.initState();
    _createBannerAd();
  }

  @override
  void dispose() {
    _bannerAd.dispose();
    super.dispose();
  }

  _createBannerAd() {
    _bannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(
            () {
              _isBannerAdReady = true;
            },
          );
        },
        onAdFailedToLoad: (ad, err) {
          print('Failed to load a banner ad: ${err.message}');
          _isBannerAdReady = false;
          ad.dispose();
        },
      ),
    );
    _bannerAd.load();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final aspectRatio = MediaQuery.of(context).size.aspectRatio;
    return Scaffold(
      backgroundColor: Color(0xffffffee),
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[200],
        elevation: 0,
        title: Text(
          'Programmer\'s Handbook',
          style: GoogleFonts.ubuntu(
            textStyle: TextStyle(
              color: Colors.brown[600],
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Mdi.developerBoard,
              size: 30,
              color: Colors.blueGrey,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DeveloperPage(),
                ),
              );
            },
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.lightGreen[200],
            ),
            height: height,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 0,
                ),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Learn once',
                            style: GoogleFonts.ubuntu(
                              textStyle: TextStyle(
                                color: Colors.blueGrey[800],
                                fontSize: 28,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Text(
                            'Program anywhere!',
                            style: GoogleFonts.ubuntu(
                              textStyle: TextStyle(
                                color: Colors.purple[400],
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    /*  SvgPicture.asset(
                      'images/dedicated-team.svg',
                      width: width / 3,
                      height: height / 5,
                    ), */
                    Image.asset(
                      'images/dev.png',
                      width: width * .5,
                      height: height * .25,
                      alignment: Alignment.centerRight,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * .01,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.amber[50],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        child: GridView.builder(
                          padding: EdgeInsets.fromLTRB(15, 15, 15, 25),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 25,
                            mainAxisSpacing: 25,
                            crossAxisCount: 2,
                            childAspectRatio: aspectRatio / .85,
                          ),
                          itemCount: language.length,
                          itemBuilder: (BuildContext context, int index) =>
                              LanguageGrid(
                            languageData: language[index],
                          ),
                        ),
                      ),
                      _isBannerAdReady
                          ? Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                width: _bannerAd.size.width.toDouble(),
                                height: _bannerAd.size.height.toDouble(),
                                child: AdWidget(ad: _bannerAd),
                              ),
                            )
                          : Spacer()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

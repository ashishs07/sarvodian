import 'package:flutter/material.dart';
//import 'package:firebase_admob/firebase_admob.dart';

//import '../app_id.dart' show appid;

class ContactPage extends StatelessWidget {
  /* @override
  State<StatefulWidget> createState() {
    return _ContactPageState();
  }
}

class _ContactPageState extends State<ContactPage> {*/
  /*static final MobileAdTargetingInfo targetingInfo =
      MobileAdTargetingInfo(testDevices: appid != null ? [appid] : null);

  BannerAd bannerAd;
  BannerAd _buildBanner() {
    return BannerAd(
        size: AdSize.banner,
        adUnitId: BannerAd.testAdUnitId,
        listener: (MobileAdEvent event) {
          print(event);
        });
  }

  @override
  void initState() {
    super.initState();

    FirebaseAdMob.instance.initialize(appId: FirebaseAdMob.testAppId);
    bannerAd = _buildBanner()..load();
  }

  @override
  void dispose() {
    super.dispose();
    bannerAd?.dispose();
  }*/

  @override
  Widget build(BuildContext context) {
    //bannerAd
    //..load()
    //..show();
    return Scaffold(
        appBar: AppBar(
          title: Text('Contact Us'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Mobile No +91 84390 65717',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Email - thisisjust@demo.email',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ));
  }
}

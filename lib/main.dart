import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HangOnPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class HangOnPage extends StatefulWidget {
  const HangOnPage({super.key, required this.title});
  final String title;

  @override
  State<HangOnPage> createState() => _HangOnPageState();
}

class _HangOnPageState extends State<HangOnPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset('images/errorScreens/17_Location Error.png', fit: BoxFit.cover, height: context.height()),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Hang on a sec..', style: secondaryTextStyle(size: 40, color: white)),
                48.height,
                Text('It seems you are in the middle of the ocean.', style: primaryTextStyle(size: 20, color: Colors.white54)),
                48.height,
                AppButton(
                  color: context.cardColor,
                  child: Text('REFRESH', style: boldTextStyle()).paddingSymmetric(horizontal: 32),
                  shapeBorder: RoundedRectangleBorder(borderRadius: radius(30)),
                  onTap: () {
                    toast('REFRESH');
                  },
                ),
                48.height,
              ],
            ).paddingAll(32),
          ],
        ),
      ),
    );
  }

}

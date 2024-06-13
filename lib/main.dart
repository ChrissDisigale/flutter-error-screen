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
            Image.asset('images/errorScreens/6_Error.png', fit: BoxFit.cover, height: context.height()),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Hmmm..', style: primaryTextStyle(size: 40, color: white)),
                32.height,
                Text(
                  'Something is wrong here...\n We\'ll fix it soon!',
                  style: primaryTextStyle(color: Colors.white54, size: 18),
                ),
                48.height,
                AppButton(
                  color: context.cardColor,
                  child: Text('HOME', style: boldTextStyle()).paddingSymmetric(horizontal: 32),
                  shapeBorder: RoundedRectangleBorder(borderRadius: radius(30)),
                  elevation: 10,
                  onTap: () {
                    toast('HOME');
                  },
                ),
              ],
            ).paddingAll(32),
          ],
        ),
      ),
    );
  }

}

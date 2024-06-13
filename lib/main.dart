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
      home: const NoConnectionPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class NoConnectionPage extends StatefulWidget {
  const NoConnectionPage({super.key, required this.title});
  final String title;

  @override
  State<NoConnectionPage> createState() => _NoConnectionPageState();
}

class _NoConnectionPageState extends State<NoConnectionPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset('images/errorScreens/13_Storage Not Enough.png', fit: BoxFit.cover, height: context.height()),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Not Enough Space', style: boldTextStyle(size: 20, color: Colors.black)),
                32.height,
                Text(
                  'You do not have enough storage left to save this file...',
                  style: primaryTextStyle(size: 20, color: Colors.blueGrey),
                ).paddingSymmetric(vertical: 8, horizontal: 8),
                32.height,
                AppButton(
                  child: Text('MANAGE', style: boldTextStyle(color: white)).paddingSymmetric(horizontal: 8),
                  shapeBorder: RoundedRectangleBorder(borderRadius: radius(30)),
                  color: Color(0xFF40588B),
                  onTap: () {
                    toast('MANAGE');
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

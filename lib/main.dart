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
            Image.asset('images/errorScreens/9_Location Error.png', fit: BoxFit.cover, height: context.height()),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Location Access', style: boldTextStyle(size: 30)),
                16.height,
                Text(
                  'Please enable location access to use this feature',
                  style: primaryTextStyle(size: 18, color: Colors.black54),
                  textAlign: TextAlign.center,
                ).paddingSymmetric(vertical: 8, horizontal: 40),
                32.height,
                AppButton(
                  child: Text('ENABLE', style: boldTextStyle(color: white)).paddingSymmetric(horizontal: 32),
                  shapeBorder: RoundedRectangleBorder(borderRadius: radius(30)),
                  elevation: 10,
                  color: Color(0xFFE8772A),
                  padding: EdgeInsets.all(16),
                  onTap: () {
                    toast('ENABLE');
                  },
                ),
                100.height,
              ],
            ),
          ],
        ),
      ),
    );
  }

}

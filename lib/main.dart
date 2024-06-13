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
            Image.asset('images/errorScreens/10_Connection Lost.png', fit: BoxFit.cover, height: context.height()),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('No Connection', style: boldTextStyle(size: 30)),
                32.height,
                Text(
                  'Your internet connection was interrupted, Please retry.',
                  style: primaryTextStyle(color: Colors.blueGrey, size: 18),
                ),
                48.height,
                AppButton(
                  child: Text('RETRY', style: boldTextStyle(color: white)),
                  shapeBorder: RoundedRectangleBorder(borderRadius: radius(30)),
                  elevation: 10,
                  color: Color(0xFF40588B),
                  onTap: () {
                    toast('RETRY');
                  },
                ),
                20.height,
              ],
            ).paddingAll(32),
          ],
        ),
      ),
    );
  }

}

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
      home: const ConnectionFailedPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class ConnectionFailedPage extends StatefulWidget {
  const ConnectionFailedPage({super.key, required this.title});
  final String title;

  @override
  State<ConnectionFailedPage> createState() => _ConnectionFailedPageState();
}

class _ConnectionFailedPageState extends State<ConnectionFailedPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'images/errorScreens/8_404 Error.png',
              fit: BoxFit.cover,
              height: context.height(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Dead End', style: primaryTextStyle(size: 40, color: white)),
                32.height,
                Text(
                  'Opps! The page you are looking for doesn\'t exist...',
                  style: primaryTextStyle(color: Colors.white60, size: 18),
                ),
                48.height,
                AppButton(
                  child: Text('HOME', style: boldTextStyle()),
                  color: context.cardColor,
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

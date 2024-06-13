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
            Image.asset(
              'images/errorScreens/14_No Search Results.png',
              fit: BoxFit.cover,
              height: context.height(),
              width: context.width(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('No Results', style: secondaryTextStyle(size: 40, color: white)),
                48.height,
                Text(
                  'Sorry there are no results for this search, Please try another phrase',
                  style: primaryTextStyle(size: 20, color: Colors.white54),
                ),
                48.height,
                AppTextField(
                  textFieldType: TextFieldType.OTHER,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16),
                    filled: true,
                    hintText: 'Search..',
                    hintStyle: secondaryTextStyle(size: 16),
                    suffixIcon: Icon(Icons.search, color: black),
                    border: OutlineInputBorder(borderRadius: radius(30)),
                    fillColor: context.cardColor,
                  ),
                ),
              ],
            ).paddingAll(32),
          ],
        ),
      ),
    );
  }

}

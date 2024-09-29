import 'package:flutter/material.dart';
import 'package:my_privacy_policy/Component/tc_point.dart';
import 'package:my_privacy_policy/Constants/app_strings.dart';
import 'package:my_privacy_policy/Constants/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Privacy and Policy'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppConstants.appBarColor,
        title: Text(widget.title,style: AppConstants.textStyle(fontSize: 19,color: Colors.white,fontWeight: FontWeight.bold,),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.priacyPolicy,
                style: AppConstants.textStyle(
                    fontSize: 19, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(0),
                itemCount: AppStrings.pointMessages.length,
                itemBuilder: (_, index) {
                  return privacyPolicyPoint(
                    point: AppStrings.pointTitles[index],
                    message: AppStrings.pointMessages[index],
                    index: index + 1,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

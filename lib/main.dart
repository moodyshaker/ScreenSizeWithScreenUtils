import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:test_app/field_format.dart';

import 'home.dart';
import 'main_provider.dart';

// void main() {
//   runApp(
//     DevicePreview(
//       builder: (context) => MyApp(), // Wrap your app
//     ),
//   );
// }
void main() {
  runApp(
    MyApp(), // Wrap your app
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () => ChangeNotifierProvider(
        create: (context) => MainProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: FieldFormat(),
          theme: ThemeData(
            primaryColor: Colors.teal,
            accentColor: Colors.teal
          ),
        ),
      ),
    );
  }
}

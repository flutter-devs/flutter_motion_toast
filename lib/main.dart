import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Motion Toast Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Motion Toast Examples',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    _displaySuccessMotionToast();
                  },
                  child: Text('Success Motion Toast'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    _displayWarningMotionToast();
                  },
                  child: Text('Warning Motion Toast'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    _displayErrorMotionToast();
                  },
                  child: Text('Error Motion Toast'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    _displayInfoMotionToast();
                  },
                  child: Text('Info Motion Toast'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    _displayDeleteMotionToast();
                  },
                  child: Text('Delete Motion Toast'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    _displayCustomMotionToast();
                  },
                  child: Text('Custom Motion Toast'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    _displayCenterMotionToast();
                  },
                  child: Text('Center Motion Toast'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    _displayTopMotionToast();
                  },
                  child: Text('Top Motion Toast'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    _displayTwoColorsMotionToast();
                  },
                  child: Text('Two-color Motion Toast'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    _displayTransparentMotionToast();
                  },
                  child: Text('Transparent Motion Toast'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _displaySuccessMotionToast() {
    MotionToast.success(
      title: 'text rtl',
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      description: 'this success message',
      descriptionStyle: TextStyle(fontSize: 12),
      layoutOrientation: ORIENTATION.rtl,
      animationType: ANIMATION.fromRight,
      width: 300,
      onClose: () {
        _displayWarningMotionToast();
      },
    ).show(context);
  }

  void _displayWarningMotionToast() {
    MotionToast.warning(
      title: 'Warning Motion Toast',
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      description: 'This is a Warning',
      animationCurve: Curves.bounceIn,
      borderRadius: 0,
      animationDuration: Duration(milliseconds: 1000),
    ).show(context);
  }

  void _displayErrorMotionToast() {
    MotionToast.error(
      title: 'Error',
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      description: 'Please enter your name',
      animationType: ANIMATION.fromLeft,
      position: MOTION_TOAST_POSITION.top,
      width: 300,
    ).show(context);
  }

  void _displayInfoMotionToast() {
    MotionToast.info(
      title: 'Info Motion Toast',
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      position: MOTION_TOAST_POSITION.center,
      description: 'Example of Info Toast',
    ).show(context);
  }

  void _displayDeleteMotionToast() {
    MotionToast.delete(
      title: 'Deleted',
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      description: 'The item is deleted',
      animationType: ANIMATION.fromTop,
      position: MOTION_TOAST_POSITION.top,
    ).show(context);
  }

  void _displayCustomMotionToast() {
    MotionToast(
      icon: Icons.alarm,
      primaryColor: Colors.pink,
      title: 'Custom Toast',
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      height: 150,
      description:
      'Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. In vitae turpis massa sed elementum tempus egestas sed sed.',
    ).show(context);
  }

  void _displayCenterMotionToast() {
    MotionToast(
      icon: Icons.alarm,
      primaryColor: Colors.deepOrange,
      title: 'Center Toast',
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      height: 150,
      description:
      'Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. In vitae turpis massa sed elementum tempus egestas sed sed.',
      //description: "Center displayed motion toast",
      position: MOTION_TOAST_POSITION.center,
    ).show(context);
  }

  void _displayTopMotionToast() {
    MotionToast(
      icon: Icons.zoom_out,
      primaryColor: Colors.deepOrange,
      title: 'Top Motion Toast',
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      description: 'Another motion toast example',
      position: MOTION_TOAST_POSITION.top,
      animationType: ANIMATION.fromTop,
      height: 100,
    ).show(context);
  }

  void _displayTwoColorsMotionToast() {
    MotionToast(
      icon: Icons.zoom_out,
      primaryColor: Colors.orange[500]!,
      secondaryColor: Colors.grey,
      backgroundType: BACKGROUND_TYPE.solid,
      title: 'Two Color Motion Toast',
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      description: 'Another motion toast example',
      position: MOTION_TOAST_POSITION.top,
      animationType: ANIMATION.fromTop,
      height: 100,
    ).show(context);
  }

  void _displayTransparentMotionToast() {
    MotionToast(
      icon: Icons.zoom_out,
      primaryColor: Colors.grey[400]!,
      secondaryColor: Colors.yellow,
      backgroundType: BACKGROUND_TYPE.transparent,
      title: 'Two Color Motion Toast',
      titleStyle: TextStyle(
        fontWeight: FontWeight.bold,
      ),
      description: 'Another motion toast example',
      position: MOTION_TOAST_POSITION.center,
      height: 100,
    ).show(context);
  }
}
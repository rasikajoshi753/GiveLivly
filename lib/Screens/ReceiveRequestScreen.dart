import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:givelivly_beta/Screens/home_screen.dart';
import 'package:givelivly_beta/Themes/themes_.dart';
import 'package:givelivly_beta/widgets/drawer.dart';

class ReceiveRequestScreen extends StatefulWidget {
  const ReceiveRequestScreen({Key? key}) : super(key: key);

  @override
  _ReceiveRequestScreenState createState() => _ReceiveRequestScreenState();
}

var scafoldKey = GlobalKey<ScaffoldState>();

class _ReceiveRequestScreenState extends State<ReceiveRequestScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        key: scafoldKey,
        bottomNavigationBar: BottomAppBar(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(ColorsDesign.darkBluishColor),
              shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
              ),
            ),
          ),
        ),
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.notifications,
                  color: ColorsDesign.darkBluishColor),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a snackbar')));
              },
            ),
          ],
          elevation: 0,
          leading: IconButton(
            icon: SvgPicture.asset('assets/Drawables/Toggle Button.svg'),
            onPressed: () {
              scafoldKey.currentState!.openDrawer();
            },
          ),
          backgroundColor: ColorsDesign.lightColor,
        ),
        drawer: NewCustomDrawer(),
        body: Container(
          color: ColorsDesign.lightColor,
          height: size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Positioned(
                top: 0,
                child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(3.0),
                    backgroundColor: MaterialStateProperty.all(
                        ColorsDesign.darkGreenCreamColor),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "All Requested Donations",
                        style: TextStyle(
                            color: ColorsDesign.darkBluishColor, fontSize: 24),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: size.height * 0.65,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Card(
                          elevation: 6,
                          margin: const EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            height: 200,
                            width: size.width,
                            decoration: BoxDecoration(
                              color: ColorsDesign.creamColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 50,
                                  left: 20,
                                  child: Text(
                                    'Dal Khichadi',
                                    style: TextStyle(
                                        fontSize: 24,
                                        color: ColorsDesign.darkBluishColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Positioned(
                                  top: 90,
                                  left: 20,
                                  child: Text(
                                    'Shyamlal Kaniyawalla',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: ColorsDesign.darkBluishColor),
                                  ),
                                ),
                                Positioned(
                                  top: 120,
                                  left: 20,
                                  child: SizedBox(
                                    width: size.width * 0.7,
                                    child: Text(
                                      '201-202 Imagiera heights, Vesu, Surat',
                                      style: TextStyle(
                                          fontSize: 16,
                                          wordSpacing: 1,
                                          color: ColorsDesign.darkBluishColor),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  left: 20,
                                  child: Text(
                                    '9988776655',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: ColorsDesign.darkBluishColor),
                                  ),
                                ),
                                Positioned(
                                  top: 40,
                                  right: 30,
                                  child: SizedBox(
                                    height: 100,
                                    width: 100,
                                    child: CircleAvatar(
                                      backgroundImage: Image.asset(
                                        'assets/Drawables/Biryani.jpg',
                                        fit: BoxFit.fill,
                                      ).image,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      elevation: MaterialStateProperty.all(3.0),
                                      shape: MaterialStateProperty.all(
                                        const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(20),
                                          ),
                                        ),
                                      ),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              ColorsDesign.darkBluishColor),
                                    ),
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                        top: 7,
                                        bottom: 7,
                                      ),
                                      child: const Text(
                                        "Request",
                                        style: TextStyle(
                                            color: ColorsDesign.lightColor,
                                            fontSize: 18),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const HomeScreen(),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Positioned(
                                  child: Divider(
                                    color: ColorsDesign.darkBluishColor,
                                    thickness: 3,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Card(
                          elevation: 6,
                          margin: const EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            height: 200,
                            width: size.width,
                            decoration: BoxDecoration(
                              color: ColorsDesign.creamColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 50,
                                  left: 20,
                                  child: Text(
                                    'Dal Khichadi',
                                    style: TextStyle(
                                        fontSize: 24,
                                        color: ColorsDesign.darkBluishColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Positioned(
                                  top: 90,
                                  left: 20,
                                  child: Text(
                                    'Shyamlal Kaniyawalla',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: ColorsDesign.darkBluishColor),
                                  ),
                                ),
                                Positioned(
                                  top: 120,
                                  left: 20,
                                  child: SizedBox(
                                    width: size.width * 0.7,
                                    child: Text(
                                      '201-202 Imagiera heights, Vesu, Surat',
                                      style: TextStyle(
                                          fontSize: 16,
                                          wordSpacing: 1,
                                          color: ColorsDesign.darkBluishColor),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  left: 20,
                                  child: Text(
                                    '9988776655',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: ColorsDesign.darkBluishColor),
                                  ),
                                ),
                                Positioned(
                                  top: 40,
                                  right: 30,
                                  child: SizedBox(
                                    height: 100,
                                    width: 100,
                                    child: CircleAvatar(
                                      backgroundImage: Image.asset(
                                        'assets/Drawables/Biryani.jpg',
                                        fit: BoxFit.fill,
                                      ).image,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      elevation: MaterialStateProperty.all(3.0),
                                      shape: MaterialStateProperty.all(
                                        const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(20),
                                          ),
                                        ),
                                      ),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              ColorsDesign.darkBluishColor),
                                    ),
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                        top: 7,
                                        bottom: 7,
                                      ),
                                      child: const Text(
                                        "Request",
                                        style: TextStyle(
                                            color: ColorsDesign.lightColor,
                                            fontSize: 18),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const HomeScreen(),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Positioned(
                                  child: Divider(
                                    color: ColorsDesign.darkBluishColor,
                                    thickness: 3,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Card(
                          elevation: 6,
                          margin: const EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            height: 200,
                            width: size.width,
                            decoration: BoxDecoration(
                              color: ColorsDesign.creamColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 50,
                                  left: 20,
                                  child: Text(
                                    'Dal Khichadi',
                                    style: TextStyle(
                                        fontSize: 24,
                                        color: ColorsDesign.darkBluishColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Positioned(
                                  top: 90,
                                  left: 20,
                                  child: Text(
                                    'Shyamlal Kaniyawalla',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: ColorsDesign.darkBluishColor),
                                  ),
                                ),
                                Positioned(
                                  top: 120,
                                  left: 20,
                                  child: SizedBox(
                                    width: size.width * 0.7,
                                    child: Text(
                                      '201-202 Imagiera heights, Vesu, Surat',
                                      style: TextStyle(
                                          fontSize: 16,
                                          wordSpacing: 1,
                                          color: ColorsDesign.darkBluishColor),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  left: 20,
                                  child: Text(
                                    '9988776655',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: ColorsDesign.darkBluishColor),
                                  ),
                                ),
                                Positioned(
                                  top: 40,
                                  right: 30,
                                  child: SizedBox(
                                    height: 100,
                                    width: 100,
                                    child: CircleAvatar(
                                      backgroundImage: Image.asset(
                                        'assets/Drawables/Biryani.jpg',
                                        fit: BoxFit.fill,
                                      ).image,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      elevation: MaterialStateProperty.all(3.0),
                                      shape: MaterialStateProperty.all(
                                        const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(20),
                                          ),
                                        ),
                                      ),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              ColorsDesign.darkBluishColor),
                                    ),
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                        top: 7,
                                        bottom: 7,
                                      ),
                                      child: const Text(
                                        "Request",
                                        style: TextStyle(
                                            color: ColorsDesign.lightColor,
                                            fontSize: 18),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const HomeScreen(),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Positioned(
                                  child: Divider(
                                    color: ColorsDesign.darkBluishColor,
                                    thickness: 3,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Card(
                          elevation: 6,
                          margin: const EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            height: 200,
                            width: size.width,
                            decoration: BoxDecoration(
                              color: ColorsDesign.creamColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 50,
                                  left: 20,
                                  child: Text(
                                    'Dal Khichadi',
                                    style: TextStyle(
                                        fontSize: 24,
                                        color: ColorsDesign.darkBluishColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Positioned(
                                  top: 90,
                                  left: 20,
                                  child: Text(
                                    'Shyamlal Kaniyawalla',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: ColorsDesign.darkBluishColor),
                                  ),
                                ),
                                Positioned(
                                  top: 120,
                                  left: 20,
                                  child: SizedBox(
                                    width: size.width * 0.7,
                                    child: Text(
                                      '201-202 Imagiera heights, Vesu, Surat',
                                      style: TextStyle(
                                          fontSize: 16,
                                          wordSpacing: 1,
                                          color: ColorsDesign.darkBluishColor),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  left: 20,
                                  child: Text(
                                    '9988776655',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: ColorsDesign.darkBluishColor),
                                  ),
                                ),
                                Positioned(
                                  top: 40,
                                  right: 30,
                                  child: SizedBox(
                                    height: 100,
                                    width: 100,
                                    child: CircleAvatar(
                                      backgroundImage: Image.asset(
                                        'assets/Drawables/Biryani.jpg',
                                        fit: BoxFit.fill,
                                      ).image,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      elevation: MaterialStateProperty.all(3.0),
                                      shape: MaterialStateProperty.all(
                                        const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(20),
                                          ),
                                        ),
                                      ),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              ColorsDesign.darkBluishColor),
                                    ),
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                        top: 7,
                                        bottom: 7,
                                      ),
                                      child: const Text(
                                        "Request",
                                        style: TextStyle(
                                            color: ColorsDesign.lightColor,
                                            fontSize: 18),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const HomeScreen(),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Positioned(
                                  child: Divider(
                                    color: ColorsDesign.darkBluishColor,
                                    thickness: 3,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Card(
                          elevation: 6,
                          margin: const EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            height: 200,
                            width: size.width,
                            decoration: BoxDecoration(
                              color: ColorsDesign.creamColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 50,
                                  left: 20,
                                  child: Text(
                                    'Dal Khichadi',
                                    style: TextStyle(
                                        fontSize: 24,
                                        color: ColorsDesign.darkBluishColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Positioned(
                                  top: 90,
                                  left: 20,
                                  child: Text(
                                    'Shyamlal Kaniyawalla',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: ColorsDesign.darkBluishColor),
                                  ),
                                ),
                                Positioned(
                                  top: 120,
                                  left: 20,
                                  child: SizedBox(
                                    width: size.width * 0.7,
                                    child: Text(
                                      '201-202 Imagiera heights, Vesu, Surat',
                                      style: TextStyle(
                                          fontSize: 16,
                                          wordSpacing: 1,
                                          color: ColorsDesign.darkBluishColor),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  left: 20,
                                  child: Text(
                                    '9988776655',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: ColorsDesign.darkBluishColor),
                                  ),
                                ),
                                Positioned(
                                  top: 40,
                                  right: 30,
                                  child: SizedBox(
                                    height: 100,
                                    width: 100,
                                    child: CircleAvatar(
                                      backgroundImage: Image.asset(
                                        'assets/Drawables/Biryani.jpg',
                                        fit: BoxFit.fill,
                                      ).image,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      elevation: MaterialStateProperty.all(3.0),
                                      shape: MaterialStateProperty.all(
                                        const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(20),
                                          ),
                                        ),
                                      ),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              ColorsDesign.darkBluishColor),
                                    ),
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                        top: 7,
                                        bottom: 7,
                                      ),
                                      child: const Text(
                                        "Request",
                                        style: TextStyle(
                                            color: ColorsDesign.lightColor,
                                            fontSize: 18),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const HomeScreen(),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Positioned(
                                  child: Divider(
                                    color: ColorsDesign.darkBluishColor,
                                    thickness: 3,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:job_hunting/screens/login/animation/animation.dart';
import 'package:job_hunting/screens/login/signup_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final feature = ["Login", "Sign Up"];

  int i = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    // ignore: prefer_typing_uninitialized_variables
    var kTextFieldInputDecoration;
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          backgroundColor: Colors.white,
          body: i == 0
              ? SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(25),
                        child: Column(
                          children: [
                            Row(
                              // TabBar Code
                              children: [
                                SizedBox(
                                  height: height / 19,
                                  width: width / 2,
                                  child: TopAnime(
                                    2,
                                    5,
                                    child: ListView.builder(
                                      itemCount: feature.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              i = index;
                                            });
                                          },
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20),
                                                child: Text(
                                                  feature[index],
                                                  style: TextStyle(
                                                    color: i == index
                                                        ? Colors.indigoAccent
                                                        : Colors.white,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              i == index
                                                  ? Container(
                                                      height: 3,
                                                      width: width / 9,
                                                      color: Colors.black,
                                                    )
                                                  : Container(),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(child: Container()),
                                // Profile
                                RightAnime(
                                  1,
                                  15,
                                  curve: Curves.easeInOutQuad,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      width: 60,
                                      height: 60,
                                      color: Colors.indigoAccent[400],
                                      child: i == 0
                                          ? const Image(
                                              image: NetworkImage(
                                                  "https://i.pinimg.com/564x/5d/a3/d2/5da3d22d08e353184ca357db7800e9f5.jpg"),
                                            )
                                          : const Icon(
                                              Icons.account_circle_outlined,
                                              color: Colors.white,
                                              size: 40,
                                            ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            // Top Text
                            Container(
                              padding: const EdgeInsets.only(left: 15),
                              width: width,
                              child: TopAnime(
                                1,
                                20,
                                curve: Curves.fastOutSlowIn,
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Welcome Back,",
                                      style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    Text(
                                      "Divyanshu Ranjan",
                                      style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height / 14,
                            ),
                            // TextFiled
                            Column(
                              children: [
                                SizedBox(
                                  width: width / 1.2,
                                  height: height / 3.10,
                                  child: TopAnime(
                                    1,
                                    15,
                                    curve: Curves.easeInExpo,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        TextField(
                                          // readOnly: true, // * Just for Debug
                                          cursorColor: Colors.black,
                                          style: const TextStyle(color: Colors.black),
                                          showCursor: true,
                                          //cursorColor: mainColor,
                                          decoration: kTextFieldInputDecoration,
                                        ),
                                        const SizedBox(
                                          height: 25,
                                        ),
                                        TextField(
                                          // readOnly: true, // * Just for Debug
                                          cursorColor: Colors.black,
                                          style: const TextStyle(color: Colors.black),
                                          showCursor: true,
                                          //cursorColor: mainColor,
                                          decoration: kTextFieldInputDecoration
                                              .copyWith(labelText: "Password"),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        // FaceBook and Google ICon
                                        TopAnime(
                                          1,
                                          10,
                                          child: Row(
                                            children: [
                                              IconButton(
                                                icon: const FaIcon(
                                                  FontAwesomeIcons.facebookF,
                                                  size: 30,
                                                ),
                                                onPressed: () {},
                                              ),
                                              const SizedBox(
                                                width: 15,
                                              ),
                                              IconButton(
                                                icon: const FaIcon(
                                                  FontAwesomeIcons.google,
                                                  size: 35,
                                                ),
                                                onPressed: () {},
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      // Bottom
                      i == 0
                          ? TopAnime(
                              2,
                              42,
                              curve: Curves.fastOutSlowIn,
                              child: SizedBox(
                                height: height / 6,
                                child: Stack(
                                  children: [
                                    const Positioned(
                                      left: 30,
                                      top: 15,
                                      child: Text(
                                        "Forgot Password?",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 43),
                                      child: Container(
                                          height: height / 9,
                                          color: Colors.grey.withOpacity(0.4)),
                                    ),
                                    Positioned(
                                      left: 280,
                                      top: 10,
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      SignUPScreen()));
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.indigoAccent[400],
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          width: width / 4,
                                          height: height / 12,
                                          child: const Icon(
                                            Icons.arrow_forward,
                                            size: 35,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : SignUPScreen(),
                    ],
                  ),
                )
              : SignUPScreen(),
        ),
      ),
    );
  }
}
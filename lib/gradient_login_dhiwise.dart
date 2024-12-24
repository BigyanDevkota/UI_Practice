import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

  final TextEditingController usernameFieldController = TextEditingController();

  final TextEditingController passwordFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: double.maxFinite,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [Color(0XFFB992F7), Color(0XFF8142E5)],
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 60,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: 134,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            child: Image.asset(
                              "assets/images/img_rectangle_1.png",
                              height: 134,
                              width: double.maxFinite,
                            ),
                          ),
                          Text(
                            "app",
                            style: TextStyle(
                              color: Color(0XFFFFFFFF),
                              fontSize: 50,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 100),
                    _buildWelcomeSection(context),
                    SizedBox(height: 50),
                    _buildLoginButton(context),
                    SizedBox(height: 12),
                    Text(
                      "Forgot Password ? ",
                      style: TextStyle(
                        color: Color(0XFFFFFFFF),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 64),
                    Text(
                      "don’t have an account ?",
                      style: TextStyle(
                        color: Color(0XFFFFFFFF),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 4),
                    _buildCreateButton(context),
                    SizedBox(height: 4),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUsernameField(BuildContext context) {
    return SizedBox(
      width: 362,
      child: TextFormField(
        focusNode: FocusNode(),
        autofocus: true,
        controller: usernameFieldController,
        style: TextStyle(
          color: Color(0XCCFFFFFF),
          fontSize: 20,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          hintText: "username",
          hintStyle: TextStyle(
            color: Color(0XCCFFFFFF),
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0XA8FFFFFF),
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0XA8FFFFFF),
            ),
          ),
          disabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0XA8FFFFFF),
            ),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0XA8FFFFFF),
            ),
          ),
          isDense: true,
          contentPadding: EdgeInsets.fromLTRB(8, 12, 8, 6),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return SizedBox(
      width: 362,
      child: TextFormField(
        focusNode: FocusNode(),
        autofocus: true,
        controller: passwordFieldController,
        style: TextStyle(
          color: Color(0XCCFFFFFF),
          fontSize: 20,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        textInputAction: TextInputAction.done,
        obscureText: true,
        decoration: InputDecoration(
          hintText: "password",
          hintStyle: TextStyle(
            color: Color(0XCCFFFFFF),
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0XA8FFFFFF),
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0XA8FFFFFF),
            ),
          ),
          disabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0XA8FFFFFF),
            ),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0XA8FFFFFF),
            ),
          ),
          isDense: true,
          contentPadding: EdgeInsets.fromLTRB(8, 12, 8, 6),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWelcomeSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 4),
      child: Column(
        children: [
          Text(
            "welcome !",
            style: TextStyle(
              color: Color(0XFFFFFFFF),
              fontSize: 52,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 22),
          _buildUsernameField(context),
          SizedBox(height: 40),
          _buildPasswordField(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Color(0XFFFFFFFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              24,
            ),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 2,
          ),
        ),
        onPressed: () {},
        child: Text(
          "Log In",
          style: TextStyle(
            color: Color(0XFF884DE7),
            fontSize: 30,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCreateButton(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 52,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Color(0XFFFFFFFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              26,
            ),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 2,
          ),
        ),
        onPressed: () {},
        child: Text(
          "Create",
          style: TextStyle(
            color: Color(0XFF884DE7),
            fontSize: 32,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

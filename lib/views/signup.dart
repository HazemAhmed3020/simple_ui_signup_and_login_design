import 'package:flutter/material.dart';
import 'package:mobile_app_login_signup_pages/views/views%20body/signup_view_body.dart';


class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SignupViewBody(),
          )
        ],
      )

    );
  }
}

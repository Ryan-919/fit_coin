import 'package:fit_coin/profile.dart';
import 'package:flutter/material.dart';

// Demonstrates how to use autofill hints. The full list of hints is here:
// https://github.com/flutter/engine/blob/master/lib/web_ui/lib/src/engine/text_editing/autofill_hint.dart
class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Form(
        key: _formKey,
        child: Scrollbar(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: AutofillGroup(
              child: Column(
                children: [
                  ...[
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: '',
                        labelText: 'Username',
                      ),
                      autofillHints: [AutofillHints.givenName],
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: '',
                        labelText: 'Password',
                      ),
                      autofillHints: [AutofillHints.familyName],
                    ),
                    ElevatedButton(onPressed: goToProfile, child: Text("Login")),
                  ].expand(
                        (widget) => [
                      widget,
                      SizedBox(
                        height: 24,
                      )
                    ],
                  )
                ],
              ),
            ),

          ),

        ),

      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void goToProfile() {
    // Profile();
    // Navigator.pushNamed(context, "/profile");
    // (context) => Profile();
    Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
  }
}

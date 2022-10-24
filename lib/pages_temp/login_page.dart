import 'package:flutter/material.dart';
import 'package:project_bailey/widgets/button.dart';
import 'package:project_bailey/widgets/labeled_textfield.dart';
import 'package:project_bailey/widgets/sliver_header.dart';

class LoginPage extends StatefulWidget {
  final String title;

  const LoginPage({super.key, this.title = "Login"});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPassword = true;
  final _formKey = GlobalKey<FormState>();
  final List<int> data = [1, 2, 3, 4, 5, 6];
  final List<String> names = ['tester'];
  final nameTextInput = TextEditingController();

  Widget _customFixedList(Color color, String _text) {
    return Container(
      color: color,
      child: Center(
        child: Text(
          _text,
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 150,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(title: Text('Basic Sliver')),
        ),
        SliverHeader(
          backgroundColor: Colors.orange,
          title: 'Subheader 1',
        ),
        SliverFixedExtentList(
          itemExtent: 60,
          delegate: SliverChildListDelegate([
            _customFixedList(Colors.orange[100]!, 'list 1'),
            _customFixedList(Colors.orange[200]!, 'list 2'),
            _customFixedList(Colors.orange[300]!, 'list 3'),
          ]),
        ),
        SliverHeader(
          backgroundColor: Colors.red,
          title: 'Subheader 2',
        ),
        SliverList(
          delegate: SliverChildListDelegate.fixed(
            [
              Column(
                children: [
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: Container(
                      color: Colors.red[100],
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: Container(
                      color: Colors.red[200],
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: Container(
                      color: Colors.red[300],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SliverHeader(
          backgroundColor: Colors.green,
          title: 'Subheader 3',
        ),
        SliverList(
          delegate: SliverChildListDelegate.fixed(
            [
              Column(
                children: [
                  SizedBox(
                    height: 400,
                    width: double.infinity,
                    child: Container(
                      color: Colors.greenAccent,
                    ),
                  ),
                  SizedBox(
                    height: 400,
                    width: double.infinity,
                    child: Container(
                      color: Colors.green[700],
                    ),
                  ),
                  SizedBox(
                    height: 400,
                    width: double.infinity,
                    child: Container(
                      color: Colors.green[900],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: nameTextInput,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Required Field';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Button(
                          text: 'Submit',
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              setState(() {
                                this.names.add(nameTextInput.text);
                              });
                            }
                          },
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100],
                child: Text(names[index]),
              );
            },
            childCount: names.length,
          ),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 4,
          ),
        ),
      ],
    )
        // body: ListView.builder(
        //   itemBuilder: (context, index) {
        //     return Text(data[index].toString());
        //   },
        //   itemCount: data.length,
        // ),
        // body: SingleChildScrollView(
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       const Padding(
        //         padding: EdgeInsets.only(top: 100, bottom: 80, left: 10),
        //         child: Text(
        //           'Login to your\nAccount',
        //           style: TextStyle(
        //             fontSize: 32,
        //             fontWeight: FontWeight.bold,
        //             height: 1.5,
        //           ),
        //         ),
        //       ),
        //       LabeledTextField(
        //         label: 'Email',
        //         inputDecoration: InputDecoration(
        //           hintText: 'Email',
        //           prefixIcon: Icon(Icons.email_outlined),
        //           border: OutlineInputBorder(
        //             borderRadius: BorderRadius.circular(15),
        //           ),
        //         ),
        //       ),
        //       LabeledTextField(
        //         label: 'Password',
        //         obscureText: showPassword,
        //         inputDecoration: InputDecoration(
        //           hintText: 'Password',
        //           prefixIcon: Icon(Icons.lock_outline),
        //           suffixIcon: IconButton(
        //               icon: Icon(showPassword
        //                   ? Icons.visibility_off_outlined
        //                   : Icons.visibility_outlined),
        //               onPressed: () {
        //                 setState(() {
        //                   showPassword = !showPassword;
        //                 });
        //               }),
        //           border: OutlineInputBorder(
        //             borderRadius: BorderRadius.circular(15),
        //           ),
        //         ),
        //       ),
        //       const Align(
        //         alignment: Alignment.centerRight,
        //         child: Padding(
        //           padding: EdgeInsets.only(
        //             top: 10,
        //             right: 10,
        //             bottom: 40,
        //           ),
        //           child: Text(
        //             'Forgot Password?',
        //             style: TextStyle(
        //               fontWeight: FontWeight.bold,
        //               color: Colors.green,
        //             ),
        //           ),
        //         ),
        //       ),
        //       SizedBox(
        //         width: double.infinity,
        //         height: 58,
        //         child: Padding(
        //           padding: const EdgeInsets.symmetric(horizontal: 10),
        //           child: OutlinedButton(
        //             onPressed: () {},
        //             style: OutlinedButton.styleFrom(
        //               backgroundColor: Colors.green,
        //               shape: RoundedRectangleBorder(
        //                 borderRadius: BorderRadius.circular(10),
        //               ),
        //             ),
        //             child: const Text(
        //               'Login',
        //               style: TextStyle(
        //                 color: Colors.white,
        //                 fontWeight: FontWeight.bold,
        //                 fontSize: 15,
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.only(top: 180),
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: const [
        //             Text(
        //               "Don't have an account?",
        //               style: TextStyle(
        //                 fontWeight: FontWeight.bold,
        //               ),
        //             ),
        //             Padding(
        //               padding: EdgeInsets.only(left: 5),
        //               child: Text(
        //                 'Sign Up',
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.bold,
        //                   color: Colors.green,
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //       )
        //     ],
        //   ),
        // ),
        );
  }
}

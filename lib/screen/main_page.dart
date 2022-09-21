import 'package:flutter/material.dart';
import 'package:tasktest/component/appbar.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DoubleBackToCloseApp(
          snackBar: SnackBar(content: Text('انقر مره اخرى للخروج')),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.blue,
                          size: 20,
                        ),
                      ),
                      Text(
                        "اعدادات الاسطول",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          width: 270,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.transparent)),
                          child: TextFormField(
                            decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.search_rounded,
                                  size: 20,
                                ),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none)),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.6)),
                          child: Icon(
                            Icons.sort_rounded,
                            color: Colors.blue,
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 8),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blue.shade900,
                          ),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "الكل",
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0, top: 8),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.blue.shade900,
                              )),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "مشترك",
                              style: TextStyle(color: Colors.blue.shade900),
                            ),
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.blue.shade900,
                              )),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "غير مشترك",
                              style: TextStyle(color: Colors.blue.shade900),
                            ),
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0, top: 8),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.blue.shade900,
                              )),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "اعدادات جديدة",
                              style: TextStyle(color: Colors.blue.shade900),
                            ),
                          )),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black12)),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black12)),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black12)),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black12)),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black12)),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black12)),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black12)),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black12)),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black12)),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black12)),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black12)),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black12)),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("ffffff"),
                                      Text("ffffff"),
                                      Text("ffffff"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

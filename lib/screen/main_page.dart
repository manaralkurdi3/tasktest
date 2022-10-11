import 'package:flutter/material.dart';
import 'package:tasktest/component/appbar.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:tasktest/login_cubit.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  bool isDisable =true;
  bool isenable=false;
  bool visible = false;
  @override
  Widget build(BuildContext context) {

    print(LoginCubit.get(context).username);
    print(LoginCubit.get(context).password);
    return
      Directionality(
          textDirection: translator.activeLanguageCode == 'ar'
              ? TextDirection.ltr
              : TextDirection.rtl,
      child: AppBarComponent(
        SafeArea(
          child: DoubleBackToCloseApp(
            snackBar:
            SnackBar(content: Text('انقر مره اخرى للخروج'.tr())),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.blue.shade900,
                            size: 20,
                          ),
                        ),
                        Text("اعدادات الاسطول".tr(),style: TextStyle(
                            color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16
                        ),),
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
                                border: Border.all(
                                    color: Colors.transparent
                                )
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.search_rounded,
                                    size: 20,
                                  ),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none
                                  )
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.6)
                            ),
                            child: Icon(
                              Icons.sort_rounded,
                              color: Colors.blue.shade900,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      child: ListView.builder(
                          physics: ClampingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 1,
                          itemBuilder: (context,index) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0,top: 8),
                                  child: Container(
                                    height:40,
                                    width:50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.blue.shade900,
                                    ),
                                    child: Center(child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text("الكل".tr(),style: TextStyle(color: Colors.white,fontSize: 13),),
                                    )),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 4.0,top: 8),
                                  child: Container(
                                    height:40,
                                    width:80,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          color: Colors.blue.shade900,
                                        )
                                    ),
                                    child: Center(child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("مشترك".tr(),style: TextStyle(color: Colors.blue.shade900, fontSize: 13  ),),
                                    )),
                                  ),


                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height:40,
                                    width:100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          color: Colors.blue.shade900,
                                        )
                                    ),
                                    child: Center(child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("غير مشترك".tr(),style: TextStyle(color: Colors.blue.shade900,fontSize: 13),),
                                    )),
                                  ),

                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 0.0,top: 8),
                                  child: Container(
                                    height:40,
                                    width:100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          color: Colors.blue.shade900,
                                        )
                                    ),
                                    child: Center(child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("اعدادات جديدة".tr(),style: TextStyle(color: Colors.blue.shade900,fontSize: 13),),
                                    )),
                                  ),

                                ),
                              ],
                            );
                          }
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Container(
                                  decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Colors.black12
                                      )
                                  ) ,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                                child:
                                                Icon(Icons.more_vert)
                                            ),
                                            Container(
                                                child:
                                                CircleAvatar(
                                                    radius: 35,
                                                    backgroundColor: Colors.grey,
                                                    child: Image.asset("assets/van.png",width: 80,height: 50,))
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 12.0),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text("ار 545454 "),
                                                    ],
                                                  ),
                                                  Row(

                                                    children: [
                                                      Icon(Icons.person_add_alt_1_sharp,color: Colors.green,size: 15,),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 5.0),
                                                        child: Text("حمزة عبد الله ابو سنينة"),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),

                                        Visibility(
                                          visible: visible,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Icon(Icons.remove_red_eye,color: Colors.blue),
                                                  ),
                                                  Text("خدمة التوفر على المنصة"),
                                                ],
                                              ),

                                              Switch(value: isenable,
                                                  onChanged: (check) {
                                                    isenable= check;
                                                  }),
                                            ],
                                          ),
                                        ),
                                        Visibility(
                                          visible: visible,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Icon(Icons.remove_red_eye),
                                                  ),
                                                  Text("خدمة البيع"),
                                                ],
                                              ),

                                              Switch(value: isDisable,
                                                  onChanged: (check) {
                                                    isDisable= check;
                                                  }),
                                            ],
                                          ),
                                        ),
                                        InkWell(
                                          onTap: (){
                                            setState(() {
                                              visible=!visible;
                                            });
                                          },
                                          child: Container(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 8.0),
                                                  child: Icon(Icons.arrow_downward_rounded,size: 19,color: Colors.blue.shade900),
                                                ),
                                                Text("الخدمات".tr(),style:  TextStyle(
                                                    fontSize: 17,color: Colors.blue.shade900),),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                 padding: const EdgeInsets.only(bottom: 8.0),
                                child: Container(
                                  decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Colors.black12
                                      )
                                  ) ,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                                child:
                                                Icon(Icons.more_vert)
                                            ),
                                            Container(
                                                child:
                                                CircleAvatar(
                                                    radius: 35,
                                                    backgroundColor: Colors.grey,
                                                    child: Image.asset("assets/van.png",width: 80,height: 50,))
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 12.0),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text("ار 545454 "),
                                                    ],
                                                  ),
                                                  Row(

                                                    children: [
                                                      Icon(Icons.person_add_alt_1_sharp,color: Colors.green,size: 15,),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 5.0),
                                                        child: Text("حمزة عبد الله ابو سنينة"),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),

                                        Visibility(
                                          visible: visible,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Icon(Icons.remove_red_eye,color: Colors.blue),
                                                  ),
                                                  Text("خدمة التوفر على المنصة"),
                                                ],
                                              ),

                                              Switch(value: isenable,
                                                  onChanged: (check) {
                                                    isenable= check;
                                                  }),
                                            ],
                                          ),
                                        ),
                                        Visibility(
                                          visible: visible,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Icon(Icons.remove_red_eye),
                                                  ),
                                                  Text("خدمة البيع"),
                                                ],
                                              ),

                                              Switch(value: isDisable,
                                                  onChanged: (check) {
                                                    isDisable= check;
                                                  }),
                                            ],
                                          ),
                                        ),
                                        InkWell(
                                          onTap: (){
                                            setState(() {
                                              visible=!visible;
                                            });
                                          },
                                          child: Container(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 8.0),
                                                  child: Icon(Icons.arrow_downward_rounded,size: 19,color: Colors.blue.shade900),
                                                ),
                                                Text("الخدمات".tr(),style:  TextStyle(
                                                    fontSize: 17,color: Colors.blue.shade900),),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Container(
                                  decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Colors.black12
                                      )
                                  ) ,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                                child:
                                                Icon(Icons.more_vert)
                                            ),
                                            Container(
                                                child:
                                                CircleAvatar(
                                                    radius: 35,
                                                    backgroundColor: Colors.grey,
                                                    child: Image.asset("assets/van.png",width: 80,height: 50,))
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 12.0),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text("ار 545454 "),
                                                    ],
                                                  ),
                                                  Row(

                                                    children: [
                                                      Icon(Icons.person_add_alt_1_sharp,color: Colors.green,size: 15,),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 5.0),
                                                        child: Text("حمزة عبد الله ابو سنينة"),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),

                                        Visibility(
                                          visible: visible,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Icon(Icons.remove_red_eye,color: Colors.blue),
                                                  ),
                                                  Text("خدمة التوفر على المنصة"),
                                                ],
                                              ),

                                              Switch(value: isenable,
                                                  onChanged: (check) {
                                                    isenable= check;
                                                  }),
                                            ],
                                          ),
                                        ),
                                        Visibility(
                                          visible: visible,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Icon(Icons.remove_red_eye),
                                                  ),
                                                  Text("خدمة البيع"),
                                                ],
                                              ),

                                              Switch(value: isDisable,
                                                  onChanged: (check) {
                                                    isDisable= check;
                                                  }),
                                            ],
                                          ),
                                        ),
                                        InkWell(
                                          onTap: (){
                                            setState(() {
                                              visible=!visible;
                                            });
                                          },
                                          child: Container(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 8.0),
                                                  child: Icon(Icons.arrow_downward_rounded,size: 19,color: Colors.blue.shade900),
                                                ),
                                                Text("الخدمات".tr(),style:  TextStyle(
                                                    fontSize: 17,color: Colors.blue.shade900),),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Container(
                                  decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Colors.black12
                                      )
                                  ) ,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                                child:
                                                Icon(Icons.more_vert)
                                            ),
                                            Container(
                                                child:
                                                CircleAvatar(
                                                    radius: 35,
                                                    backgroundColor: Colors.grey,
                                                    child: Image.asset("assets/van.png",width: 80,height: 50,))
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 12.0),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text("ار 545454 "),
                                                    ],
                                                  ),
                                                  Row(

                                                    children: [
                                                      Icon(Icons.person_add_alt_1_sharp,color: Colors.green,size: 15,),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 5.0),
                                                        child: Text("حمزة عبد الله ابو سنينة"),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),

                                        Visibility(
                                          visible: visible,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Icon(Icons.remove_red_eye,color: Colors.blue),
                                                  ),
                                                  Text("خدمة التوفر على المنصة"),
                                                ],
                                              ),

                                              Switch(value: isenable,
                                                  onChanged: (check) {
                                                    isenable= check;
                                                  }),
                                            ],
                                          ),
                                        ),
                                        Visibility(
                                          visible: visible,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Icon(Icons.remove_red_eye),
                                                  ),
                                                  Text("خدمة البيع"),
                                                ],
                                              ),

                                              Switch(value: isDisable,
                                                  onChanged: (check) {
                                                    isDisable= check;
                                                  }),
                                            ],
                                          ),
                                        ),
                                        InkWell(
                                          onTap: (){
                                            setState(() {
                                              visible=!visible;
                                            });
                                          },
                                          child: Container(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 8.0),
                                                  child: Icon(Icons.arrow_downward_rounded,size: 19,color: Colors.blue.shade900),
                                                ),
                                                Text("الخدمات".tr(),style:  TextStyle(
                                                    fontSize: 17,color: Colors.blue.shade900),),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Container(
                                  decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Colors.black12
                                      )
                                  ) ,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                                child:
                                                Icon(Icons.more_vert)
                                            ),
                                            Container(
                                                child:
                                                CircleAvatar(
                                                    radius: 35,
                                                    backgroundColor: Colors.grey,
                                                    child: Image.asset("assets/van.png",width: 80,height: 50,))
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 12.0),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text("ار 545454 "),
                                                    ],
                                                  ),
                                                  Row(

                                                    children: [
                                                      Icon(Icons.person_add_alt_1_sharp,color: Colors.green,size: 15,),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 5.0),
                                                        child: Text("حمزة عبد الله ابو سنينة"),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),

                                        Visibility(
                                          visible: visible,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Icon(Icons.remove_red_eye,color: Colors.blue),
                                                  ),
                                                  Text("خدمة التوفر على المنصة"),
                                                ],
                                              ),

                                              Switch(value: isenable,
                                                  onChanged: (check) {
                                                    isenable= check;
                                                  }),
                                            ],
                                          ),
                                        ),
                                        Visibility(
                                          visible: visible,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Icon(Icons.remove_red_eye),
                                                  ),
                                                  Text("خدمة البيع"),
                                                ],
                                              ),

                                              Switch(value: isDisable,
                                                  onChanged: (check) {
                                                    isDisable= check;
                                                  }),
                                            ],
                                          ),
                                        ),
                                        InkWell(
                                          onTap: (){
                                            setState(() {
                                              visible=!visible;
                                            });
                                          },
                                          child: Container(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 8.0),
                                                  child: Icon(Icons.arrow_downward_rounded,size: 19,color: Colors.blue.shade900),
                                                ),
                                                Text("الخدمات".tr(),style:  TextStyle(
                                                    fontSize: 17,color: Colors.blue.shade900),),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Container(
                                  decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Colors.black12
                                      )
                                  ) ,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                                child:
                                                Icon(Icons.more_vert)
                                            ),
                                            Container(
                                                child:
                                                CircleAvatar(
                                                    radius: 35,
                                                    backgroundColor: Colors.grey,
                                                    child: Image.asset("assets/van.png",width: 80,height: 50,))
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 12.0),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text("ار 545454 "),
                                                    ],
                                                  ),
                                                  Row(

                                                    children: [
                                                      Icon(Icons.person_add_alt_1_sharp,color: Colors.green,size: 15,),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 5.0),
                                                        child: Text("حمزة عبد الله ابو سنينة"),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),

                                        Visibility(
                                          visible: visible,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Icon(Icons.remove_red_eye,color: Colors.blue),
                                                  ),
                                                  Text("خدمة التوفر على المنصة"),
                                                ],
                                              ),

                                              Switch(value: isenable,
                                                  onChanged: (check) {
                                                    isenable= check;
                                                  }),
                                            ],
                                          ),
                                        ),
                                        Visibility(
                                          visible: visible,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Icon(Icons.remove_red_eye),
                                                  ),
                                                  Text("خدمة البيع"),
                                                ],
                                              ),

                                              Switch(value: isDisable,
                                                  onChanged: (check) {
                                                    isDisable= check;
                                                  }),
                                            ],
                                          ),
                                        ),
                                        InkWell(
                                          onTap: (){
                                            setState(() {
                                              visible=!visible;
                                            });
                                          },
                                          child: Container(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 8.0),
                                                  child: Icon(Icons.arrow_downward_rounded,size: 19,color: Colors.blue.shade900),
                                                ),
                                                Text("الخدمات".tr(),style:  TextStyle(
                                                    fontSize: 17,color: Colors.blue.shade900),),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Container(
                                  decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Colors.black12
                                      )
                                  ) ,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                                child:
                                                Icon(Icons.more_vert)
                                            ),
                                            Container(
                                                child:
                                                CircleAvatar(
                                                    radius: 35,
                                                    backgroundColor: Colors.grey,
                                                    child: Image.asset("assets/van.png",width: 80,height: 50,))
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 12.0),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text("ار 545454 "),
                                                    ],
                                                  ),
                                                  Row(

                                                    children: [
                                                      Icon(Icons.person_add_alt_1_sharp,color: Colors.green,size: 15,),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 5.0),
                                                        child: Text("حمزة عبد الله ابو سنينة"),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),

                                        Visibility(
                                          visible: visible,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Icon(Icons.remove_red_eye,color: Colors.blue),
                                                  ),
                                                  Text("خدمة التوفر على المنصة"),
                                                ],
                                              ),

                                              Switch(value: isenable,
                                                  onChanged: (check) {
                                                    isenable= check;
                                                  }),
                                            ],
                                          ),
                                        ),
                                        Visibility(
                                          visible: visible,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Icon(Icons.remove_red_eye),
                                                  ),
                                                  Text("خدمة البيع"),
                                                ],
                                              ),

                                              Switch(value: isDisable,
                                                  onChanged: (check) {
                                                    isDisable= check;
                                                  }),
                                            ],
                                          ),
                                        ),
                                        InkWell(
                                          onTap: (){
                                            setState(() {
                                              visible=!visible;
                                            });
                                          },
                                          child: Container(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 8.0),
                                                  child: Icon(Icons.arrow_downward_rounded,size: 19,color: Colors.blue.shade900),
                                                ),
                                                Text("الخدمات".tr(),style:  TextStyle(
                                                    fontSize: 17,color: Colors.blue.shade900),),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Container(
                                  decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Colors.black12
                                      )
                                  ) ,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                                child:
                                                Icon(Icons.more_vert)
                                            ),
                                            Container(
                                                child:
                                                CircleAvatar(
                                                    radius: 35,
                                                    backgroundColor: Colors.grey,
                                                    child: Image.asset("assets/van.png",width: 80,height: 50,))
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 12.0),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text("ار 545454 "),
                                                    ],
                                                  ),
                                                  Row(

                                                    children: [
                                                      Icon(Icons.person_add_alt_1_sharp,color: Colors.green,size: 15,),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 5.0),
                                                        child: Text("حمزة عبد الله ابو سنينة"),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),

                                        Visibility(
                                          visible: visible,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Icon(Icons.remove_red_eye,color: Colors.blue),
                                                  ),
                                                  Text("خدمة التوفر على المنصة"),
                                                ],
                                              ),

                                              Switch(value: isenable,
                                                  onChanged: (check) {
                                                    isenable= check;
                                                  }),
                                            ],
                                          ),
                                        ),
                                        Visibility(
                                          visible: visible,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Icon(Icons.remove_red_eye),
                                                  ),
                                                  Text("خدمة البيع"),
                                                ],
                                              ),

                                              Switch(value: isDisable,
                                                  onChanged: (check) {
                                                    isDisable= check;
                                                  }),
                                            ],
                                          ),
                                        ),
                                        InkWell(
                                          onTap: (){
                                            setState(() {
                                              visible=!visible;
                                            });
                                          },
                                          child: Container(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 8.0),
                                                  child: Icon(Icons.arrow_downward_rounded,size: 19,color: Colors.blue.shade900),
                                                ),
                                                Text("الخدمات".tr(),style:  TextStyle(
                                                    fontSize: 17,color: Colors.blue.shade900),),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Container(
                                  decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Colors.black12
                                      )
                                  ) ,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                                child:
                                                Icon(Icons.more_vert)
                                            ),
                                            Container(
                                                child:
                                                CircleAvatar(
                                                    radius: 35,
                                                    backgroundColor: Colors.grey,
                                                    child: Image.asset("assets/van.png",width: 80,height: 50,))
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 12.0),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text("ار 545454 "),
                                                    ],
                                                  ),
                                                  Row(

                                                    children: [
                                                      Icon(Icons.person_add_alt_1_sharp,color: Colors.green,size: 15,),
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 5.0),
                                                        child: Text("حمزة عبد الله ابو سنينة"),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),

                                        Visibility(
                                          visible: visible,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Icon(Icons.remove_red_eye,color: Colors.blue),
                                                  ),
                                                  Text("خدمة التوفر على المنصة"),
                                                ],
                                              ),

                                              Switch(value: isenable,
                                                  onChanged: (check) {
                                                    isenable= check;
                                                  }),
                                            ],
                                          ),
                                        ),
                                        Visibility(
                                          visible: visible,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Icon(Icons.remove_red_eye),
                                                  ),
                                                  Text("خدمة البيع"),
                                                ],
                                              ),

                                              Switch(value: isDisable,
                                                  onChanged: (check) {
                                                    isDisable= check;
                                                  }),
                                            ],
                                          ),
                                        ),
                                        InkWell(
                                          onTap: (){
                                            setState(() {
                                              visible=!visible;
                                            });
                                          },
                                          child: Container(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 8.0),
                                                  child: Icon(Icons.arrow_downward_rounded,size: 19,color: Colors.blue.shade900),
                                                ),
                                                Text("الخدمات".tr(),style:  TextStyle(
                                                    fontSize: 17,color: Colors.blue.shade900),),
                                              ],
                                            ),
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
                      ),

                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );

  }
}

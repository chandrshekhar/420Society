import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class EditPersonalDetails extends StatefulWidget {
  const EditPersonalDetails({super.key});

  @override
  State<EditPersonalDetails> createState() => _EditPersonalDetails();
}

class _EditPersonalDetails extends State<EditPersonalDetails> {
  @override
  Widget build(BuildContext context) {
    final _screenHeight = MediaQuery.of(context).size.height -
        kToolbarHeight -
        MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Edit Personal Details",
          style: TextStyle(color: Colors.black),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10, top: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 211, 209, 209).withOpacity(0.4),
                borderRadius: BorderRadius.circular(8),
              ),
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        contentPadding:  EdgeInsets.only(
                          top: 13.0,
                          bottom: 13.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        border:  OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffAAAAAA),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              50.0,
                            ),
                          ),
                        ),
                        hintText: 'Adam',
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        )),
                  ),
                 const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        contentPadding:  EdgeInsets.only(
                          top: 13.0,
                          bottom: 13.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        border:  OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffAAAAAA),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              50.0,
                            ),
                          ),
                        ),
                        hintText: 'Last Name',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        )),
                  ),

                const  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration:const InputDecoration(
                        contentPadding:  EdgeInsets.only(
                          top: 13.0,
                          bottom: 13.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        border:  OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffAAAAAA),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              50.0,
                            ),
                          ),
                        ),
                        hintText: 'Mobile Number',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        )),
                  ),
                const  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration:const InputDecoration(
                        contentPadding:  EdgeInsets.only(
                          top: 13.0,
                          bottom: 13.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        border:  OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffAAAAAA),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              50.0,
                            ),
                          ),
                        ),
                        hintText: 'smith02@gmail.com',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        )),
                  ),
                 const  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration:const InputDecoration(
                        contentPadding:  EdgeInsets.only(
                          top: 13.0,
                          bottom: 13.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        border:  OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffAAAAAA),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              50.0,
                            ),
                          ),
                        ),
                        hintText: 'House/Flat/Block No.',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        )),
                  ),

                const  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        contentPadding:  EdgeInsets.only(
                          top: 13.0,
                          bottom: 13.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        border:  OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffAAAAAA),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              50.0,
                            ),
                          ),
                        ),
                        hintText: 'Apartment/Road/Area',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        )),
                  ),

                const  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration:const InputDecoration(
                        contentPadding:  EdgeInsets.only(
                          top: 13.0,
                          bottom: 13.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        border:  OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffAAAAAA),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              50.0,
                            ),
                          ),
                        ),
                        hintText: 'Zipcode',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        )),
                  ),






                  // const Divider(
                  //   color: Colors.grey,
                  //   thickness: 0.5,
                  // ),
                ],
              ),
            ),



            Container(
              margin: const EdgeInsets.only(bottom: 10, top: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 211, 209, 209).withOpacity(0.4),
                borderRadius: BorderRadius.circular(8),
              ),
              width: MediaQuery.of(context).size.width * 0.9,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               Text('Save As', style: TextStyle(
                 color: Colors.black,
                 fontWeight: FontWeight.w500,
                 fontSize: 16,
               ),

               ),
                Row(

                )
                // Row(
                //   children: [
                //     TextFormField(
                //       decoration: InputDecoration(
                //           contentPadding: const EdgeInsets.only(
                //             top: 13.0,
                //             bottom: 13.0,
                //             left: 20.0,
                //             right: 20.0,
                //           ),
                //           border: const OutlineInputBorder(
                //             borderSide: BorderSide(
                //               color: Color(0xffAAAAAA),
                //               width: 1.0,
                //             ),
                //             borderRadius: BorderRadius.all(
                //               Radius.circular(
                //                 50.0,
                //               ),
                //             ),
                //           ),
                //           hintText: 'Zipcode',
                //           hintStyle: TextStyle(
                //             color: Colors.grey,
                //             fontWeight: FontWeight.w400,
                //             fontSize: 14,
                //           )),
                //     ),
                //
                //   ],
                // )

                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.only(bottom: 10, top: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color:const Color.fromARGB(255, 211, 209, 209).withOpacity(0.4),
                borderRadius: BorderRadius.circular(8),
              ),
              width: MediaQuery.of(context).size.width * 0.9,
              child:const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Save As', style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,

                  ),),
                ],
              ),

            ),


            Container()
          ],
        ),
      ),
    );
  }
}
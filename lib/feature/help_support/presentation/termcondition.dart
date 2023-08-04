import 'dart:developer';
import 'package:flutter/material.dart';
import '../../../utils/Api/api_calling/api_provider.dart';
import '../model/termcondition_model.dart';

class TermConditionPage extends StatefulWidget {
  const TermConditionPage({super.key});

  @override
  State<TermConditionPage> createState() => _TermConditionPage();
}

class _TermConditionPage extends State<TermConditionPage> {
  ApiProvider apiProvider = ApiProvider();

  TermsConditionsModel termsConditionsModel = TermsConditionsModel();
  void termConditionData() async {
    var resData = await apiProvider.getTermConditionData();
    log(resData.data!.toString());
    setState(() {
      termsConditionsModel = resData!;
    });
  }

  @override
  void initState() {
    super.initState();
    termConditionData();
  }

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
            "Terms & Conditions",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: termsConditionsModel.data != null
            ? SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10, top: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 211, 209, 209)
                            .withOpacity(0.2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            termsConditionsModel.data!.content ?? " ",
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Container()
                  ],
                ),
              )
            : const Center(
                child: CircularProgressIndicator.adaptive(),
              ));
  }
}

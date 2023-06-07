import 'package:flutter/material.dart';
class AppDrawar extends StatelessWidget {
  const AppDrawar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor:  Color(0XFF24ae60),
      child: SafeArea(
          child: SingleChildScrollView(
       
         child: Text("sfhksjdhfkjshdfkjhsd"),
      )),
    );
  }
  Widget customListTile(
      {required String title,
      required IconData icon,
      required BuildContext context,
      required void Function() onTap}) {
    return Container(
      padding: const EdgeInsets.only(left: 50),
      color: Colors.green.shade200,
      child: ListTile(
          leading: Icon(
            icon,
            color: Colors.white,
          ),
          minLeadingWidth: 7,
          title: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          onTap: onTap),
    );
  }

  Widget customExpansionTile(
      {required String title,
      required IconData icon,
      required List<Widget> children,
      required BuildContext context}) {
    return Theme(
      data: Theme.of(context).copyWith(
        unselectedWidgetColor: Colors.white,
        colorScheme: const ColorScheme.light(
          primary: Colors.white,
        ), // here for open state in replacement of deprecated accentColor
        dividerColor: Colors.transparent,
      ),
      child: ExpansionTile(
          expandedCrossAxisAlignment: CrossAxisAlignment.center,
          iconColor: Colors.white,
          title: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          leading: const Icon(
            Icons.person_3,
          ), //add icon
          children: children),
    );
  }
}

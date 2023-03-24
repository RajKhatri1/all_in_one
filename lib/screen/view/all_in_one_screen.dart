import 'package:all_in_one/screen/provider/allprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class all_in_one_screen extends StatefulWidget {
  const all_in_one_screen({Key? key}) : super(key: key);

  @override
  State<all_in_one_screen> createState() => _all_in_one_screenState();
}

class _all_in_one_screenState extends State<all_in_one_screen> {
  all_in_one_provider? trueprovider;
  all_in_one_provider? falseprovider;

  // @override
  // void initState() {
  //   super.initState();
  //   Provider.of<all_in_one_provider>(context, listen: false).initview();
  // }

  @override
  Widget build(BuildContext context) {
    trueprovider = Provider.of<all_in_one_provider>(context, listen: true);
    falseprovider = Provider.of<all_in_one_provider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("All In One"),
        ),
        body: GridView.builder(

          shrinkWrap: true,
          itemCount: falseprovider!.foodimg.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return apps(index);
          },
        ),
      ),
    );
  }

  Widget apps(int index) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              falseprovider!.initview(index);
              Navigator.pushNamed(context, 'web' , arguments: index);
            },
            child: Container(
              height: 130,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.cyan, borderRadius: BorderRadius.circular(10)),
              child: Image.asset("${falseprovider!.foodimg[index]}",fit: BoxFit.cover),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Text(
          "${falseprovider!.foodname[index]}",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, letterSpacing: 1),
        )
      ],
    );
  }
}

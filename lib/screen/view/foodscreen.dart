
import 'package:all_in_one/screen/provider/allprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class food_screen extends StatefulWidget {
  const food_screen({Key? key}) : super(key: key);

  @override
  State<food_screen> createState() => _food_screenState();
}

class _food_screenState extends State<food_screen> {
  all_in_one_provider? trueprovider;
  all_in_one_provider? falseprovider;

  @override
  Widget build(BuildContext context) {
    trueprovider = Provider.of<all_in_one_provider>(context, listen: true);
    falseprovider = Provider.of<all_in_one_provider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              itemCount: falseprovider!.foodimg.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return cat(index);
              },
            )),
      ),
    );
  }

  Widget cat(int index) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            falseprovider!.initview(index);
            Navigator.pushNamed(context, 'web');
          },
          child: Container(
            height: 130,
            width: 150,
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.black,blurStyle: BlurStyle.outer,blurRadius: 2)],
                color: Colors.cyan, borderRadius: BorderRadius.circular(10)),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("${falseprovider!.foodimg[index]}",
                    fit: BoxFit.cover)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "${falseprovider!.foodname[index]}",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, letterSpacing: 1),
        )
      ],
    );
  }
}

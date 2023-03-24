import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/allprovider.dart';

class ott_screen extends StatefulWidget {
  const ott_screen({Key? key}) : super(key: key);

  @override
  State<ott_screen> createState() => _ott_screenState();
}

class _ott_screenState extends State<ott_screen> {
  all_in_one_provider? trueprovider;
  all_in_one_provider? falseprovider;
  @override
  Widget build(BuildContext context) {
    trueprovider = Provider.of<all_in_one_provider>(context, listen: true);
    falseprovider = Provider.of<all_in_one_provider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.cyan,leading: Icon(Icons.menu),title: Text("Enetertainment"),centerTitle: true),

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),itemCount: falseprovider!.ottimg.length, itemBuilder: (context, index) {
            return raj(index);
          },),
        ),
      ),
    );
  }
  Widget raj(int index)
  {
    return  Column(
      children: [
        InkWell(
          onTap: () {
            falseprovider!.ottview(index);
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
                child: Image.asset("${falseprovider!.ottimg[index]}",
                    fit: BoxFit.cover)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "${falseprovider!.ottname[index]}",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, letterSpacing: 1),
        )
      ],
    );
  }
}

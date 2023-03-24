import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/allprovider.dart';

class ecom_screen extends StatefulWidget {
  const ecom_screen({Key? key}) : super(key: key);

  @override
  State<ecom_screen> createState() => _ecom_screenState();
}

class _ecom_screenState extends State<ecom_screen> {
  all_in_one_provider? trueprovider;
  all_in_one_provider? falseprovider;
  @override
  Widget build(BuildContext context) {
    trueprovider = Provider.of<all_in_one_provider>(context, listen: true);
    falseprovider = Provider.of<all_in_one_provider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.cyan,leading: Icon(Icons.menu),title: Text("E-commerce"),centerTitle: true),

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),itemCount: falseprovider!.ecomname.length, itemBuilder: (context, index) {
              return dog(index);
            },),
          ),
        ),
      ),
    );
  }
  Widget dog(int index)
  {
    return Column(
      children: [
        InkWell(
          onTap: () {
            falseprovider!.itinview(index);
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
                child: Image.asset("${falseprovider!.ecomimg[index]}",
                    fit: BoxFit.cover)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "${falseprovider!.ecomname[index]}",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, letterSpacing: 1),
        )
      ],
    );
  }
}

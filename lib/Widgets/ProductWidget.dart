import 'package:flutter/material.dart';

import '../ProductDetailsPage.dart';


class ProductWidget extends StatefulWidget {
  String img ;
  String title ;
  String desc ;
  String price ;
  ProductWidget({Key? key ,
     required this.img,
     required this.title,
     required this.desc,
     required this.price,
   }) : super(key: key);

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {



  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size ;
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailsPage(),));
      },
      child: Container(
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [BoxShadow(color: Colors.black12,blurRadius: 0.1 , spreadRadius: 0.5)],
          border: Border.all(color: Colors.grey.shade100 , width: 0.1)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              width: size.width, height: size.width /2.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(widget.img),
                  fit: BoxFit.cover
                )
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Flexible(
                child: Text(widget.title ,
                  overflow: TextOverflow.ellipsis,softWrap: true,
                  style: TextStyle(
                    color: Colors.black , fontSize: 15 , fontWeight: FontWeight.bold),),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(widget.desc ,style: TextStyle(
                  color: Colors.grey[600] , fontSize: 13 ),),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(widget.price ,style: TextStyle(
                  color: Colors.amber[600] , fontSize: 12 , fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 2,),

          ],
        ),
      ),
    );
  }
}

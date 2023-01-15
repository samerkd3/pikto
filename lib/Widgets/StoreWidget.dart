import 'package:flutter/material.dart';

import '../SelectStorePage.dart';


class StoreWidget extends StatefulWidget {
  String img ;
  String title ;
  String desc ;
  String dist ;
  String state ;
   StoreWidget({Key? key ,
     required this.img,
     required this.title,
     required this.desc,
     required this.dist,
     required this.state,
   }) : super(key: key);

  @override
  State<StoreWidget> createState() => _StoreWidgetState();
}

class _StoreWidgetState extends State<StoreWidget> {



  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size ;
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => SelectStorePage(),));
      },
      child: Container(
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [BoxShadow(color: Colors.black12,blurRadius: 5 , spreadRadius: 1)],
          border: Border.all(color: Colors.grey , width: 0.2)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(widget.img , fit: BoxFit.cover,width: size.width,height: size.width/2.5,),
             widget.state == 'مغلق' ?  Container(
                  width: size.width,
                  height: size.width/2.5,
                  decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(15),
                  ),
               child: Center(
                 child: Text('مغلق' , style: TextStyle(color: Colors.white ,
                     fontSize: 16 , fontWeight: FontWeight.bold),),
               ),
                ) : Container(),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(widget.title ,style: TextStyle(
                  color: Colors.black , fontSize: 15 , fontWeight: FontWeight.bold),),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(widget.desc ,style: TextStyle(
                  color: Colors.black , fontSize: 11 , fontWeight: FontWeight.w400),),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined , size: 16,),
                      Text(widget.dist ,style: TextStyle(
                          color: Colors.black , fontSize: 11 , fontWeight: FontWeight.bold),),
                    ],
                  ),
                  widget.state == 'مغلق' ? Container(): Row(
                    children: [
                      Icon(Icons.logout , size: 16,),
                      Text(widget.state ,style: TextStyle(
                          color: Colors.black , fontSize: 11 , fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 2,),

          ],
        ),
      ),
    );
  }
}

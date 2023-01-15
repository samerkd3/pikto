import 'package:flutter/material.dart';


class CategoryWidget extends StatefulWidget {
  String img ;
  String title ;
  CategoryWidget({Key? key ,
     required this.img,
     required this.title,
   }) : super(key: key);

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {



  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size ;
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [BoxShadow(color: Colors.black12,blurRadius: 0.1 , spreadRadius: 0.5)],
        border: Border.all(color: Colors.grey.shade100 , width: 0.1)
      ),
      child: Container(
        width: size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(widget.img),
            fit: BoxFit.cover
          )
        ),
        child:Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white38,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.title ,style: TextStyle(
                    color: Colors.black , fontSize: 15 , fontWeight: FontWeight.bold),),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

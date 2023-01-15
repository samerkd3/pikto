import 'package:flutter/material.dart';


class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size ;
    return Scaffold(
          body: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              width: size.width,
              height: size.height,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      width: size.width,
                      height: size.height /2.2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/clockapple.png'),
                          fit: BoxFit.cover,
                        )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22 , vertical: 55),
                        child: Align(
                            alignment: Alignment.topRight,
                            child: InkWell(
                                onTap: (){
                                  Navigator.of(context).pop();
                                },
                                child: Icon(Icons.arrow_back_ios , color: Colors.white,))),
                      ),
                    ),

                    SizedBox(height: 20,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12 , vertical: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text('ساعة أبل ألترا الجيل الجديد',style: TextStyle(
                                color: Colors.black , fontSize: 16 , fontWeight: FontWeight.bold
                            ),),
                          ),
                          Container(
                            width: size.width /5,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: Colors.black45,
                                width: 0.6
                              )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('+',style: TextStyle(
                                      color: Colors.black , fontSize: 16 , fontWeight: FontWeight.bold
                                  ),),
                                  Text('1',style: TextStyle(
                                      color: Colors.black , fontSize: 16 , fontWeight: FontWeight.bold
                                  ),),
                                  Text('-',style: TextStyle(
                                      color: Colors.black , fontSize: 16 , fontWeight: FontWeight.bold
                                  ),),

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12 , vertical: 3),
                      child: Text(' 8G , متوفر ب  4 ألوان ',style: TextStyle(
                          color: Colors.grey , fontSize: 14 , fontWeight: FontWeight.bold
                      ),),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14 , vertical: 0),
                      child: Text('2000 ر.س',style: TextStyle(
                          color: Colors.amber[800] , fontSize: 19 , fontWeight: FontWeight.w800
                      ),),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: Divider( color: Colors.grey,height: 22),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16 , vertical: 8),
                      child: Text('تفاصيل اكثر عن المنتج',style: TextStyle(
                          color: Colors.black , fontSize: 15 , fontWeight: FontWeight.w500
                      ),),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14 , vertical: 10),
                      child: Text('.موسبيإ ميرول صن نم خسن ىلع اًضيأ توح يتلاو ركيام جياب سودلأ لثم ينورتكلإلا رشنلا جمارب روهظ عم اَرخؤم ىرخأ ةرم رشتنيل داعو ،صنلا اذه نم عطاقم',style: TextStyle(
                          color: Colors.grey[600] , fontSize: 14 , fontWeight: FontWeight.w500
                      ),),
                    ),




                  ],
                ),
              ),
            ),
          ),
      bottomNavigationBar: Container(
        width: size.width,
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black45,width: 0.8
                ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Center(
                  child:Icon(Icons.favorite_border)
                ),
              ),
            ),

            Container(
              height: 50,
              width: size.width /1.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(50, 69, 148, 1)
              ),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Center(
                  child: Text('اضافة إلى السلة',style: TextStyle(
                      color: Colors.white , fontSize: 15 , fontWeight: FontWeight.bold
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

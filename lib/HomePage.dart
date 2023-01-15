import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

import 'StoriesPage.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SwiperController swiperController = SwiperController();
// samer
  List<String> img= [
    'images/swiper.png',
    'images/pr4.png',
    'images/swiper.png',
    'images/swiper.png',
  ] ;

  List<String> ct = [
    'images/ct1.png',
    'images/ct2.png',
    'images/ct3.png',
  ];

  List<String> ct_text = [
    'خدمات\nرقمية',
    'جديدنا',
    'عروضنا',
  ];

  bool location = false ;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size ;
    return Scaffold(
        backgroundColor: Colors.white,
      body: Container(
          width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12 , vertical: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    SizedBox(height: 30,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: size.width/5.1,
                          child: Image.asset('images/logo.png'),
                        ),
                        // Text('بكتو' , style:TextStyle(
                        //     color: Colors.deepPurple , fontSize: 25 , fontWeight: FontWeight.bold
                        // ),),
                        InkWell(
                          onTap: (){
                            setState(() {
                              location = true ;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12 , vertical: 4),
                              child: Text('التوصيل إلى: المدينة' , style: TextStyle(
                                color: Colors.black ,
                              ),),
                            ),
                          ),
                        ),

                        SizedBox(
                            width: size.width/5,
                            child: Icon(Icons.notifications_none , color: Colors.grey.shade600, )),
                      ],
                    ),

                    SizedBox(height: 8,),

                    Container(
                      width: size.width,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 2
                        )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            Icon(Icons.search , color: Colors.grey, size: 20,),
                            SizedBox(width: 12,),
                            Text('ابحث عن منتج ...' , style: TextStyle(
                              color: Colors.black ,
                            ),),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      height: size.height / 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Swiper(
                          controller: swiperController,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                  image: AssetImage(img[index]),
                                  fit: BoxFit.cover
                                )
                              ),
                            );
                          },
                          // autoplay: true,
                          itemCount: img.length,
                          scrollDirection: Axis.horizontal,
                          pagination: new SwiperPagination(
                            alignment: Alignment.bottomCenter,
                            margin: EdgeInsets.only(bottom: 12),
                            builder: new DotSwiperPaginationBuilder(
                                size: 8,
                                activeSize: 11,
                                color: Colors.white, activeColor: Colors.grey),
                          ),
                        ),
                      ),
                    ),

                    Container(
                   width: size.width,
                   height: 77,
                   child: Center(
                     child: ListView.builder(
                       itemCount: ct.length,
                        shrinkWrap: true,
                       scrollDirection: Axis.horizontal,
                       itemBuilder: (context, index) {
                       return Container(
                         width: size.width / 3.3,
                         height: 80,
                         child: Stack(
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(top: 14),
                               child: Container(
                                 width: size.width /3.6,
                                 height: 60,
                                 decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(12),
                                     color: Colors.white,
                                     boxShadow: [BoxShadow(color: Colors.black12 , blurRadius: 7 ,spreadRadius: 2)],
                                     border: Border.all(
                                         color: Colors.grey.shade400,
                                         width: 0.6
                                     )
                                 ),
                                 child: Align(
                                   alignment: Alignment.centerRight,
                                   child: Padding(
                                     padding: const EdgeInsets.symmetric(horizontal: 8),
                                     child: Text(ct_text[index], style: TextStyle(
                                         fontSize: 14 , fontWeight: FontWeight.w500 , color: Colors.black
                                     ),),
                                   ),
                                 ),
                               ),
                             ),

                             Padding(
                               padding: const EdgeInsets.only(left: 3),
                               child: Align(
                                   alignment: Alignment.topLeft,
                                   child: Image.asset(ct[index] , height: 75, fit: BoxFit.cover,)),
                             )
                           ],
                         ),
                       );
                     },),
                   )
                 ),

                    SizedBox(height: 8,),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: size.height / 3,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.grey.shade300,
                                width: 0.8,
                              ),
                              boxShadow: [BoxShadow(color: Colors.black12 , spreadRadius: 0.7 ,blurRadius: 4)],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text('خدمة التوصيل' , style: TextStyle(
                                      color: Colors.black , fontSize: 17 , fontWeight: FontWeight.bold
                                  ),),
                                  Text('توصيل سريع يوصلك\nبنفس اليوم' , style: TextStyle(
                                      color: Colors.black , fontSize: 15 , fontWeight: FontWeight.w500
                                  ),),

                                  Center(child: Image.asset('images/delivery.png' ,
                                    width: size.width /3 , fit: BoxFit.cover,)),

                                  Center(
                                    child: Container(
                                      width: size.width,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                          color: Colors.grey.shade300,
                                          width: 0.8,
                                        ),
                                        boxShadow: [BoxShadow(color: Colors.black12 , spreadRadius: 1 ,blurRadius: 9)],
                                      ),
                                      child:  Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 3),
                                        child: Center(
                                          child: Text('التوصيل الأن' , style: TextStyle(
                                            color: Colors.black , fontSize: 16 ,
                                          ),),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 8,),
                        Expanded(
                          child: Container(
                            height: size.height / 3,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.grey.shade300,
                                width: 0.8,
                              ),
                              boxShadow: [BoxShadow(color: Colors.black12 , spreadRadius: 0.7 ,blurRadius: 5)],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text('المتاجر' , style: TextStyle(
                                      color: Colors.black , fontSize: 17 , fontWeight: FontWeight.bold
                                  ),),
                                  Text('تسوق الان أفضل المنتجات المتنوعة' , style: TextStyle(
                                      color: Colors.black , fontSize: 15 , fontWeight: FontWeight.w500
                                  ),),

                                  Center(child: Image.asset('images/store.png' , width: size.width /3 , fit: BoxFit.cover,)),

                                  Center(
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => StoriesPage(),));
                                      },
                                      child: Container(
                                        width: size.width,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(12),
                                          border: Border.all(
                                            color: Colors.grey.shade300,
                                            width: 0.8,
                                          ),
                                          boxShadow: [BoxShadow(color: Colors.black12 , spreadRadius: 1 ,blurRadius: 9)],
                                        ),
                                        child:  Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 3),
                                          child: Center(
                                            child: Text('اطلب الأن' , style: TextStyle(
                                              color: Colors.black , fontSize: 16 ,
                                            ),),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 8,),
                    Container(
                      height: size.height / 5.7,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 0.8,
                        ),
                        boxShadow: [BoxShadow(color: Colors.black12 , spreadRadius: 1 ,blurRadius: 6)],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('خدمة الشحن' , style: TextStyle(
                                    color: Colors.black , fontSize: 14.5 , fontWeight: FontWeight.bold
                                ),),
                                Text('اشحن جميع منتجاتك بشكل\nامن وموثوق' , style: TextStyle(
                                    color: Colors.grey.shade800 , fontSize: 13 , fontWeight: FontWeight.bold
                                ),),

                                Center(
                                  child: Container(
                                    width: size.width / 2.4,
                                    decoration: BoxDecoration(
                                      color: Colors.blue.shade900,
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        color: Colors.grey.shade300,
                                        width: 0.8,
                                      ),
                                      boxShadow: [BoxShadow(color: Colors.black12 , spreadRadius: 1 ,blurRadius: 9)],
                                    ),
                                    child:  Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 3),
                                      child: Center(
                                        child: Text("اشحن الان" , style: TextStyle(
                                          color: Colors.white , fontSize: 16 ,
                                        ),),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),

                            Image.asset('images/send.png'),

                          ],
                        ),
                      ),
                    ),








                  ],
                ),
              ),
            ),


          location == false ? Container():  Container(
              width:size.width,
              height: size.height,
              color: Colors.black54,
            ),

            location == false ? Container():   Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: size.width,
                height: size.height/4,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Center(
                        child: Container(
                          width: 70,
                          height: 3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey
                          ),
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('العنوان' , style:TextStyle(
                              color: Colors.black , fontSize: 15 , fontWeight: FontWeight.bold
                          ),),

                          InkWell(
                              onTap: (){
                                setState(() {
                                  location = false ;
                                });
                              },
                              child: Icon(Icons.clear , color: Colors.grey,size: 16,)),
                        ],
                      ),
                      Divider(),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12 , vertical: 6),
                        child: Container(
                          width: size.width,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white ,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: Colors.grey ,
                              width: 0.5
                            )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add_circle_outlined , size: 18, color: Colors.blue[900],),
                              SizedBox(width: 8,),
                              Text('اضافة عنوان آخر ' , style:TextStyle(
                                  color: Colors.blue[900] , fontSize: 13 , fontWeight: FontWeight.w600
                              ),),
                            ],
                          ),
                        ),
                      ),

                      Divider(),


                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12 , vertical: 6),
                        child: Container(
                          width: size.width,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Colors.white ,
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                  color: Colors.grey ,
                                  width: 0.5
                              )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.location_on_outlined , size: 18, color: Colors.black,),
                                SizedBox(width: 8,),
                                Text('حي طيبة ,شارع علي بن عباس .8575 .حي طيبة' , style:TextStyle(
                                    color: Colors.black , fontSize: 13 , fontWeight: FontWeight.w600
                                ),),
                              ],
                            ),
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}

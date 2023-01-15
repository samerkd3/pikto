import 'package:flutter/material.dart';

import 'Widgets/ProductWidget.dart';


class SelectStorePage extends StatefulWidget {
  const SelectStorePage({Key? key}) : super(key: key);

  @override
  State<SelectStorePage> createState() => _SelectStorePageState();
}

class _SelectStorePageState extends State<SelectStorePage> with SingleTickerProviderStateMixin{

  TabController ?_tabController;

  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size ;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey[100],
          iconTheme: IconThemeData(
            color: Colors.black
          ),
        ),
        body: Container(
          width: size.width,
          height: size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Image.asset('images/apple.png' , width: size.width /3.6,),

                    SizedBox(width: 12,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text('متجر أبل ' , style: TextStyle(
                          color: Colors.black , fontSize: 15 ,
                        ),),
                        Text('توجد جميع الاجهزة لدينا' , style: TextStyle(
                          color: Colors.grey , fontSize: 13.5 ,
                        ),),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined , size: 14,),
                                Text("30 Km" ,style: TextStyle(
                                    color: Colors.grey , fontSize: 11 , fontWeight: FontWeight.bold),),
                              ],
                            ),
                             SizedBox(width: 22,) ,
                             Row(
                              children: [
                                Icon(Icons.logout , size: 14,),
                                Text('مفتوح' ,style: TextStyle(
                                    color: Colors.grey , fontSize: 11 , fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ],
                        ),


                      ],
                    )

                  ],
                ),

                Divider(color: Colors.black26),

                SizedBox(height: 4,),

                Container(
                  width: size.width,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          color: Colors.grey.shade300,
                          width: 0.7
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



                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8 , vertical: 2),
                  child: Container(
                    width: size.width,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TabBar(
                      controller: _tabController,
                      labelColor: Colors.black,
                      indicatorColor: Colors.blue[900],
                      isScrollable: true,
                      labelStyle: TextStyle(color: Colors.grey ,fontSize: 12 , fontFamily: 'Cairo'),
                      indicatorSize: TabBarIndicatorSize.tab,
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        Tab(
                          text: 'الكل',
                        ),
                        Tab(
                          text: 'الهواتف',
                        ),
                        Tab(
                          text: 'الأجهزة اللوحية',
                        ),
                        Tab(
                          text: 'الأجهزة المكتبية',
                        ),
                      ],
                    ),
                  ),
                ),

                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      TabProducts(),
                      TabProducts(),
                      TabProducts(),
                      TabProducts(),
                    ],
                  ),
                ),





              ],
            ),
          ),
        ),
      ),
    );
  }


  List<String> img2 = [
    'images/clockapple.png',
    'images/clockapple.png',
    'images/clockapple.png',
    'images/clockapple.png',
    'images/clockapple.png',
    'images/clockapple.png',
  ];

  List<String> ptitle = [
    "ساعة أبل ألترا الجيل الجديد",
    "ساعة أبل ألترا الجيل الجديد",
    "ساعة أبل ألترا الجيل الجديد",
    "ساعة أبل ألترا الجيل الجديد",
    "ساعة أبل ألترا الجيل الجديد",
    "ساعة أبل ألترا الجيل الجديد",
  ];
  List<String> pdesc = [
    'متوفر ب ٤ الوان',
    'متوفر ب ٤ الوان',
    'متوفر ب ٤ الوان',
    'متوفر ب ٤ الوان',
    'متوفر ب ٤ الوان',
    'متوفر ب ٤ الوان',
  ];

  List<String> price = [
    '600 ر.س',
    '340 ر.س',
    '500 ر.س',
    '180 ر.س',
    '620 ر.س',
    '750 ر.س',
  ];


  TabProducts(){
    var size = MediaQuery.of(context).size ;
    return Container(
      width: size.width,
      height: size.height,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 10,
                    mainAxisExtent: size.width /1.5
                ),
                itemCount: img2.length,
                itemBuilder:(context, index) {
                  return ProductWidget(
                    img: img2[index],
                    title: ptitle[index],
                    price: price[index],
                    desc: pdesc[index],
                  );
                },),
            ),

            Divider(),

            Container(
              width: size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(50, 69, 148, 1)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12 ,vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('عرض السلة',style: TextStyle(
                        color: Colors.white , fontSize: 17 , fontWeight: FontWeight.bold
                    ),),
                    Text('0.0 رس',style: TextStyle(
                        color: Colors.white , fontSize: 17 , fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }




}

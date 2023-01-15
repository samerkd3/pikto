import 'package:flutter/material.dart';
import 'package:pikto/Widgets/ProductWidget.dart';

import 'Widgets/CategoryWidget.dart';
import 'Widgets/StoreWidget.dart';


class StoriesPage extends StatefulWidget {
  const StoriesPage({Key? key}) : super(key: key);

  @override
  State<StoriesPage> createState() => _StoriesPageState();
}

class _StoriesPageState extends State<StoriesPage> with SingleTickerProviderStateMixin{
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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.8,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('المتاجر' , style: TextStyle(
          color: Colors.black , fontWeight: FontWeight.bold
        ),),
        iconTheme: IconThemeData(
          color: Colors.black
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [

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
                    indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(
                        text: 'المتاجر',
                      ),
                      Tab(
                        text: 'المنتجات',
                      ),
                      Tab(
                        text: 'التصنيفات',
                      ),
                    ],
                  ),
                ),
              ),

              Divider(color: Colors.grey),

              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    TabStories(),

                    TabProducts(),

                    TabCategory(),
                  ],
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }

  List<String> img = [
    'images/lg.png',
    'images/smsung.png',
    'images/adidas.png',
    'images/apple.png',
    'images/smsung.png',
    'images/apple.png',
  ];
  List<String> title = [
    'متجر LG',
    'متجر سامسونج',
    'متجر أديداس',
    'متجر أبل',
    'متجر سامسونج',
    'متجر أبل',
  ];
  List<String> desc = [
    'توجد جميع الاجهزة لدينا التي ستعجيكم',
    'توجد جميع الاجهزة لدينا التي ستعجيكم',
    'توجد جميع الاجهزة لدينا التي ستعجيكم',
    'توجد جميع الاجهزة لدينا التي ستعجيكم',
    'توجد جميع الاجهزة لدينا التي ستعجيكم',
    'توجد جميع الاجهزة لدينا التي ستعجيكم',
  ];
  List<String> dist = [
    '33 Km',
    '33 Km',
    '22 Km',
    '56 Km',
    '56 Km',
    '12 Km',
  ];
  List<String> state = [
    'مفتوح',
    'مغلق',
    'مفتوح',
    'مفتوح',
    'مغلق',
    'مفتوح',
  ];

  TabStories(){
    var size = MediaQuery.of(context).size ;
  return Container(
    width: size.width,
    height: size.height,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text('قائمة المتاجر' ,style: TextStyle(
              color: Colors.black , fontSize: 18 , fontWeight: FontWeight.bold),),
          Text('اختر متجرك المفضل الذي تود الشراء منه' ,
            style: TextStyle(color: Colors.grey , fontSize: 13.5 , fontWeight: FontWeight.bold),),

          SizedBox(height: 20,),

          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 10,
                mainAxisExtent: size.width /1.5
              ),
              itemCount: img.length,
              itemBuilder:(context, index) {
              return StoreWidget(
                img: img[index],
                title: title[index],
                dist: dist[index],
                desc: desc[index],
                state: state[index],
              );
            },),
          )


        ],
      ),
    ),
  );
  }

  List<String> img2 = [
    'images/pr1.png',
    'images/pr2.png',
    'images/pr3.png',
    'images/pr4.png',
    'images/pr1.png',
    'images/pr2.png',
  ];

  List<String> ptitle = [
    "مرطب الجسم",
    "مرطب الجسم",
    "مرطب الجسم",
    "مرطب الجسم",
    "مرطب الجسم",
    "مرطب الجسم",
  ];
  List<String> pdesc = [
    'متجر عطورنا',
    'متجر عطورنا',
    'متجر عطورنا',
    'متجر عطورنا',
    'متجر عطورنا',
    'متجر عطورنا',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: size.width,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                      color: Colors.grey.shade300,
                      width: 0.6
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

            SizedBox(height: 8,),
            Text('اختر منتج من متاجرنا المتعددة' , style: TextStyle(
              color: Colors.grey ,
            ),),

            SizedBox(height: 20,),

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
            )




          ],
        ),
      ),
    );
  }

  List<String> cimg = [
    'images/c1.png',
    'images/c2.png',
    'images/c1.png',
    'images/c2.png',
    'images/c1.png',
    'images/c2.png',
    'images/c1.png',
    'images/c2.png',
  ];

  List<String> ctitle = [
    'العناية الشخصية',
    'التجميل والعطور ',
    'العناية الشخصية',
    'التجميل والعطور ',
    'العناية الشخصية',
    'التجميل والعطور ',
    'العناية الشخصية',
    'التجميل والعطور ',
  ];


   TabCategory(){
     var size = MediaQuery.of(context).size ;
     return Container(
       width: size.width,
       height: size.height,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            SizedBox(height: 2,),
            Text('قائمة التصنيفات ' , style: TextStyle(
              color: Colors.black , fontSize: 17 , fontWeight: FontWeight.bold
            ),),

            Text('اختر التصنيف الذي تبحث عنه ..' , style: TextStyle(
                color: Colors.grey , fontSize: 14 ,
            ),),

            SizedBox(height: 20,),

            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 10,
                    mainAxisExtent: size.width /2.3
                ),
                itemCount: cimg.length,
                itemBuilder:(context, index) {
                  return CategoryWidget(
                    img: cimg[index],
                    title: ctitle[index],
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
                padding: const EdgeInsets.all(6.0),
                child: Center(
                  child: Text('اختيار',style: TextStyle(
                    color: Colors.white , fontSize: 17 , fontWeight: FontWeight.bold
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

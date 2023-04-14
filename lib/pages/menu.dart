import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuPages extends StatelessWidget {
  const MenuPages({super.key});

  @override
  Widget build(BuildContext context) {
Widget itemheader(){
  Widget itemcard(String img,String text){
    return Container(
        margin: EdgeInsets.only(left: 22,right: 5),
        height: 180,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(img),fit: BoxFit.cover)
      ),
        child: 
          Column(
            children: [
              Spacer(),
              Container(
                padding: EdgeInsets.all(10),
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10))
              ,
              child: Column(
                children: [
                  Text(
                    text,
                    style : GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w500
                    ),
                  )
                ],
              ),
        ),
            ],
          ),
      );
                      
  }
  return Column(
    children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal : 15,vertical : 30),
        child: Text('Favorite Item',
        style: GoogleFonts.inter(
                          color: Color(0xffDB9713),
                          fontSize: 22,
                          fontWeight: FontWeight.w500),
                    ),
      ),
      SizedBox(height: 20,),
      Row(
        children: [
          itemcard("favorite_img_1.jpg","lamp\n \$25"),
          itemcard("favorite_img_2.jpg","Traditional chair\n \$50"),
        ],
      ),
       SizedBox(height : 20 ),
      Row(
        children: [
          itemcard("favorite_img_6.jpg","Architectural\n \$70"),
          itemcard("favorite_img_5.jpg","Beach Beautiful\n \$80"), 
        ],
      ),
       SizedBox(height : 20,),
      Row(
        children: [
          itemcard("favorite_img_3.jpeg","Architectural\n \$70"),
          itemcard("favorite_img_4.jpg","Beach Beautiful\n \$80"), 
        ],
      )
    ],
  );
}

    Widget furnitureHeader() {
      Widget furnitureCard(String img,String text) {
        return Container(
          margin: const EdgeInsets.only(right: 16),
          child: Column(
            children: [
             
              Container(
                margin: EdgeInsets.only(bottom: 6),
                  padding: EdgeInsets.all(10),
                  height: 90,
                  width: 130,
                  decoration: BoxDecoration(
                      color: Color(0xffDB9713),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3))
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(img))),
                      ),
                      Spacer(),
                      Row(
                        children : [
                     Text(
                    text,
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ), 
                  Icon(IconData(0xe09b,fontFamily: 'MaterialIcons',matchTextDirection: true))
                    ]),
                    ]
                  )),
            ],
          ),
        );
      }

      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Container(
              margin: EdgeInsets.symmetric(horizontal: 22,vertical: 10),
               child: Text ('Category',
               style: GoogleFonts.inter(
                          color: Color(0xffDB9713),
                          fontSize: 20,
                          fontWeight: FontWeight.w500)
               ),
             ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                furnitureCard( "assets/plant_white_bg.png","plant"),
                furnitureCard("assets/lamp_white_bg.png","lamp"),
                furnitureCard("assets/chair_white_bg.png","chair"),
                furnitureCard("assets/plant_white_bg.png","plant"),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(140),
        child: Container(
          padding: EdgeInsets.all(20),
          color: Color(0xffDB9713),
          child: SafeArea(
              child: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Discover',
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Icon(
                    Icons.shopping_cart_sharp,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'What are you looking for',
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
            ],
          )),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
      BottomNavigationBarItem(icon: Icon(Icons.person),label: 'account')
      ]),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [furnitureHeader(),itemheader()],
        ),
      ),
    );
  }
}
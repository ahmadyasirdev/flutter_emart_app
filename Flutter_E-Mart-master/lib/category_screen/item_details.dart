import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:flutter/material.dart';
class ItemDetails extends StatelessWidget {
 final String? title;
  const ItemDetails({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
         IconButton(onPressed: (){}, icon: Icon(Icons.share,color: darkFontGrey,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline,color:darkFontGrey ,))
        ],
      ),
      body: Column(
        children: [
          Expanded(child: Padding(
            padding: EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VxSwiper.builder(
                    autoPlay: true,
                      height: 350,
                      aspectRatio: 16/9,
                      itemCount: 3, itemBuilder:(context, index){
                    return Image.asset(imgFc5,width: double.infinity,fit: BoxFit.cover,);
                  }),
                  title!.text.size(18).color(darkFontGrey).fontFamily(semibold).make(),
                  10.heightBox,
                  VxRating(onRatingUpdate: (value){},
                    normalColor: textfieldGrey,
                    selectionColor: golden,

                    count: 5,
                    size: 25,
                    stepInt: true,),
                  10.heightBox,
                  '\$30,000'.text.color(redColor).fontFamily(bold).size(18).make(),
                  10.heightBox,
                  Row(
                    children: [
                      Expanded(
                        child: Column(

                          children: [
                            'Seller'.text.fontFamily(semibold).red900.make(),
                            5.heightBox,
                            'In House Brands'.text.fontFamily(semibold).color(darkFontGrey).size(16).make()
                          ],
                        ),
                      ),
                      CircleAvatar(
                        child: Icon(Icons.message_rounded,color: darkFontGrey,),
                      )
                    ],
                  ).box.height(60).padding(EdgeInsets.symmetric(horizontal: 16)).color(textfieldGrey).make(),
                  //color section
                  SizedBox(height: 20,),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: 'Color:'.text.color(textfieldGrey).make(),
                          ),
                          Row(
                            children: List.generate(
                                3, (index) => VxBox()
                                .size(40, 40)
                                .roundedFull.
                            color(Vx.randomPrimaryColor)
                                .margin(EdgeInsets
                                .symmetric(horizontal: 4))
                                .make()),
                          ),
                        ],

                      ).box.padding(EdgeInsets.all(8)).make(),
                      //quqntity
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: 'Quantity:'.text.color(textfieldGrey).make(),
                          ),
                          Row(
                            children: [
                              IconButton(onPressed: (){}, icon: Icon(Icons.remove)),
                              '0'.text.size(16).color(darkFontGrey).fontFamily(bold).make(),
                              IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                              10.widthBox,
                              '(0 avabilabe)'.text.color(textfieldGrey).make(),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: 'Color:'.text.color(textfieldGrey).make(),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: 'Total:'.text.color(textfieldGrey).make(),
                              ),
                              '\$0.00'.text.size(16).color(redColor).fontFamily(bold).make()
                            ],
                          )
                        ],
                      ),
                      // total row



                    ],
                  ).box.white.shadowSm.make(),
                  //description section
                  10.heightBox,
                  'Description'.text.color(darkFontGrey).fontFamily(semibold).make(),
                  10.heightBox,
                  'This is a dumy item and dumy description hear..'.text.color(darkFontGrey).make(),
                  10.heightBox,
                  ListView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: List.generate(itemDetaliButtonsList.length, (index) => ListTile(
                      title: '${itemDetaliButtonsList[index]}'.text.semiBold.color(darkFontGrey).make(),
                      trailing: Icon(Icons.arrow_forward),
                    )),
                  ),
                  20.heightBox,
                  productsyoumaylike.text.fontFamily(bold).size(16).color(darkFontGrey).make(),
                  10.heightBox,
                  //i copied featured products
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(6, (index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(imgP1,width: 150,fit: BoxFit.cover,),
                          SizedBox(height: 10,),
                          'Laptop 4GB/64GB'.text.fontFamily(semibold).color(darkFontGrey).make(),
                          SizedBox(height: 10,),
                          '\$600'.text.color(redColor).fontFamily(bold).size(16).make()
                        ],
                      ).box.white.margin(EdgeInsets.symmetric(horizontal: 4)).roundedSM.padding(EdgeInsets.all(8)).make()),
                    ),
                  )



                ],
              ),
            ),
          )),

        SizedBox(
          height: 60,
          width: double.infinity,
          child: Container(
          decoration: BoxDecoration(
            color: Colors.red
          ),
          child: Center(child: Text('Add to Cart',style: TextStyle(color: Colors.white),)),
        ),)
        ],
      ),
    );
  }
}

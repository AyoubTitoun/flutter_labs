import 'package:flutter/material.dart';


class TitleRow extends StatelessWidget {

  const TitleRow ({super.key, required this.title, required this.location});
  final String title;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: (
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [Expanded(
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(title,style: TextStyle(fontWeight: FontWeight.bold),
                      ),
              ), 
                     Text(location, style :TextStyle(fontWeight: FontWeight.w100,  color: Colors.grey[500])),
                  ],),
          ),
      Icon(Icons.star,  color: Colors.red[500],),
      Text('41'),
      
      ],)
      ),
    );
  }

}









class IconCombined extends StatelessWidget {

const IconCombined ({ super.key,
required this.title, required this.icontitle
}
);
final String title;
final Icon icontitle;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return(Column(children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 4.0),
        child: icontitle,
      ), Text(title, style: TextStyle(color: Colors.purple ),),

    ],)
    );
  }

}

class RowButtons extends StatelessWidget {

  const RowButtons ({
    super.key
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: ( Row( 
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
               IconCombined(title:'CALL', icontitle: Icon(Icons.call,color: Colors.purple,)),
              IconCombined(title:'ROUTE', icontitle: Icon(Icons.near_me,color: Colors.purple,)),
              IconCombined(title:'SHARE', icontitle: Icon(Icons.share,color: Colors.purple,))
      ]
      
              
      
      )),
    );
   
  }


}


class FinalProduct extends StatelessWidget {

  const FinalProduct ({super.key});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ( Column(children: [
       Image.asset('../images/pic2001.jpg'),
            TitleRow(title: 'Villiers-sur-marne lake from here',location: 'Just next to my house in Villiers'),
           RowButtons(),
            SizedBox(height: 15,),
           Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Text('Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures  and pine forest, leads you to the lake, which warms to 20  degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.'))
    ],)
      
      
      
      );
  }}

 

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Center(child: Text("First Flutter Layout")),),
      body:  SingleChildScrollView(child: Center(
        child: FinalProduct(),
      )),
       
    ),
  )
  );
}

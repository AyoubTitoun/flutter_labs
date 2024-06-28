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



void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Center(child: Text("First Flutter Layout")),),
      body:  SingleChildScrollView(child: Center(
        child: Column(
          children: [
            Image.asset('../images/pic2001.jpg'),
            TitleRow(title: 'Villiers-sur-marne lake from here',location: 'Just next to my house in Villiers'),
          ],
        
        ),
      )),
       
    ),
  )
  );
}

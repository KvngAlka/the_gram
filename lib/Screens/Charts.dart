import 'package:flutter/material.dart';

class ChartPage extends StatefulWidget {
  @override
  _ChartPageState createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Material(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(50.0),
        child: IconButton(icon: Icon(Icons.edit, color: Colors.white,),
           onPressed: (){},),
      ),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text("Conversation",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.blueGrey),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black,),
            onPressed: (){},
          )
        ],
      ),
      body: Column(
        children: <Widget>[

          //search field
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              //margin: EdgeInsets.all(10.0),
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(143, 148, 251, .2),
                        blurRadius: 20.0,
                        offset: Offset(0,10)
                    )
                  ]
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 5, right: 10),
                child: TextField(
                  decoration: InputDecoration(border: InputBorder.none,
                    prefixIcon: Material(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.pinkAccent,
                        child: Icon(Icons.search,size: 30.0,color: Colors.white,)
                    ),
                    hintText: "Search friend",
                    hintStyle: TextStyle(fontSize: 20.0, letterSpacing: 1.0),
                  ),
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ),

          //chat list
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.maxFinite,
              child: ListView.builder(
                itemCount: 9,
                  itemBuilder: (context, index){
                return listTile(index.toString());
              }),
            ),
          )
        ],
      ),
    );
  }
  Widget listTile(String index){
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage("asset/images/1.jpg"),
        radius: 30.0,
      ),
      title: Text("Sender" + index,
        style: TextStyle(letterSpacing: 0.5, fontWeight: FontWeight.bold, fontSize: 20.0),),
      subtitle: Text("this is the message sent ",
        style: TextStyle(letterSpacing: 0.5,fontSize: 15.0, color: Colors.blueGrey),
        overflow: TextOverflow.ellipsis,),
    );
  }

}

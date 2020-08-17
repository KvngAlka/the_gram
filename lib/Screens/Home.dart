import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0), bottomRight: Radius.circular(20.0)),
                color: Colors.white,
//                boxShadow: [
//                  BoxShadow(
//                      color: Color.fromRGBO(143, 148, 251, .2),
//                      blurRadius: 10.0,
//                      offset: Offset(0,10)
//                  )
//                ]
            ),
            height: 230,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30.0,
                ),


                //upper part
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Hello", style: TextStyle(color: Colors.blueGrey, fontSize: 20),),
                            SizedBox(height: 5.0,),
                            Text("theGRAM!",
                              style: TextStyle(color: Theme.of(context).primaryColorDark,
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),

                        //the avatar that shows current user profile pic
                        CircleAvatar(
                            radius: 40.0,
                            backgroundImage: AssetImage("asset/images/1.jpg")
                        ),
                      ],
                    ),
                  ),
                ),

                //search field
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    //margin: EdgeInsets.all(10.0),
                    width: double.infinity,
                    height: 70,
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
                      padding: const EdgeInsets.only(left: 15.0, top: 10, right: 10),
                      child: TextField(
                        decoration: InputDecoration(border: InputBorder.none,
                          prefixIcon: Material(
                              borderRadius: BorderRadius.circular(50.0),
                              color: Colors.pinkAccent,
                              child: Icon(Icons.search,size: 30.0,color: Colors.white,)
                          ),
                          hintText: "Search friend",
                          hintStyle: TextStyle(fontSize: 20.0),
                        ),
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Container(
              width: double.infinity,
              height: double.maxFinite,


              child: CustomScrollView(
                slivers: <Widget>[


                  SliverList(
                    delegate: SliverChildListDelegate([
                      Container(
                        margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                        width: double.infinity,
                        height: 100.0,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 8,
                            itemBuilder: (BuildContext context, index){
                              return Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  width: 80,
                                  height: 80,
                                  child: CircleAvatar(radius: 100.0,
                                    backgroundImage: AssetImage("asset/images/1.jpg"),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ]),
                  ),


                  SliverList(
                    delegate: SliverChildListDelegate([
                      Container(
                        width: double.infinity,
                        height: 350,
                        child: ListView.builder(
                          itemCount: 5,
                            itemBuilder: (context, index){
                          return postCard();
                        }),
                      )
                    ]),
                  )

                ],
              ),
            ),
          )
        ],
      ),
    );
  }


  Widget postCard(){
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      height: 350,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        //color: Colors.blueGrey,
          color: Colors.white70,
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(143, 148, 251, .2),
              blurRadius: 20.0,
              offset: Offset(0,10)
          )
        ]
      ),
      child: Column(
        children: <Widget>[
          Expanded(
              child: Image(image: AssetImage("asset/images/1.jpg",),fit: BoxFit.fill,),
          ),
          Container(
            width: double.maxFinite,
            height: 60.0,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage("asset/images/1.jpg",),
                ),
                Text("kvng alka", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                IconButton(icon: Icon(Icons.more_vert),onPressed: (){},)
              ],
            ),
          )
        ],
      ),
    );
  }
}

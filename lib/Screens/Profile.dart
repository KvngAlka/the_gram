import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text("My Profile", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey),),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.more_vert, color: Colors.black,),onPressed: (){},)
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate([
                Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.0),bottomLeft: Radius.circular(20.0)),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0,10),
                          blurRadius: 10.0,
                          color: Colors.black12,
                        )
                      ]
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    width: double.infinity,
                    height: 219,

                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage("asset/images/1.jpg"),
                          radius: 40.0,
                        ),
                        SizedBox(height: 20.0,),
                        Text("Kvng Alka", style: TextStyle(letterSpacing: 1.0,fontWeight: FontWeight.bold, fontSize: 25.0),),
                        SizedBox(height: 20.0,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                          child: Text("Life is a one big fight...Live it with no regrets",textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20.0,color: Colors.blueGrey,letterSpacing: 1.0,),),
                        )
                      ],
                    ),
                  ),
                ),
            ]),
          ),





          //the follower and posts

//          SliverPersistentHeader(
//            delegate: Container(),
//            pinned: true,
//            floating: false,
//          ),


          //grid view
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 1.0,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                    height: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.pinkAccent,
                    ),
                    child: Image.asset('asset/images/1.jpg',fit: BoxFit.fill,),//Text('grid item $index'),
                  ),
                );
              },
              childCount: 11,
            ),
          ),
        ],
      ),
    );
  }
}

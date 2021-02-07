//import 'package:firebase_admob/firebase_admob.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import './api/business_post_api.dart';
import './api/sport_post_api.dart';
import './api/technology_post_api.dart';
import './models/business.dart';
import './nav_drawer.dart';
import 'api/home_post_api.dart';
import 'models/home.dart';
import 'models/business.dart';
import 'models/sport.dart';
import 'models/technology.dart';
import 'api/ad.dart';

class HomeScreen extends StatefulWidget {
    @override
    _HomeScreenState createState() => _HomeScreenState();
}
  
  class _HomeScreenState extends State<HomeScreen> {
   double screenWidth;
   HomePostApi homePostApi=HomePostApi();
   BusinessPostApi businessPostApi =BusinessPostApi();
   SportPostApi sportPostApi = SportPostApi();
   TechnologyPostApi technologyPostApi= TechnologyPostApi();
   BannerAd _bannerAd;
   InterstitialAd _interstitialAd;
   //String bannerAdUnitId="ca-app-pub-4412751165741856/5449907382";
   //String interstitialAdUnitId="ca-app-pub-4412751165741856/4180030075";
   String _appId="ca-app-pub-4412751165741856~9184944749";
   AdPage adPage= AdPage();
    @override
   void initState() {
    
    FirebaseAdMob.instance.initialize(
      appId: _appId,
    );
    _bannerAd=adPage.createBannerAd()..load()..show(anchorOffset: 60);

     FirebaseAdMob.instance.initialize(
      appId: _appId,
    );
    _interstitialAd=adPage.createInterstitialAd()..load()..show();
    super.initState();
  }
  @override
  void dispose() {
    _bannerAd.dispose();
    _interstitialAd.dispose();
    super.dispose();
  }
 
    @override
    Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
      screenWidth= size.width;
      return DefaultTabController(
        initialIndex: 0,
        length: 5,
         child:Scaffold(
            appBar: AppBar(
              title: Center(child: Text("Hule Addis")),
              backgroundColor: Colors.blue[700],
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: (){
                    adPage.createInterstitialAd();
                  },
                )
              ],
              bottom: TabBar(
                isScrollable: true,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.white,
                indicatorColor: Colors.black,
                tabs: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Home",style: TextStyle(fontSize: 18),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Business",style: TextStyle(fontSize: 18),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Sport",style: TextStyle(fontSize: 18),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Technology",style: TextStyle(fontSize: 18),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Video",style: TextStyle(fontSize: 18),),
                  ),
                ],
              ),
            ),
            drawer: NavDrawer(),
            body: Container(
                padding: EdgeInsets.all(24),
                child: TabBarView(
                  children: <Widget>[
                    FutureBuilder<List<Home>>(
                      future: homePostApi.fetchAllHomePosts(),
                      builder: (BuildContext context, AsyncSnapshot<List<Home>> snapshot){
                        switch(snapshot.connectionState){
                          case ConnectionState.active:
                          return _loading();
                          break;
                          case ConnectionState.waiting:
                          return _loading();
                          break;
                          case ConnectionState.none:
                          return _error('Connection problem');
                          break;
                          case ConnectionState.done:
                          if(snapshot.hasError){
                            _error(snapshot.error.toString());
                          }
                          if(snapshot.hasData){
                            return _drawHomePostsList(snapshot.data);
                          }
                          break;
                        }
                        return Container();
                      },
                    ),
                    FutureBuilder<List<Business>>(
                      future: businessPostApi.fetchAllBusinessPosts(),
                      builder: (BuildContext context, AsyncSnapshot<List<Business>> snapshot){
                        switch(snapshot.connectionState){
                          case ConnectionState.active:
                          return _loading();
                          break;
                          case ConnectionState.waiting:
                          return _loading();
                          break;
                          case ConnectionState.none:
                          return _error('Connection problem');
                          break;
                          case ConnectionState.done:
                          if(snapshot.hasError){
                            _error(snapshot.error.toString());
                          }
                          if(snapshot.hasData){
                            return _drawBusinessPostsList(snapshot.data);
                          }
                          break;
                        }
                        return Container();
                      },
                    ),
                    FutureBuilder<List<Sport>>(
                      future: sportPostApi.fetchAllSportPosts(),
                      builder: (BuildContext context, AsyncSnapshot<List<Sport>> snapshot){
                        switch(snapshot.connectionState){
                          case ConnectionState.active:
                          return _loading();
                          break;
                          case ConnectionState.waiting:
                          return _loading();
                          break;
                          case ConnectionState.none:
                          return _error('Connection problem');
                          break;
                          case ConnectionState.done:
                          if(snapshot.hasError){
                            _error(snapshot.error.toString());
                          }
                          if(snapshot.hasData){
                            return _drawSportPostsList(snapshot.data);
                          }
                          break;
                        }
                        return Container();
                      },
                    ),
                    FutureBuilder<List<Technology>>(
                      future: technologyPostApi.fetchAllTechnologyPosts(),
                      builder: (BuildContext context, AsyncSnapshot<List<Technology>> snapshot){
                        switch(snapshot.connectionState){
                          case ConnectionState.active:
                          return _loading();
                          break;
                          case ConnectionState.waiting:
                          return _loading();
                          break;
                          case ConnectionState.none:
                          return _error('Connection problem');
                          break;
                          case ConnectionState.done:
                          if(snapshot.hasError){
                            _error(snapshot.error.toString());
                          }
                          if(snapshot.hasData){
                            return _drawTechnologyPostsList(snapshot.data);
                          }
                          break;
                        }
                        return Container();
                      },
                    ),
                    Center(child: Text("No data",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))
                  ],
                ), 
            ),
         ),
      );
    }

     Widget _drawHomePostsList(List<Home> homePosts){
       Future<void> refreshHomePosts(){
        setState(() {
          return _drawHomePostsList( homePosts);
        });
        return null;
      }   
     return RefreshIndicator(
        onRefresh:refreshHomePosts,
        child: ListView.builder(
         //reverse: true,
         itemCount: homePosts.length,
         itemBuilder: (BuildContext context, int position){ 
          // adPage.createBannerAd2(); 
           //posts[position].title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
           return InkWell(
             onTap: (){
               Navigator.of(context).push(
                 MaterialPageRoute(
                   builder: (BuildContext context){  
                     return Scaffold(
                       appBar: AppBar(
                         leading: IconButton(
                           icon: Icon(Icons.arrow_back),
                           onPressed: (){
                             Navigator.of(context).pop();
                           },

                         ),
                         actions: <Widget>[
                           IconButton(
                             icon: Icon(Icons.bookmark),
                             onPressed: (){
                               adPage.createInterstitialAd();
                             },
                           )
                         ],
                         
                         backgroundColor: Colors.blue[700],

                       ),
                       body: SingleChildScrollView(
                         child: Column(
                           children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Text(homePosts[homePosts.length-position-1].title,style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)),
                              Padding(
                                padding: EdgeInsets.only(top: 20.0),
                                child: Image.network(homePosts[homePosts.length-position-1].featured,fit: BoxFit.fill,width: screenWidth,height: 300.0,)),
                              Padding(
                                padding: EdgeInsets.only(top:20.0,left: 15.0),
                                child: Text(homePosts[homePosts.length-position-1].description,style:TextStyle(fontSize: 20,color: Colors.black),)),
                           ],
                         ),
                       ),
                     );
                   }
                 )  
               );

             },
            child: Card(
               elevation: 10.0,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(20.0)
               ),
               child: Stack(
                 children: <Widget>[
                   Column(
                     children: <Widget>[
                       Container(
                         height: 200.0,
                         child: 
                             Image.network(homePosts[homePosts.length-position-1].featured,fit: BoxFit.fill,width: screenWidth-50.0,height: 200.0,),
                       ),
                       Padding(
                         padding: EdgeInsets.all(12.0),
                         child: Text(homePosts[homePosts.length-position-1].title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                       ),
                       Padding(
                         padding: EdgeInsets.symmetric(horizontal: 10.0),
                         child: Row(
                           children: <Widget>[
                             Text(homePosts[homePosts.length-position-1].source,style: TextStyle(color: Colors.teal,fontSize: 20,fontWeight: FontWeight.bold),),
                             Spacer(),
                             Text(homePosts[homePosts.length-position-1].createdat,style: TextStyle(color: Colors.black,fontSize: 14),)
                           ],
                         ),
                       ),
                       SizedBox(height: 20.0,),
                     ],
                   )
                 ],
               ),

             ),
           );

         },
       ),
     );
  }
  Widget _drawBusinessPostsList(List<Business> businessPosts){
     Future<void> refreshBusinessPosts(){
      setState(() {
        return _drawBusinessPostsList( businessPosts);
      });
        return null;
    }
     return RefreshIndicator(
       onRefresh: refreshBusinessPosts,
      child: ListView.builder(
         itemCount: businessPosts.length,
         itemBuilder: (BuildContext context, int position){
           //posts[position].title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
           return InkWell(
             onTap: (){
               Navigator.of(context).push(
                 MaterialPageRoute(
                   builder: (BuildContext context){
                     return Scaffold(
                       appBar: AppBar(
                         leading: IconButton(
                           icon: Icon(Icons.arrow_back),
                           onPressed: (){
                             Navigator.of(context).pop();
                           },

                         ),

                         actions: <Widget>[                           
                           IconButton(
                             icon: Icon(Icons.bookmark),
                             onPressed: (){
                                adPage.createInterstitialAd();
                             },
                           )
                         ],
                         backgroundColor: Colors.blue[700],

                       ),
                       body: SingleChildScrollView(
                         child: Column(
                           children: <Widget>[
                             Padding(
                               padding: EdgeInsets.only(top:15.0,left: 15.0,bottom: 15.0),
                               child: Text(businessPosts[businessPosts.length-position-1].title,style:TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                             ),
                              Padding(
                                padding: EdgeInsets.only(top: 20.0),
                                child: Image.network(businessPosts[businessPosts.length-position-1].featured,fit: BoxFit.fill,width: screenWidth,height: 300.0,)),
                              Padding(
                                padding: EdgeInsets.only(top:20.0,left: 15.0),
                                child: Text(businessPosts[businessPosts.length-position-1].description,style:TextStyle(fontSize: 20,color: Colors.black),)),
                           ],
                         ),
                       ),
                     );
                   }
                 )
                 
               );

             },
            child: Card(
               elevation: 10.0,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(20.0)
               ),
               child: Stack(
                 children: <Widget>[
                   Column(
                     children: <Widget>[
                       Container(
                         height: 200.0,
                         child: Image.network(businessPosts[businessPosts.length-position-1].featured,fit: BoxFit.fill,width: screenWidth-50.0,height: 200.0,),
                       ),
                       Padding(
                         padding: EdgeInsets.all(12.0),
                         child: Text(businessPosts[businessPosts.length-position-1].title,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                       ),
                       Padding(
                         padding: EdgeInsets.symmetric(horizontal: 10.0),
                         child: Row(
                           children: <Widget>[
                             Text(businessPosts[businessPosts.length-position-1].source,style: TextStyle(color: Colors.teal,fontSize: 20,fontWeight: FontWeight.bold),),
                             Spacer(),
                             Text(businessPosts[businessPosts.length-position-1].createdat,style: TextStyle(color: Colors.black,fontSize: 14),)
                           ],
                         ),
                       ),
                       SizedBox(height: 20.0,),
                     ],
                   )
                 ],
               ),

             ),
           );
         },
       ),
     );
  }

  Widget _drawTechnologyPostsList(List<Technology> technologyPosts){
     Future<void> refreshTechnologyPosts(){
      setState(() {
        return  _drawTechnologyPostsList(technologyPosts);
      });
      return null;
    }
     return RefreshIndicator(
       onRefresh: refreshTechnologyPosts,
        child: ListView.builder(
         itemCount: technologyPosts.length,
         itemBuilder: (BuildContext context, int position){
           //posts[position].title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
           return InkWell(
             onTap: (){
               Navigator.of(context).push(
                 MaterialPageRoute(
                   builder: (BuildContext context){
                     return Scaffold(
                       appBar: AppBar(
                         leading: IconButton(
                           icon: Icon(Icons.arrow_back),
                           onPressed: (){
                             Navigator.of(context).pop();
                           },

                         ),

                         actions: <Widget>[
                           IconButton(
                             icon: Icon(Icons.bookmark),
                             onPressed: (){
                                adPage.createInterstitialAd();
                             },
                           )
                         ],
                         backgroundColor: Colors.blue[700],

                       ),
                       body: SingleChildScrollView(
                         child: Column(
                           children: <Widget>[
                             Padding(
                               padding: EdgeInsets.only(top:15.0,left: 15.0,bottom: 15.0),
                               child: Text(technologyPosts[technologyPosts.length-position-1].title,style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                             ),
                              Padding(
                                padding: EdgeInsets.only(top: 20.0),
                                child: Image.network(technologyPosts[technologyPosts.length-position-1].featured,fit: BoxFit.fill,height: 300,width: screenWidth,)),
                              Padding(
                                padding: EdgeInsets.only(top:20.0,left: 15.0),
                                child: Text(technologyPosts[technologyPosts.length-position-1].description,style:TextStyle(fontSize: 20,color: Colors.black),)),
                           ],
                         ),
                       ),
                     );
                   }
                 )
                 
               );

             },
            child: Card(
               elevation: 10.0,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(20.0)
               ),
               child: Stack(
                 children: <Widget>[
                   Column(
                     children: <Widget>[
                       Container(
                         height: 200.0,
                         child: Image.network(technologyPosts[technologyPosts.length-position-1].featured,fit: BoxFit.fill,width: screenWidth-50.0,height: 200.0,),                          
                       ),
                       Padding(
                         padding: EdgeInsets.all(12.0),
                         child: Text(technologyPosts[technologyPosts.length-position-1].title,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                       ),
                       Padding(
                         padding: EdgeInsets.symmetric(horizontal: 10.0),
                         child: Row(
                           children: <Widget>[
                             Text(technologyPosts[technologyPosts.length-position-1].source,style: TextStyle(color: Colors.teal,fontSize: 20,fontWeight: FontWeight.bold),),
                             Spacer(),
                             Text(technologyPosts[technologyPosts.length-position-1].createdat,style: TextStyle(color: Colors.black,fontSize: 14),)
                           ],
                         ),
                       ),
                       SizedBox(height: 20.0,),
                     ],
                   )
                 ],
               ),

             ),
           );
         },
       ),
     );
  }

  Widget _drawSportPostsList(List<Sport> sportPosts){
     Future<void> refreshSportPosts(){
      setState(() {
        return _drawSportPostsList( sportPosts);
      });
        return null;
    }
     return RefreshIndicator(
       onRefresh: refreshSportPosts,
        child: ListView.builder(
         itemCount: sportPosts.length,
         itemBuilder: (BuildContext context, int position){
           //posts[position].title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
           return InkWell(
             onTap: (){
               Navigator.of(context).push(
                 MaterialPageRoute(
                   builder: (BuildContext context){
                     return Scaffold(
                       appBar: AppBar(
                         leading: IconButton(
                           icon: Icon(Icons.arrow_back),
                           onPressed: (){
                             Navigator.of(context).pop();
                           },

                         ),

                         actions: <Widget>[
                           IconButton(
                             icon: Icon(Icons.bookmark),
                             onPressed: (){
                                adPage.createInterstitialAd();
                             },
                           )
                         ],
                         backgroundColor: Colors.blue[700],

                       ),
                       body: SingleChildScrollView(
                         child: Column(
                           children: <Widget>[
                             Padding(
                               padding: EdgeInsets.only(top:15.0,left: 15.0,bottom: 15.0),
                               child: Text(sportPosts[sportPosts.length-position-1].title,style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                             ),
                              Padding(
                                padding: EdgeInsets.only(top:20.0),
                                child: Image.network(sportPosts[sportPosts.length-position-1].featured,fit: BoxFit.fill,height: 300,width: screenWidth,)),
                              Padding(
                                padding: EdgeInsets.only(top:20.0,left: 15.0),
                                child: Text(sportPosts[sportPosts.length-position-1].description,style:TextStyle(fontSize: 20,color: Colors.black),)),
                           ],
                         ),
                       ),
                     );
                   }
                 )
                 
               );

             },
            child: Card(
               elevation: 10.0,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(20.0)
               ),
               child: Stack(
                 children: <Widget>[
                   Column(
                     children: <Widget>[
                       Container(
                         height: 200.0,
                         child: Image.network(sportPosts[sportPosts.length-position-1].featured,fit: BoxFit.fill,width: screenWidth-50.0,height: 200.0,),
                      ),
                       Padding(
                         padding: EdgeInsets.all(12.0),
                         child: Text(sportPosts[sportPosts.length-position-1].title,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                       ),
                       Padding(
                         padding: EdgeInsets.symmetric(horizontal: 10.0),
                         child: Row(
                           children: <Widget>[
                             Text(sportPosts[sportPosts.length-position-1].source,style: TextStyle(color: Colors.teal,fontSize: 20,fontWeight: FontWeight.bold),),
                             Spacer(),
                             Text(sportPosts[sportPosts.length-position-1].createdat,style: TextStyle(color: Colors.black,fontSize: 14),)
                           ],
                         ),
                       ),
                       SizedBox(height: 20.0,),
                     ],
                   )
                 ],
               ),

             ),
           );
         },
       ),
     );
  }

  

     Widget _error(String error){
     return Container(
       child: Center(
         child: Text( error,style: TextStyle(fontSize: 16),),
       ),
     );
   }

    Widget _loading(){
      return Container(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
  }


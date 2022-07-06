import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({ Key? key }) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    List<String> category1 = [
    'Action',
    'Adventure',
    'Comedy',
    'War',
    'Drama'
  ];
  List<String> category2 = [
    'Fantasy',
    'Sci-Fi',
    'Horror',
    'Documentry',
    'Thriller'
  ];

    return SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
            height: MediaQuery.of(context).padding.top+60,
          ),
            CircleAvatar(
              radius: 42,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  CircleAvatar(
                    radius: 42,
                    backgroundColor: Colors.amber,
                    child: CircleAvatar(
                            radius: 40,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                'https://dm.henkel-dam.com/is/image/henkel/men_perfect_com_thumbnails_home_pack_400x400-wcms-international?scl=1&fmt=jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                  ),
                  const  Positioned(
                    left: 60,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.white,
                      child: Center(child: Icon(Icons.edit,size: 15,color: Colors.black,)),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                          'Afshin Yilmaz',
                          style: TextStyle(
                              fontFamily: 'NeueHaasDisplay',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
            ),
            const Padding(
              padding:  EdgeInsets.symmetric(horizontal:30.0,vertical: 20),
              child:  SizedBox(
                width: double.infinity,
                child: Text(
                            'Top Watch Categories ',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: 'NeueHaasDisplay',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white60),
                          ),
              ),
            ),
            SizedBox(
              height: 50,
              child: ListView(
                padding:const EdgeInsets.only(left: 30),
                scrollDirection: Axis.horizontal,
                  children: List<Widget>.generate(category1.length,(index)=>Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                    padding:const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      category1[index],
                      style: TextStyle(
                        fontFamily: 'NeueHaasDisplay',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: 
                        index==0?Colors.red.shade600:
                        index==1?Colors.amber.shade600:
                        index==2?Colors.pink.shade800:
                        index==3?Colors.green.shade500:
                        Colors.amber
                      ),
                    ),
                ),
                  ),
                ),
                ),
            ),
            SizedBox(
              height: 50,
              child: ListView(
                padding:const EdgeInsets.only(left: 30),
                scrollDirection: Axis.horizontal,
                  children: List<Widget>.generate(category2.length,(index)=>Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                    padding:const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      category2[index],
                      style: TextStyle(
                        fontFamily: 'NeueHaasDisplay',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: 
                        index==0?Colors.green.shade600:
                        index==1?Colors.blue.shade600:
                        index==2?Colors.cyanAccent.shade400:
                        index==3?Colors.purple.shade500:
                        Colors.amber
                      ),
                    ),
                ),
                  ),
                ),
                ),
            ),
            

            Padding(
              padding: const EdgeInsets.symmetric(horizontal:30.0,vertical: 20),
              child: Row(
                children: const[
                  Text(
                          'Watched Movies',
                          style: TextStyle(
                              fontFamily: 'NeueHaasDisplay',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.white70),
                        ),
                  Spacer(),
                  Text(
                          'View all',
                          style: TextStyle(
                              fontFamily: 'NeueHaasDisplay',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white70),
                        ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:30.0),
              child: LimitedBox(
                maxHeight: MediaQuery.of(context).size.height*3,
                maxWidth: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (BuildContext context,int index){
                    return Padding(
                      padding:const EdgeInsets.only(bottom: 15),
                      child: Row(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(image: Image.network('https://c4.wallpaperflare.com/wallpaper/764/590/391/inception-leonardo-dicaprio-movie-posters-2400x3500-entertainment-movies-hd-art-wallpaper-preview.jpg').image,
                              fit: BoxFit.fill
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const[
                                Text(
                                'Inception',
                                style: TextStyle(
                                    fontFamily: 'NeueHaasDisplay',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              SizedBox(height: 8,),
                              Text(
                                'Action, Adventure, Sci-Fi',
                                style: TextStyle(
                                    fontFamily: 'NeueHaasDisplay',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white54),
                              ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
    );
  }
}
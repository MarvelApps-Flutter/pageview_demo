import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> movieImageList = [
      'https://i.pinimg.com/originals/93/d3/30/93d330382e963458edb433ed100910d8.jpg',
      'https://images.squarespace-cdn.com/content/v1/55f32473e4b029b54a7228d2/1504141310256-ZUIG5Z8PTWFJWBUAQN0F/MINE+-+MOT+CREATIVE.jpg?format=1000w',
      'https://www.indiewire.com/wp-content/uploads/2017/09/imperial-dreams-2014.jpg?w=426',
      'https://m.media-amazon.com/images/I/91l6xNzLTbL._AC_SY679_.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBxAR7rqjTLrSO0MnrDZwzhdAOlgfc0kcfVQ&usqp=CAU',
      'https://c4.wallpaperflare.com/wallpaper/764/590/391/inception-leonardo-dicaprio-movie-posters-2400x3500-entertainment-movies-hd-art-wallpaper-preview.jpg'
    ];
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top + 20,
            ),
            const Text(
              'The Best of Entertainment',
              style: TextStyle(
                  fontFamily: 'NeueHaasDisplay',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Step out or stay in, intresting experiences for everyone',
                style: TextStyle(
                    fontFamily: 'NeueHaasDisplay',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  color: const Color(0xFF292A37),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Search',
                        style: TextStyle(
                            fontFamily: 'NeueHaasDisplay',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            LimitedBox(
              maxHeight: MediaQuery.of(context).size.height,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 0.8),
                itemCount: movieImageList.length,
                padding: const EdgeInsets.symmetric(vertical: 10),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) => Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: Image.network(movieImageList[index]).image,
                          fit: BoxFit.fill)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

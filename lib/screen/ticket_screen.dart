import 'package:flutter/material.dart';

class Ticket extends StatelessWidget {
  const Ticket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).padding.top + 20,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 20, 30, 15),
          child: Row(
            children: const [
              Text(
                'My tickets',
                style: TextStyle(
                    fontFamily: 'NeueHaasDisplay',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              Spacer(),
              Icon(
                Icons.confirmation_number,
                color: Colors.white,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0XFF292B37)),
            child: Stack(
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      margin: const EdgeInsets.all(4),
                      width: MediaQuery.of(context).size.width * 0.8 / 2 - 16,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFF333542)),
                      child: const Text(
                        'Cinema',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.83 / 2,
                      child: const Text(
                        'Concert',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: const Text(
              'Today tickets',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontFamily: 'NeueHaasDisplay',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
        ),
        _ticketCard(
          context,
          title: 'Venom',
          posterUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwxE48tME8I6pbZR-STMBUpCdbt6ztCQiAiA&usqp=CAU',
          imdbRating: 'IMDB 7.5',
          rating: ' 8.9',
          vendor: 'Guillermo del Toro',
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: const Text(
              'Upcoming tickets',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontFamily: 'NeueHaasDisplay',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
        ),
        _ticketCard(
          context,
          title: 'The Shawshank Redemption',
          posterUrl:
              'https://img.goldposter.com/2015/04/The-Shawshank-Redemption_poster_goldposter_com_27.jpg?x-oss-process=image/resize,m_fill,h_1024,w_653/quality,q_80',
          imdbRating: 'IMDB 9.5',
          rating: ' 9.8',
          vendor: 'Can Ulkay',
        ),
      ],
    );
  }

  Stack _ticketCard(BuildContext context,
      {required String title,
      required String rating,
      required String vendor,
      required String imdbRating,
      required String posterUrl}) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
              color: const Color(0xFF22222E),
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: Image.network(posterUrl).image,
                        fit: BoxFit.fill,
                      ),
                      color: Colors.black),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontFamily: 'NeueHaasDisplay',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          height: 1.4,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 10),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 18,
                          ),
                          Text(
                            rating,
                            style: const TextStyle(
                                fontFamily: 'NeueHaasDisplay',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.amber),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      vendor,
                      style: const TextStyle(
                          fontFamily: 'NeueHaasDisplay',
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 10,
          left: MediaQuery.of(context).size.width * 0.6,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              child: Text(
                imdbRating,
                style: const TextStyle(
                    fontFamily: 'NeueHaasDisplay',
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/movie_details_widget.dart';

import '../widgets/iconwidget.dart';



class MovieScrollDetail extends StatefulWidget {
  const MovieScrollDetail({Key? key}) : super(key: key);

  @override
  State<MovieScrollDetail> createState() => _MovieScrollDetailState();
}

class _MovieScrollDetailState extends State<MovieScrollDetail> {
  bool volume = true;
  bool isPlaying = true;

  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(children: [
                  Container(
                    height: 250,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://flxt.tmsimg.com/assets/p17699282_b_v13_ab.jpg'),
                        )),
                  ),
                  Align(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color:Colors.white10,
                                  borderRadius: BorderRadius.circular(30)
                                ),
                                child: IconWidget(
                                  padding: 5,
                                  icon: Icons.cast_rounded,
                                  size: 18,
                                  color: Colors.white70,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                    color:Colors.white10,
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.pop(context);
                                  },
                                  child: IconWidget(
                                    padding: 5,
                                    icon: Icons.cancel_outlined,
                                    size: 18,
                                    color: Colors.white70,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.black.withOpacity(0.5),
                          ),
                          margin: EdgeInsets.only(left: 20, right: 20, top: 110),
                          child: GestureDetector(
                                onTap: (){
                                  setState(() {
                                    isPlaying=!isPlaying;
                                  });
                                },
                              child: IconWidget(icon: isPlaying?Icons.play_arrow:Icons.pause, size: 40, padding: 8, color: Colors.white,)),
                        ),
                      ],
                    ),
                  ),

                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.black.withOpacity(0.5),
                          ),
                          margin: EdgeInsets.only(left: 20, right: 20, top: 200),
                          child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  volume =!volume;
                                });
                              },
                              child: IconWidget(icon: volume? Icons.volume_up_rounded:Icons.volume_off, size: 20, padding: 8, color: Colors.white,)),
                        ),
                      ],
                    ),
                  )
                ]),
                const MovieDetailsWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

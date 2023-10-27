import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainPage extends StatefulWidget {
  //final Function(int) refreshParent;
  MainPage({super.key});
  
  @override
  State<StatefulWidget> createState() => MainPageState();
}


class MainPageState extends State<MainPage> {
  int activeIndex = 0;

  List<List<String>> data = [
    ['music_1', 'Король и шут', "Наблюдатель"],
    ['music_2', 'Skillet', 'Monster'],
    ['music_3', 'Красная плесень', "Гимн панков"],
  ];

  MainPageState({Key ? key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 60),
            child: CarouselSlider.builder(
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.40,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                enlargeFactor: 0.5,
                
                onPageChanged: (index, reason) => 
                  setState(() => activeIndex = index),
              ),
              itemCount: data.length,
              itemBuilder: (context, index, realIndex) {
                final img = data[index];
                return buildImage(img![0], index);
              }
            ),
          ),
          
          
          Container(
            width: MediaQuery.of(context).size.width * 0.70,
            padding: EdgeInsets.only(top: 20),
            height: 74,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data[activeIndex][2], textAlign: TextAlign.left,  style: TextStyle(fontSize: 20),),
                    Text(data[activeIndex][1], textAlign: TextAlign.left,  style: TextStyle(fontSize: 14, color: Colors.grey))
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.reply, size: 30,),
                    Icon(Icons.more_vert, size: 30,)
                  ],
                )
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width * 0.70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.favorite_border),
                Icon(Icons.skip_previous, size: 40,),
                Icon(Icons.play_circle, size: 60,),
                Icon(Icons.skip_next, size: 40,),
                Icon(Icons.favorite)
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Slider(
              min: 0,
              max: 100,
              value: 30,
              onChanged: (value) {

                    
              },
            ),
          )
        ],
      ) 
      
    );
  }

  Widget buildImage(String img, int index) => Container(
    margin: EdgeInsets.symmetric(horizontal: 0),
    color: Colors.grey,
    child: Image(image: AssetImage("assets/images/" + img + ".jpg"),),
  );
}


// class MainPageState extends State<MainPage> {
//   //final Function(int) refreshParent;

//   MainPageState({Key ? key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         children: [
//           Container(
//             margin: EdgeInsets.only(top: 100, bottom: 40),
//             height: MediaQuery.of(context).size.height * 0.30,
//             child: ListView (
//               scrollDirection: Axis.horizontal,
//               children: [
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(25.0),
//                   child: Image(
//                     image: AssetImage("assets/images/music_1.jpg"),
                    
//                   )
//                 ),
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(25.0),
//                   child: Image(
//                     image: AssetImage("assets/images/music_1.jpg"),
                    
//                   )
//                 ),
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(25.0),
//                   child: Image(
//                     image: AssetImage("assets/images/music_1.jpg"),
                    
//                   )
//                 ),
//               ],
//             ),
//           )
          
//         ],
//       ) 
//     );
//   }
// }


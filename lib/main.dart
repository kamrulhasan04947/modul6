import 'package:flutter/material.dart';


void main(){
  runApp(const MainApp());
}


class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'module6',
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          color: Colors.deepOrangeAccent.withOpacity(0.7),
          titleSpacing: 15,
          toolbarHeight: 80,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const FirstActivity(),
    );
  }
}

class FirstActivity extends StatelessWidget{
  const FirstActivity({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Module-6',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white54,
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 2,
        actions: [
          IconButton(
              onPressed: (){
                  showDialog(context: context, builder: (context){
                    return AlertDialog(
                      titlePadding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 20,
                        bottom: 0,
                      ),
                      title: Text(
                        'Turn on location',
                         textAlign: TextAlign.center,
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text('Are you want to turnd on?'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: (){},
                                icon:Icon(
                                  Icons.check,
                                  color: Colors.green,
                                ),
                              ),
                              IconButton(
                                onPressed: (){},
                                icon:Icon(
                                  Icons.close,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),

                    );
                  });
              },
              icon: const Icon(
                Icons.location_on_outlined,
                size: 30,
              ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('hello'),
                      Image.network(
                        'https://images.news18.com/ibnlive/uploads/2021/08/android-developer-mode-162997861216x9.jpeg',
                        width:100,
                        height:100,
                        fit: BoxFit.scaleDown,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('hello'),
                      Image.network(
                        'https://images.news18.com/ibnlive/uploads/2021/08/android-developer-mode-162997861216x9.jpeg',
                        width:100,
                        height: 100,
                        fit: BoxFit.scaleDown,
                      ),
                    ],
                  ),

                ],
              ),
        ],
      )
      //Center(
      //   //Text Widget
      //   // Text(
      //   //   'Hi Panda how are you? Are you ready to eat our new dishes? New dishes is very delicious.',
      //   //   textAlign: TextAlign.center,
      //   //   maxLines: 2,
      //   //   style: TextStyle(
      //   //     fontSize: 24,
      //   //     fontWeight: FontWeight.w500,
      //   //     backgroundColor: Colors.deepOrange.withOpacity(0.8),
      //   //     color: Colors.white70,
      //   //     overflow: TextOverflow.ellipsis
      //   //   ),
      //   // ),
      //   //Icon
      //   // const Icon(
      //   //   Icons.android,
      //   //   size: 100,
      //   //   color: Colors.green,
      //   // ),
      //  
      //   //images
      //   //NetworkImages
      //   // Image.network(
      //   //   'https://live.staticflickr.com/3254/2892165844_16e2a3fda5_b.jpg',
      //   //   width: 300,
      //   //   height: 200,
      //   //   fit: BoxFit.fill,
      //   // ),
      //  
      // ),
    );
  }

}
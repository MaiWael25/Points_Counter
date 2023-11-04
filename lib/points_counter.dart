import 'package:flutter/material.dart';

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int counter1 = 1;
  int counter2 = 1;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffDE8F5F),
        title: const Text(
          "Points Counter",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 150),
                  color: Colors.white30,
                  width: double.infinity,
                  child: Column(
                    children: [
                      const Text(
                        "Team A",
                        style: TextStyle(fontSize: 40,),
                        textAlign: TextAlign.center,

                      ),
                      Text(
                        "$counter1",
                        style: const TextStyle(fontSize: 150,),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              counter1++;
                              print(counter1);
                            });
                          },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffDE8F5F)
                        ),

                          child: const Text(
                            "Add 1 Point",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                backgroundColor: Color(0xffDE8F5F)),
                          ),),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              counter1 += 2;
                              print(counter1);
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffDE8F5F)
                          ),
                          child: const Text(
                            "Add 2 Point",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                backgroundColor: Color(0xffDE8F5F)),
                          )),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              counter1 += 3;
                              print(counter1);
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffDE8F5F)
                          ),
                          child: const Text(
                            "Add 3 Point",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                backgroundColor: Color(0xffDE8F5F)),
                          )),
                    ],
                  ),
                ),
              ),
              //const SizedBox(
                //width: 25,
              //),
               Container(height:500,child: const VerticalDivider(color: Color(0xffDE8F5F),thickness: 2,indent: 5,endIndent: 6,)),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 150),
                  color: Colors.white30,
                  width: double.infinity,
                  child: Column(
                    children: [
                      const Text(
                        "Team B",
                        style: TextStyle(fontSize: 40,),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "$counter2",
                        style: const TextStyle(fontSize: 150,),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              counter2++;
                              print(counter2);
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffDE8F5F)
                          ),
                          child: const Text(
                            "Add 1 Point",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                backgroundColor: Color(0xffDE8F5F)),
                          )),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              counter2 += 2;
                              print(counter2);
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffDE8F5F)
                          ),
                          child: const Text(
                            "Add 2 Point",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                backgroundColor: Color(0xffDE8F5F)),
                          )),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              counter2 += 3;
                              print(counter2);
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xffDE8F5F)
                          ),
                          child: const Text(
                            "Add 3 Point",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                backgroundColor: Color(0xffDE8F5F)),
                          )),
                    ],
                  ),
                ),
              ),
            ],

          ),
          ElevatedButton(onPressed: (){
            setState(() {
              counter1=0;
              counter2=0;
            });
          }, style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffDE8F5F)
          ),
           child:const Text("Reset",style: TextStyle(fontSize: 20),) )

        ],


      ),
    );
  }
}

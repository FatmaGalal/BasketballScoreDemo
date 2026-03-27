import 'package:flutter/material.dart';

void main()
{
  runApp(BasketBallScore());
}

class BasketBallScore extends StatefulWidget
{
  @override
  State<BasketBallScore> createState() => _BasketBallScoreState();
}

class _BasketBallScoreState extends State<BasketBallScore> {
  int teamAPoints=0;

  int teamBPoints=0;

  void Add1Point()
  {
    teamAPoints++;
    print('$teamAPoints');
  }

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
            appBar: AppBar(
              title: Text('Basket Ball Score'),
              backgroundColor: Colors.orange,
            ),
      body: Column( 
        children: [
          SizedBox(height: 26,),
          Row( 
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('Team A', style: TextStyle(
                    fontSize: 40,
                    ),
                  ),
                  Text('$teamAPoints', style: TextStyle(
                      fontSize: 100,
                    ),
                  ),
                 SizedBox(height: 12,),
                 ElevatedButton(onPressed: (){
                  
                  setState(() {
                    teamAPoints++;
                  });
                 },

                  style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10),),
                  minimumSize: Size(150, 70),
                  backgroundColor: Colors.orange,
                 ),
                  child: Text('Add 1 Point', style: TextStyle(
                        fontSize: 18,
                       color: Colors.white,
                  ),
                 ), 
                
                 ),
                  SizedBox(height: 12,),
                   ElevatedButton(onPressed: (){
                      setState(() {
                        teamAPoints+=2;
                      });
                   }, 
                   style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10),),
                   minimumSize: Size(150, 70),
                   backgroundColor: Colors.orange,
                  ),
                  child: Text('Add 2 Points', style: TextStyle(
                        fontSize: 18,
                       color: Colors.white,
                  ),
                 ), 
                
                 ),
                SizedBox(height: 12,),
                   ElevatedButton(onPressed: (){
                    setState(() {
                      teamAPoints+=3;
                    });
                   }, 
                  style: ElevatedButton.styleFrom(
                   shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10), ),
                  minimumSize: Size(150, 70),
                  backgroundColor: Colors.orange,
                 ),
                  child: Text('Add 3 Points', style: TextStyle(
                        fontSize: 18,
                       color: Colors.white,
                  ),
                 ), 
                
                 ),
                  
                ],
              
               ),
            
            SizedBox(height: 500,
              child: VerticalDivider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
          
              Column(
                children: [
                  Text('Team B', style: TextStyle(
                    fontSize: 40,
                    ),
                  ),
                  Text('$teamBPoints', style: TextStyle(
                      fontSize: 100,
                    ),
                  ),
                SizedBox(height: 12,),
                 ElevatedButton(onPressed: (){
                  setState(() {
                    teamBPoints++;
                  });
                 }, 
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10),),
                  minimumSize: Size(150, 70),
                  backgroundColor: Colors.orange,
                 ),
                  child: Text('Add 1 Point', style: TextStyle(
                        fontSize: 18,
                       color: Colors.white,
                  ),
                 ), 
                
                 ),
                  SizedBox(height: 12,),
                   ElevatedButton(onPressed: (){
                    setState(() {
                      teamBPoints+=2;
                    });
                   }, 
                   style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10),),
                   minimumSize: Size(150, 70),
                   backgroundColor: Colors.orange,
                  ),
                  child: Text('Add 2 Points', style: TextStyle(
                        fontSize: 18,
                       color: Colors.white,
                  ),
                 ), 
                
                 ),
                SizedBox(height: 12,),
                   ElevatedButton(onPressed: (){
                    setState(() {
                      teamBPoints+=3;
                    });
                   }, 
                  style: ElevatedButton.styleFrom(
                   shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10),),
                  minimumSize: Size(150, 70),
                  backgroundColor: Colors.orange,
                 ),
                  child: Text('Add 3 Points', style: TextStyle(
                        fontSize: 18,
                       color: Colors.white,
                  ),
                 ), 
                
                 ),
                   
                ],
              
               ),
            ],
          ),
         

   SizedBox(height: 112,),
                   ElevatedButton(onPressed: (){
                    setState(() {
                      teamAPoints=0;
                      teamBPoints=0;
                    });
                   }, 
                  style: ElevatedButton.styleFrom(
                   shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10),),
                  minimumSize: Size(150, 70),
                  backgroundColor: Colors.orange,
                 ),
                  child: Text('Reset!', style: TextStyle(
                        fontSize: 18,
                       color: Colors.white,
                  ),
                 ), 
                
                 ),
                   

        ],
      ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Notify extends StatelessWidget {
   double width, height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text('Notifications'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top:20.0, left: 20.0),
            child: Text('Earlier', style: TextStyle(color: Colors.indigo , fontSize: 20.0, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0, left: 20.0),
            child: Container(
                 width: MediaQuery.of(context).size.width*0.90,
                 height:MediaQuery.of(context).size.height*0.11,
      decoration: BoxDecoration(
        //  border: Border.all(color: Colors.black)
        color: Colors.grey[300]
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: 
        // Text('Get 20% off your first order\n Use promo code: FIVERGROW20\n This offer ends today!\n 7M ago'),
      RichText(
  text: TextSpan(
    text: '',
    style: DefaultTextStyle.of(context).style,
    children: <TextSpan>[
      TextSpan(text: 'Get 20% off your first order\n Use promo code: FIVERGROW20\n This offer ends today!\n', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: ' 7m ago', ),
    ],
  ),
)
      ),
      
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(top:20.0, left: 20.0),
            child: Text('This Week', style: TextStyle(color: Colors.indigo , fontSize: 20.0, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0, left: 20.0),
            child: Container(
                 width: MediaQuery.of(context).size.width*0.90,
                 height:MediaQuery.of(context).size.height*0.11,
      decoration: BoxDecoration(
        //  border: Border.all(color: Colors.black)
        color: Colors.grey[300]
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: 
        // Text('Get 20% off your first order\n Use promo code: FIVERGROW20\n This offer ends today!\n 7M ago'),
      RichText(
  text: TextSpan(
    text: '',
    style: DefaultTextStyle.of(context).style,
    children: <TextSpan>[
      TextSpan(text: 'Get 20% off your first order\n Use promo code: FIVERGROW20\n This offer ends today!\n', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: ' 7m ago', ),
    ],
  ),
)
      ),
      
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0, left: 20.0),
            child: Container(
                 width: MediaQuery.of(context).size.width*0.90,
                 height:MediaQuery.of(context).size.height*0.11,
      decoration: BoxDecoration(
        //  border: Border.all(color: Colors.black)
        color: Colors.grey[300]
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: 
        // Text('Get 20% off your first order\n Use promo code: FIVERGROW20\n This offer ends today!\n 7M ago'),
      RichText(
  text: TextSpan(
    text: '',
    style: DefaultTextStyle.of(context).style,
    children: <TextSpan>[
      TextSpan(text: 'Get 20% off your first order\n Use promo code: FIVERGROW20\n This offer ends today!\n', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: ' 7m ago', ),
    ],
  ),
)
      ),
      
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0, left: 20.0),
            child: Container(
                 width: MediaQuery.of(context).size.width*0.90,
                 height:MediaQuery.of(context).size.height*0.11,
      decoration: BoxDecoration(
        //  border: Border.all(color: Colors.black)
        color: Colors.grey[300]
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: 
        // Text('Get 20% off your first order\n Use promo code: FIVERGROW20\n This offer ends today!\n 7M ago'),
      RichText(
  text: TextSpan(
    text: '',
    style: DefaultTextStyle.of(context).style,
    children: <TextSpan>[
      TextSpan(text: 'Get 20% off your first order\n Use promo code: FIVERGROW20\n This offer ends today!\n', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: ' 7m ago', ),
    ],
  ),
)
      ),
      
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0, left: 20.0),
            child: Container(
                 width: MediaQuery.of(context).size.width*0.90,
                 height:MediaQuery.of(context).size.height*0.11,
      decoration: BoxDecoration(
        //  border: Border.all(color: Colors.black)
        color: Colors.grey[300]
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: 
        // Text('Get 20% off your first order\n Use promo code: FIVERGROW20\n This offer ends today!\n 7M ago'),
      RichText(
  text: TextSpan(
    text: '',
    style: DefaultTextStyle.of(context).style,
    children: <TextSpan>[
      TextSpan(text: 'Get 20% off your first order\n Use promo code: FIVERGROW20\n This offer ends today!\n', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: ' 7m ago', ),
    ],
  ),
)
      ),
      
            ),
          )
        ],
      ),
      
    );
  }
}
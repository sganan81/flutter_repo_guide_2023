import 'package:flutter/material.dart';

import '../widgets/card_sample_widget.dart';

class CardSampleScreen extends StatelessWidget {
   
  const CardSampleScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
            CardSampleWidget(
              titulo: 'PRueba',               
            ),
            Card(
              child: FadeInImage(
                placeholder: AssetImage('assets/images/loading.gif'), 
                image: NetworkImage('https://www.frbb.utn.edu.ar/frbb/images/img5023.jpg'),
                fit: BoxFit.cover,
              ),
            )
        ],
      ),
    );
  }
}
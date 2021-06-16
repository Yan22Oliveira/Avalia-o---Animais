import 'package:flutter/material.dart';

import '../../helpers/helpers.dart';
import '../../mockdata/mockdata.dart';

import '../sub_animais/sub_animais_screen.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: colorFundo,
      appBar: AppBar(
        title: Text(
          "Animais",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(18),
        child: ListView.builder(
          itemCount: listaAnimais.length,
          itemBuilder: (context,index){
            return GestureDetector(

              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SubAnimaisScreen(animais: listaAnimais[index] ),
                  ),
                );
              },

              child: Card(
                elevation: 3,
                color: Colors.white,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Container(
                  height: 100,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 16,),
                      Expanded(
                        flex: 50,
                        child: Image.network(
                          listaAnimais[index].imagem,
                          fit: BoxFit.fitHeight,
                          height: 80,
                        ),
                      ),
                      const SizedBox(width: 16,),
                      Expanded(
                        flex: 50,
                        child: Text(
                          listaAnimais[index].nome,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16,),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );

  }
}

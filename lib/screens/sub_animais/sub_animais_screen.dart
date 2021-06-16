import 'package:flutter/material.dart';

import '../../mockdata/mockdata.dart';
import '../../models/models.dart';

class SubAnimaisScreen extends StatefulWidget {

  final Animais animais;
  SubAnimaisScreen({required this.animais});

  @override
  _SubAnimaisScreenState createState() => _SubAnimaisScreenState();
}

class _SubAnimaisScreenState extends State<SubAnimaisScreen> {

  List<SubAnimais> get getListaSubAnimais {
    final List<SubAnimais> listaSubAnimaisModel = [];
    listaSubAnimaisModel.addAll(
        listaSubAnimais.where(
              (animal) => animal.idAnimal == widget.animais.id,
        )
    );
    return listaSubAnimaisModel;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          widget.animais.nome,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: getListaSubAnimais.length,
          itemBuilder: (context,index){
            return Card(
              elevation: 3,
              color: Colors.white,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              child: Container(
                height: 160,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(

                      children: [

                        Expanded(
                          flex: 50,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  getListaSubAnimais[index].nomeCientifico,
                                  style: TextStyle(
                                    color: Colors.grey,

                                  ),
                                ),
                                const SizedBox(height: 6,),
                                Text(
                                  getListaSubAnimais[index].especie,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Expanded(
                          flex: 50,
                          child: Image.network(
                            getListaSubAnimais[index].foto,
                            fit: BoxFit.cover,
                            height: 160,
                            width: 160,
                          ),
                        ),

                      ],
                    ),

                  ],
                ),
              ),
            );
          },
        ),
      ),
    );

  }
}

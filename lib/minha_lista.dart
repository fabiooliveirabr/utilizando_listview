//   minha_lista.dart
import 'package:flutter/material.dart';

class MinhaLista extends StatefulWidget {

  const MinhaLista({super.key});

  @override
  State<MinhaLista> createState() => _MinhaListaState();
}

class _MinhaListaState extends State<MinhaLista> {
  final listaDeContatos = [
      {'nome': 'José' , 'email':'jose@email.com' , 'telefone':'111'},
      {'nome': 'Maria' , 'email':'maria@email.com' , 'telefone':'222'},
      {'nome': 'Rubens' , 'email':'rubens@email.com' , 'telefone':'333'},
      {'nome': 'Bruna' , 'email':'bruna@email.com' , 'telefone':'444'},
      {'nome': 'Lucas' , 'email':'lucas@email.com' , 'telefone':'555'},
  ]; 
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listaDeContatos.length,
      itemBuilder: (context, i){
        var contatos = listaDeContatos[i];
        return Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                    Text(contatos['nome'].toString(),),
                    Text(contatos['email'].toString(),),
                    Text(contatos['telefone'].toString(),),
                ],
              ),
              Divider(color: Colors.lightBlue,),
            ],
          ),
        );
      },
    );
  }
}
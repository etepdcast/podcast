import 'package:flutter/material.dart';
import 'package:pdcast/src/model/canal.dart';
import 'package:pdcast/src/model/podCast.dart';
import 'package:pdcast/src/ui/widgets/pod_cast_widget.dart';
import 'package:pdcast/src/utils/utils.dart';

class AbaPostsWidget extends StatefulWidget {
  @override
  _AbaPostsWidgetState createState() => _AbaPostsWidgetState();
}

class _AbaPostsWidgetState extends State<AbaPostsWidget> {

 final List<PodCast> podcasts = <PodCast>[
    PodCast(nome: 'A Cara do Brasil', autor: 'Autor 01', canal: Canal(categoria: Utils.categoriaArte)),
    PodCast(nome: 'A BH que queremos', autor: 'Autor 02', canal: Canal(categoria: Utils.categoriaMatematica)),
    PodCast(nome: 'A casa nômade', autor: 'Autor 03', canal: Canal(categoria: Utils.categoriaPortugues)),
    PodCast(nome: 'A Semana política', autor: 'Autor 014', canal: Canal(categoria: Utils.categoriaQuimica)),
    PodCast(nome: 'A nossa lingua de todo dia', autor: 'Autor 015', canal: Canal(categoria: Utils.categoriaHistoria)),
    PodCast(nome: 'A Politica como Ela É', autor: 'Autor 016', canal: Canal(categoria: Utils.categoriaIngles)),
    PodCast(nome: 'Academia CBN', autor: 'Autor 017', canal: Canal(categoria: Utils.categoriaGeografia)),
    PodCast(nome: 'Autoesporte na CBN', autor: 'Autor 018', canal: Canal(categoria: Utils.categoriaBiologia)),
    PodCast(nome: 'Educação ', autor: 'Autor 9384857', canal: Canal(categoria: Utils.categoriaMatematica)),
    PodCast(nome: 'Celulas', autor: 'Paulo Rafael Lopes', canal: Canal(categoria: Utils.categoriaBiologia)),

  ];

  // final List<String> entries = <String>['Post A', 'Post B',
  //   'Post C', 'Post D', 'Post E', 'Post F', 'Post G'];
  // final List<int> colors = <int>[600, 500, 100, 800, 600, 500, 100, 600];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: podcasts.length,
        itemBuilder: (BuildContext context, int index) {
          return PodCastWidget(podCast: podcasts[index]);
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
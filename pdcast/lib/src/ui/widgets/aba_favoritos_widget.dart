import 'package:flutter/material.dart';
import 'package:pdcast/src/model/canal.dart';
import 'package:pdcast/src/model/podCast.dart';
import 'package:pdcast/src/ui/widgets/pod_cast_widget.dart';
import 'package:pdcast/src/utils/utils.dart';

class AbaFavoritosWidget extends StatefulWidget {
  @override
  _AbaFavoritosWidgetState createState() => _AbaFavoritosWidgetState();
}

class _AbaFavoritosWidgetState extends State<AbaFavoritosWidget> {
final List<PodCast> podcasts = <PodCast>[
    PodCast(nome: 'A Cara do Brasil', autor: 'Autor 01', canal: Canal(categoria: Utils.categoriaArte)),
    PodCast(nome: 'A BH que queremos', autor: 'Autor 02', canal: Canal(categoria: Utils.categoriaMatematica)),
    PodCast(nome: 'A casa nômade', autor: 'Autor 03', canal: Canal(categoria: Utils.categoriaPortugues)),
    PodCast(nome: 'A Semana política', autor: 'Autor 014', canal: Canal(categoria: Utils.categoriaQuimica)),
  ];

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

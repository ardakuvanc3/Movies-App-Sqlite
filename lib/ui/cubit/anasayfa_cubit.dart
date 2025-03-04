

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/data/entity/filmler.dart';
import 'package:movies/data/repo/filmlerdao_repository.dart';

class AnasayfaCubit extends Cubit<List<Filmler>> {
  AnasayfaCubit():super(<Filmler>[]);

  var frepo = FilmlerDaoRepository();

  Future<void> filmleriYukle() async {
    var liste = await frepo.filmleriYukle();
    emit(liste);
  }
}
import 'package:get/get.dart';
import 'package:peticiones/data/services/peticionuser.dart';
import 'package:peticiones/domain/models/user.dart';

class UserController extends GetxController {
  final Rxn<List<User>> listalocal = Rxn<List<User>>([]);

  Future<void> crearLista() async {
    listalocal.value = await PeticionesUser.getUser();
    print(listalocal.value);
  }

  List<User>? get listaFinalUser => listalocal.value;
}

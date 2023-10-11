import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peticiones/domain/controllers/controlleruser.dart';

class ListUser extends StatelessWidget {
  const ListUser({super.key});

  @override
  Widget build(BuildContext context) {
    UserController uc = Get.find();
    uc.crearLista();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Usuarios del sistema'),
      ),

      body: Obx(() => 
            ListView.builder(
             itemCount: uc.listaFinalUser!.length,
             itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text('$index'),
            ),
            title: Text('Nombre de usuario $index'),
            subtitle: Text('Strat - city (lat - ing)$index'),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.map_rounded)),
          );
        },
        ),
      ),
    );
  }
}

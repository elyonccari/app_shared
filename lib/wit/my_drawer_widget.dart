import 'package:flutter/material.dart';

class MyDrawerWidget extends StatelessWidget {
  const MyDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://images.pexels.com/photos/53581/bald-eagles-bald-eagle-bird-of-prey-adler-53581.jpeg"),
              ),
            ),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.amber,
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg"),
                  ),
                  Text(
                    "Fiorella Rojas Padilla",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Administrador",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Mi Perfil"),
          ),
          ListTile(
            leading: Icon(Icons.file_copy),
            title: Text("Portafolio"),
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text("Cambiar contraseña"),
          ),
          Divider(
            indent: 20,
            endIndent: 20,
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Salir del App"),
          ),
        ],
      ),
    );
  }
}
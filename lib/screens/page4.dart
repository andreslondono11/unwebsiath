import 'package:flutter/material.dart';

import 'package:unwebsiath/drawer/lateral.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: const Color(0xfff921b21),
              shadowColor: const Color(0xfff921b21),
              elevation: 10.5,
              title: const Text(
                'Politicas de Seguridad',
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            drawer: const DrawerWigdet(),
            body: ListView(
              children: [
                imagenes(),
                const SizedBox(height: 10),
                titulopr(),
                const SizedBox(height: 10),
                contenido1(),
                const SizedBox(height: 10),
                titulopr1(),
                const SizedBox(height: 10),
                contenido2(),
                const SizedBox(height: 10),
                titulopr2(),
                const SizedBox(height: 10),
                contenido3(),
                const SizedBox(height: 10),
                titulopr3(),
                const SizedBox(height: 10),
                contenido4(),
                const SizedBox(height: 10),
                titulopr4(),
                const SizedBox(height: 10),
                contenido5(),
                const SizedBox(height: 10),
                titulopr5(),
                const SizedBox(height: 10),
                contenido6(),
                const SizedBox(height: 10),
                titulopr6(),
                const SizedBox(height: 10),
                contenido7(),
                botones()
              ],
            )));
  }
}

Widget imagenes() {
  return const Image(
    image: AssetImage("assets/images/fondopg4.png"),
    // width: 5000,

    // color: const Color.fromARGB(221, 241, 240, 230),
  );
}

Widget titulopr() {
  return const Text(
    'TERMINOS Y CONDICIONES',
    textAlign: TextAlign.center,
    style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline),
  );
}

Widget contenido1() {
  return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 30,
      ),
      margin: const EdgeInsets.all(1),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '-La app recoge la posicion del Usuario ',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.justify,
          ),
          Text(
            '-La posicion del usuario no se muestra a ningun otro usuario y tampoco es compartida con otra persona, entida o terceras personas',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.justify,
          ),
          Text(
            '-El motivo de la recopilación de la posición del usuario es estrictamente de Caracter técnico',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.justify,
          ),
          Text(
            '-Las imágenes y vídeos introducidos por el usuario se envían al servidor de la aplicación para ser recuperados posteriormente por el propio usuario, y para que la aplicación pueda ofrecer las funcionalidades de acuerdo con su descripción.',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.justify,
          ),
          Text(
            '-Permitimos que empresas de terceros publiquen anuncios y recopilen cierta información anónima cuando visita nuestra aplicación. Estas empresas pueden utilizar información anónima, como su ID de publicidad de Google, el tipo y la versión de su dispositivo, la actividad de navegación, la ubicación y otros datos técnicos relacionados con su dispositivo, con el fin de proporcionar anuncios.',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.justify,
          )
        ],
      ));
}

Widget contenido2() {
  return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 30,
      ),
      margin: const EdgeInsets.all(1),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '-El presente Política de Privacidad establece los términos en que PZPLATINUM LMTDA usa y protege la información que es proporcionada por sus usuarios al momento de utilizar su sitio web. Esta compañía está comprometida con la seguridad de los datos de sus usuarios. Cuando le pedimos llenar los campos de información personal con la cual usted pueda ser identificado, lo hacemos asegurando que sólo se empleará de acuerdo con los términos de este documento. Sin embargo esta Política de Privacidad puede cambiar con el tiempo o ser actualizada por lo que le recomendamos y enfatizamos revisar continuamente esta página para asegurarse que está de acuerdo con dichos cambios. ',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ));
}

Widget titulopr1() {
  return const Text(
    'POLÍTICA DE PRIVACIDAD',
    textAlign: TextAlign.center,
    style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline),
  );
}

Widget titulopr2() {
  return const Text(
    'Información que es recogida',
    textAlign: TextAlign.center,
    style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline),
  );
}

Widget contenido3() {
  return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 30,
      ),
      margin: const EdgeInsets.all(1),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '-Nuestra aplicación no podrá recoger información personal por ejemplo: Nombre,  información de contacto como  su dirección de correo electrónica e información demográfica.  ',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ));
}

Widget titulopr3() {
  return const Text(
    'Uso de la información recogida',
    textAlign: TextAlign.center,
    style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline),
  );
}

Widget contenido4() {
  return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 30,
      ),
      margin: const EdgeInsets.all(1),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '-Nuestra aplicación no emplea la información con el fin de proporcionar el mejor servicio posible, particularmente para mantener un registro de usuarios, de pedidos en caso que aplique, y mejorar nuestros productos y servicios. PZPLATINUM LMTDA está altamente comprometido para cumplir con el compromiso de mantener su información segura. Usamos los sistemas más avanzados y los actualizamos constantemente para asegurarnos que no exista ningún acceso no autorizado.  ',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ));
}

Widget titulopr4() {
  return const Text(
    'Cookies',
    textAlign: TextAlign.center,
    style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline),
  );
}

Widget titulopr5() {
  return const Text(
    'Enlaces a Terceros y  Contenido de Publicidad',
    textAlign: TextAlign.center,
    style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline),
  );
}

Widget titulopr6() {
  return const Text(
    'Control de su información personal y responsabilidades',
    textAlign: TextAlign.center,
    style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline),
  );
}

Widget contenido5() {
  return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 30,
      ),
      margin: const EdgeInsets.all(1),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '-Una cookie se refiere a un fichero que es enviado con la finalidad de solicitar permiso para almacenarse en su ordenador, al aceptar dicho fichero se crea y la cookie sirve entonces para tener información respecto al tráfico web, y también facilita las futuras visitas a una web recurrente. Otra función que tienen las cookies es que con ellas las web pueden reconocerte individualmente y por tanto brindarte el mejor servicio personalizado de su web.  ',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.justify,
          ),
          Text(
            '-Nuestra aplicación no  emplea las cookies para poder identificar las páginas que son visitadas y su frecuencia. Esta información posiblemente la empleen los enlaces públicos que son de terceros y no del propietario de la aplicación para un posible  análisis estadístico y después la información se elimina de forma permanente. Usted puede eliminar las cookies en cualquier momento desde su ordenador. Sin embargo las cookies ayudan a proporcionar un mejor servicio de los sitios web, estás no dan acceso a información de su ordenador ni de usted, a menos de que usted así lo quiera y la proporcione directamente noticias. Usted puede aceptar o negar el uso de cookies, sin embargo la mayoría de navegadores aceptan cookies automáticamente pues sirve para tener un mejor servicio web. También usted puede cambiar la configuración de su ordenador para declinar las cookies. Si se declinan es posible que no pueda utilizar algunos de nuestros servicios. ',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ));
}

Widget contenido6() {
  return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 30,
      ),
      margin: const EdgeInsets.all(1),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '-En cualquier momento usted puede restringir la recopilación o el uso de la información proporcionada a nuestra a aplicación. Esta compañía no venderá, cederá ni distribuirá la información personal que es recopilada sin su consentimiento, salvo que sea requerido por un juez con un orden judicial. ',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.justify,
          ),
          Text(
            '-PZPLATINUM LMTDA Se reserva el derecho de cambiar los términos de la presente Política de Privacidad en cualquier momento.',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ));
}

Widget contenido7() {
  return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 30,
      ),
      margin: const EdgeInsets.all(1),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '-El presente Política de Privacidad establece los términos en que PZPLATINUM LMTDA usa y protege la información que es proporcionada por sus usuarios al momento de utilizar su sitio web. Esta compañía está comprometida con la seguridad de los datos de sus usuarios. Cuando le pedimos llenar los campos de información personal con la cual usted pueda ser identificado, lo hacemos asegurando que sólo se empleará de acuerdo con los términos de este documento. Sin embargo esta Política de Privacidad puede cambiar con el tiempo o ser actualizada por lo que le recomendamos y enfatizamos revisar continuamente esta página para asegurarse que está de acuerdo con dichos cambios. ',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ));
}

Widget botones() {
  return TextButton(onPressed: () => {}, child: const Text('gracias'));
}

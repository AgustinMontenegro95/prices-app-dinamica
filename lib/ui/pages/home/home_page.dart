import 'package:flutter/material.dart';
import 'package:prices_dinamica/ui/pages/home/widgets/footer.dart';
import 'package:prices_dinamica/ui/pages/home/widgets/link_url_text_rich.dart';
import 'package:prices_dinamica/ui/pages/home/widgets/redirect_listtile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Image.asset(
          'assets/images/Dinamica.png',
          height: 40,
        ),
        elevation: 10,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 50),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 0.0),
                      child: Text(
                        "Costos de DINÁMICA",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Column(
                      children: const [
                        RedirectListtile(
                            title: "Ingresar dinero",
                            route: "/ingresar-dinero"),
                        RedirectListtile(
                            title: "Retiro efectivo",
                            route: "/retiro-efectivo"),
                        RedirectListtile(
                            title: "Transferir dinero",
                            route: "/transferir-dinero"),
                      ],
                    ),
                    const Center(
                      child: LinkUrlTextRich(
                          leftText:
                              "¿Encontraste lo que buscabas? Si necesitas ayuda ",
                          url: "https://pay.dinamicaonline.com.ar/contacto",
                          name: "ponete en contacto con nosotros",
                          rightText: "."),
                    ),
                    Container(),
                    Container(),
                    Container(),
                  ],
                ),
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}

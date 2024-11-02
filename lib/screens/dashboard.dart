import 'package:flutter/material.dart';
import 'package:google_bookmark/screens/login.dart';
import 'package:google_bookmark/screens/components/primary_button.dart';
import 'package:google_bookmark/theme.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: AppBackgroundProperties.boxDecoration,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/images/introduction_image.png',
                  fit: BoxFit.cover,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Text(
                  "Google Bookmark",
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 64, right: 64),
                child: Text(
                  "Salve seus livros favoritos do Google Books, e adicione datas de leitura e notas para acompanhar seu progresso.",
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).padding.bottom + 16),
                child: PrimaryButton(
                  text: "Entrar",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login(),
                        ));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

import 'package:diamon_rose_app/presentation/navigation/page.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RegisterComplete extends StatefulWidget {
  const RegisterComplete({Key? key}) : super(key: key);

  @override
  _RegisterCompleteState createState() => _RegisterCompleteState();
}

class _RegisterCompleteState extends State<RegisterComplete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(Localy.of(context)!.textHeaderRegisterComplete),
        backgroundColor: Colors.purple[400],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/png/app_background.png"),
                fit: BoxFit.cover)),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: heightScreen() / 3),
                Text(Localy.of(context)!.textH1RegisterComplete,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
                SizedBox(
                  height: 6,
                ),
                Text(
                  Localy.of(context)!.textTitleRegisterComplete,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                      onPressed: () => goTo(screen: ROUTER_EDIT_INFO),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.blue,
                          minimumSize: Size(widthScreen(), 50)),
                      child: Text(Localy.of(context)!.labelNext)),
                )
              ]),
        ),
      ),
    );
  }
}

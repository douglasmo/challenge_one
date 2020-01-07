import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clone Udemy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Size tela;

  @override
  Widget build(BuildContext context) {
    tela = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _menuAppBar(context),
              _indexHeader(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _indexHeader(context) {
    return Container(
      width: tela.width,
      height: tela.width * .80,
      decoration: BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.topCenter,
          image: NetworkImage(
              "https://i.udemycdn.com/notices/home_banner/image/048e0cdc-3e71-47dc-ae30-e9ac7a3504b5.jpg"),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: tela.width * .45,
            height: tela.width * .35,
            padding:
                EdgeInsets.only(top: tela.width * .12, left: tela.width * .03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Aprenda no seu tempo",
                  style: TextStyle(color: Colors.white, fontSize: 35),
                ),
                Text(
                  "Estude qualquer tema, a qualquer hora. Há milhares de cursos ministrados por especialistas.",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Card(
                  child: Container(
                    color: Color.fromRGBO(220, 220, 220, 1),
                    padding: EdgeInsets.only(left: 10, bottom: 5, right: 10),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Pesquise por qualquer coisa",
                              hintStyle: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                        Icon(
                          Icons.search,
                          size: 22,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: tela.width,
            height: 80,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.deepPurple, Colors.redAccent])),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: <Widget>[
                _iconsHeader(context, "100.000 cursos online",
                    "Conheça uma variedade de temas atuais", icone: Icons.mouse),
                _iconsHeader(context, "Especialistas do mercado",
                    "Encontre o instrutor ideal para você",icone: Icons.check_circle),
                _iconsHeader(
                    context, "Acesso Vitalício", "Aprenda no seu tempo", icone: Icons.timelapse),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _iconsHeader(context, String title, String content, {IconData icone = Icons.search}) {
    return Container(
      child: Row(
        children: <Widget>[
          Icon(icone, color: Colors.white, size: 45,),
          SizedBox(
            height: 10,
              width: 10,

          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(title, style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
              Text(content, style: TextStyle(color: Colors.white, fontSize: 15)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _menuAppBar(context) {
    return Container(
      width: tela.width,
      height: 50,
      child: Material(
        elevation: 50.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(
                height: 10,
                width: 10,
              ),
              Image.network(
                  "https://www.udemy.com/staticx/udemy/images/v6/logo-coral.svg"),
              SizedBox(
                height: 10,
                width: 10,
              ),
              RaisedButton(
                  color: Colors.transparent,
                  elevation: 0.0,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.apps),
                      Text("Categorias"),
                    ],
                  ),
                  onPressed: () {
                    print("botão");
                  }),
              SizedBox(
                height: 10,
                width: 30,
              ),
              Expanded(
                child: Container(
                  color: Color.fromRGBO(220, 220, 220, 1),
                  padding: EdgeInsets.only(left: 10, bottom: 5, right: 10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Pesquise por qualquer coisa",
                            hintStyle: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.search,
                        size: 22,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
                width: 30,
              ),
              RaisedButton(
                  color: Colors.transparent,
                  elevation: 0.0,
                  child: Row(
                    children: <Widget>[
                      Text("Udemy for business"),
                    ],
                  ),
                  onPressed: () {
                    print("botão");
                  }),
              RaisedButton(
                  color: Colors.transparent,
                  elevation: 0.0,
                  child: Row(
                    children: <Widget>[
                      Text("Ensine na Udemy"),
                    ],
                  ),
                  onPressed: () {
                    print("botão");
                  }),
              SizedBox(
                width: 10,
              ),
              Text(
                "|",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  print("carrinho");
                },
              ),
              OutlineButton(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  child: Text("Fazer login"),
                  onPressed: () {
                    print("botão login");
                  }),
              SizedBox(
                height: 10,
                width: 10,
              ),
              RaisedButton(
                  color: Colors.red,
                  elevation: 0.0,
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Cadastra-se",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  onPressed: () {
                    print("botão");
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:epic_music/helper/utils.dart';
import 'package:epic_music/style/appColors.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff384850),
            Color(0xff263238),
            Color(0xff263238),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          brightness: Brightness.dark,
          centerTitle: true,
          title: GradientText(
            "About",
            shaderRect: Rect.fromLTWH(13.0, 0.0, 100.0, 50.0),
            gradient: LinearGradient(colors: [
              Color(0xffff4081),
              Color(0xff61e88a),
            ]),
            style: TextStyle(
              color: accent,
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: accent,
            ),
            onPressed: () => Navigator.pop(context, false),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(child: AboutCards()),
      ),
    );
  }
}

class AboutCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 8, right: 8, bottom: 6),
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Image.network(
                    "https://i.ibb.co/4PCxZFr/imageedit-1-4537674189.png",
                    height: 120,
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Center(
                      child: Text(
                        "Epic Music  | 1.2.1",
                        style: TextStyle(
                            color: accentLight,
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, left: 10, right: 10),
            child: Divider(
              color: Colors.white24,
              thickness: 0.8,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 6),
            child: Card(
              color: Color(0xff263238),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              elevation: 2.3,
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage("https://i.ibb.co/74WLjxN/Pics-Art-12-11-03-45-43.jpg"),
                    ),
                  ),
                ),
                title: Text(
                  'Santosh Arron',
                  style: TextStyle(color: accentLight),
                ),
                subtitle: Text(
                  'App Developer',
                  style: TextStyle(color: accentLight),
                ),
                trailing: Wrap(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        MdiIcons.instagram,
                        color: accentLight,
                      ),
                      tooltip: 'Contact on Instagram',
                      onPressed: () {
                        launchURL("https://www.instagram.com/santosh_arron/");
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        MdiIcons.youtube,
                        color: accentLight,
                      ),
                      tooltip: 'Contact on YouTube',
                      onPressed: () {
                        launchURL("https://www.youtube.com/channel/UCLor14jPepGTx10JqZBdwpw");
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 6),
            child: Card(
              color: Color(0xff263238),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 2.3,
              child: ListTile(
                leading: Container(
                  width: 50.0,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://i.ibb.co/XFXSnR2/IMG-20191006-162840.jpg"),
                    ),
                  ),
                ),
                title: Text(
                  'Likhit Kumar',
                  style: TextStyle(color: accentLight),
                ),
                subtitle: Text(
                  'Contributer',
                  style: TextStyle(color: accentLight),
                ),
                trailing: Wrap(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        MdiIcons.instagram,
                        color: accentLight,
                      ),
                      tooltip: 'Contact on Instagram',
                      onPressed: () {
                        launchURL("https://www.instagram.com/likzhit/");
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        MdiIcons.web,
                        color: accentLight,
                      ),
                      tooltip: 'Check my blog',
                      onPressed: () {
                        launchURL("https://ciniverse01.blogspot.com/");
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

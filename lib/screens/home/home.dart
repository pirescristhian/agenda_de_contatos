import 'package:agenda_de_contatos/model/contact.dart';
import 'package:agenda_de_contatos/provider/contacts.dart';
import 'package:agenda_de_contatos/screens/details/details.dart';
import 'package:agenda_de_contatos/style.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Meus Contatos",
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 40,
        ),
      ),
      body: ListView.builder(
        itemBuilder: builder,
        itemCount: listContacts.length,
      ),
    );
  }

  Widget builder(BuildContext context, int index) {
    Contact contact = listContacts.elementAt(index);
    return ListTile(
      leading: IconButton(
        icon: Hero(
          tag: contact.cel,
          child: Icon(
            (contact.favorite) ? Icons.star : Icons.star_border,
            color: Theme.of(context).primaryColor,
          ),
        ),
        onPressed: () {
          setState(() {
            contact.favorite = !contact.favorite;
          });
        },
      ),
      title: Row(
        children: [
          ClipOval(
            child: Hero(
              tag: contact.name,
              child: Image.asset(
                contact.photo,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                contact.name,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: greyTheme,
                ),
              ),
              Text(
                contact.cel,
                style: TextStyle(
                  fontSize: 12,
                  color: greyTheme,
                ),
              ),
            ],
          ),
        ],
      ),
      trailing: IconButton(
        icon: Icon(
          Icons.chevron_right,
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return Details(contact);
              },
            ),
          );
        },
      ),
    );
  }
}

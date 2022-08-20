import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/textWidget.dart';


class UsersList extends StatelessWidget {
  
  final List<Map> user;

  const UsersList({Key? key, required this.user,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: user.length,
          itemBuilder: (context, position){
        return _userWidget(user[position]["image"], user[position]["name"]) ;
      }),
    );
  }
}




Widget _userWidget(String image, String users){
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(image),)
          ),
        ),
      ),
      SmallText(text: users),
    ],
  );
}
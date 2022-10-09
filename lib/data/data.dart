import 'package:flutter/material.dart';

List<Map> getUserData() {
  final List<Map> users = [
    {
      "name": "Jerry",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png"
    },
    {
      "name": "Jenny",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png"
    },
    {
      "name": "Jeff",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png"
    },
    {
      "name": "Fortune",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png"
    },
    {
      "name": "Samuel",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png"
    },
    {
      "name": "Kene",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png"
    }
  ];
  return users;
}

List<Map> getWatchItAgainData([String searchQuery='']) {
  List<Map> movies = [
    {
      "name": "Suit",
      "image":
          "https://www.uphe.com/sites/default/files/styles/scale__344w_/public/SuitsCompSS_DVD_2Docard_191329123959.webp?itok=tEgRPX-6",
      "year": "2018"
    },
    {
      "name": "The Blacklist",
      "image":
          "https://pics.filmaffinity.com/The_Blacklist_TV_Series-396285612-large.jpg",
      "year": "2016"
    },
    {
      "name": "Instant Dream Home",
      "image":
          "https://theancestory.com/wp-content/uploads/2022/08/Instant-Dream-Home--476x400.png",
      "year": "2021"
    },
    {
      "name": "Thor",
      "image":
          "https://m.media-amazon.com/images/M/MV5BYmMxZWRiMTgtZjM0Ny00NDQxLWIxYWQtZDdlNDNkOTEzYTdlXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg",
      "year": "2022"
    },
    {
      "name": "Locke & Key",
      "image":
          "https://m.media-amazon.com/images/M/MV5BNzVkOTIxZWUtMTNjOC00NWMwLWEyNDQtNTY2NzYxNjhhYTA1XkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_FMjpg_UX1000_.jpg",
      "year": "2022"
    },
    {
      "name": "Gotham",
      "image": "https://m.media-amazon.com/images/I/81yQcA5Xv+L._SL1500_.jpg",
      "year": "2011"
    },
    {
      "name": "Me Time",
      "image":
          "https://dnm.nflximg.net/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABQiiuA7cWDsaSjVV4GIb8tA596T1Va0J5pf1DUaZzRrIfs2yEie4vNzltNIOH0YtADfYnmfyhJX_0zydbIeNE-x2OflypIIERGIoNMWP0BGfLh4m_YQoglDQqdR2nU5H1zRlMA.jpg?r=e2b",
      "year": "2022"
    },
    {
      "name": "Look Both Ways",
      "image":
          "https://dnm.nflximg.net/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABXYEoxpzQ8fVbAeCnBeAh4BQLMV9hACVwXa8s1WRYdNTebLAkQ6FD_05G4QupbPbbLRyMAuPCYpMVoACvIFwOJBXLaa_vJiTWrorzcZQdehTA2WA4aFTeh3hFt4EuXf8Y2Cpzw.jpg?r=68e",
      "year": "2022"
    },
    {
      "name": "Day Shift",
      "image":
          "https://dnm.nflximg.net/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABUTSTBHJtyRpxe4yDRthHk2z5DZGgzZruGHtjblrso6HIPTQnsJ553rmmfw6yZKzKiSPuwQKgcik9hV2xX8Ev3Zx1_ISiPEFxOq44fC5iKUFLkt54R1zioijsi1npgJC5L9_7w.jpg?r=019",
      "year": "2022"
    },
    {
      "name": "The Mummy",
      "image":
          "https://dnm.nflximg.net/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABfX4SwPBniHndSAcUs2ObZ-ItrJ4EL8MqGPTOSbX-5EQ5Ok-yM5d8oWSLeaUtbH7XjPMtH7nnE7vF7agDtH2UAkhWVGkCqTCVKcn.jpg?r=eb7",
      "year": "2022"
    },
    {
      "name": "Running With The Devil",
      "image":
          "https://dnm.nflximg.net/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABSnTLh-R5a3vpCVUuyP6IfcMq96jLUoZXsqN_voYvJ-wAH9Y3S_8nfi8V2mOM7uxwAq4bZuYlgV2oZ9oBwwaRW7O5f_LBIHQy60s07st2TLuD6lJM1wj-nM1_9ipoo01J-2G7Q.jpg?r=fa4",
      "year": "2022"
    },
    {
      "name": "The Great Wall",
      "image":
          "https://dnm.nflximg.net/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABXP_vikeaUzbgxcX_SJMhTQF8Qnw5GrX_sOL12R_I3VzICRV7xOgpODuaiv9gLySf-CVNzTnZOOOr9eGFNp8HJ3vq1ku-3BlHxdG.jpg?r=e3e",
      "year": "2022"
    }
  ];

  List<Map> filter = [];
  filter.addAll(movies);
  //
  filter.retainWhere((movie) {
    return movie["name"].contains(searchQuery);
  });


  if (filter.isEmpty) {
    filter.addAll(movies);
  }



  // // Option 2
  // for (var i = 0; i < movies.length; i++) {
  //   if (movies[i]["name"]== searchQuery){
  //     filter.add(movies[i]);
  //   }
  // }


  if (filter.length == 0){
    filter.addAll(movies);
  }


  return filter;
}

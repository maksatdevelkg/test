

class allUsers {
  final List<User> users = [
    User(
        name: 'Cristiano',
        surname: 'Ronaldo',
        nick: '@CR7',
        photos: ['https://pbs.twimg.com/media/GWKiPaPXsAADDgB.jpg:large'],
        location: 'Lissabon, Portugal'),
         
         User(
        name: 'Lionel',
        surname: 'Messi',
        nick: '@MS10',
        photos: ['https://pbs.twimg.com/media/GQSxdJ7WUAAh3-v?format=jpg&name=large'],
        location: 'Rosario, Argentina'),
        
        User(
        name: 'Jackie',
        surname: 'Chan',
        nick: '@Jackie_Chan',
        photos: ['https://api.time.com/wp-content/uploads/2016/09/ap_120519112383.jpg'],
        location: 'Victoria Peak, Hong Gong'),
        
        User(
        name: 'Lee',
        surname: '@Dae Hoon',
        nick: 'Lee_Dae_Hoon',
        photos: ['https://i.pinimg.com/originals/58/76/0f/58760f2534cfded56fbb608c1ca2487c.jpg'],
        location: 'Seul, South Korea'),

        User(
        name: 'Pavel',
        surname: 'Durov',
        nick: '@Pavel_Durov',
        photos: ['https://iv.kommersant.ru/Issues.photo/OGONIOK/2013/017/KMO_111307_02439_1_t218.jpg'],
        location: 'Moscow, Russia'),

        User(
        name: 'Vladimir',
        surname: 'Putin',
        nick: '@Putin',
        photos: ['https://img.etimg.com/thumb/width-1200,height-900,imgsize-65810,resizemode-75,msid-104481545/news/international/world-news/russias-president-vladimir-putin-arrives-in-beijing.jpg'],
        location: 'Moscow, Russia'),

        User(
        name: 'Mister',
        surname: 'Beast',
        nick: '@Mr_Beast',
        photos: ['https://png.klev.club/uploads/posts/2024-03/png-klev-club-p-mister-bist-png-8.png'],
        location: 'New York, USA'),

        
        User(
        name: 'Will',
        surname: 'Smith',
        nick: '@Will_Smith',
        photos: ['https://goldenglobes.com/wp-content/uploads/2023/10/will-smith-c-hfpa-2016.jpg'],
        location: 'Philadelphia, USA'),

        User(
        name: 'Brad',
        surname: 'Pitt',
        nick: '@Brad_Pitt',
        photos: ['https://images.mubicdn.net/images/cast_member/2552/cache-207-1524922850/image-w856.jpg'],
        location: 'Shony, USA'),

        User(
        name: 'Bill',
        surname: 'Gates',
        nick: '@Bill_Gates',
        photos: ['https://www.film.ru/sites/default/files/people/3721180-932818.jpg'],
        location: 'Washington, USA'),
  ];
}

class User {
  final String name;
  final String surname;
  final String nick;
  final List<String> photos;
  final String location;

  User(
      {required this.name,
      required this.surname,
      required this.nick,
      required this.photos,
      required this.location});
}

class Event {
  final String imageUrl;
  final String description;

  Event({required this.imageUrl, required this.description});
}

class Ticket {
  final String qrCode;
  final String message;
  Ticket({required this.qrCode, required this.message});

  static List<Ticket> ticket = [
    Ticket(qrCode: 'Not yet', message: 'Nice choice.\nNow you can join the event with QR below'),
  ];
  static List<Ticket> book = [];
}

class EventData {
  static List<Event> events = [
    Event(
      imageUrl: 'https://www.masaratclub.com/wp-content/uploads/2022/10/IMG_045595-e1670798082812.jpeg',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer',
    ),
    Event(
      imageUrl: 'https://zamzam-blog.s3.eu-west-1.amazonaws.com/wp-content/uploads/2022/07/NEOM-840x450.jpg',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ',
    ),
    Event(
      imageUrl: 'https://pbs.twimg.com/profile_images/1614300704088137731/2175mss0_400x400.jpg',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ',
    ),
    Event(
      imageUrl:
          'https://www.sayidaty.net/sites/default/files/styles/600x380/public/2022-04/%D8%A3%D8%A8%D9%87%D8%A7%20%D9%88%D8%A7%D8%B3_2.jpg?h=21203a90',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ',
    ),
  ];
}

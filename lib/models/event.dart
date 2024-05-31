// ignore_for_file: prefer_const_constructors

class Event {
  final String eventName;
  final String imageUrl;
  final String description;
  final String website;
  final String cardImageUrl;
  final String contentOfCard;
  final int ticketPrice;

  Event({
    required this.eventName,
    required this.imageUrl,
    required this.description,
    required this.website,
    required this.cardImageUrl,
    required this.contentOfCard,
    required this.ticketPrice,
  });
}

class EventData {
  static final List<Event> events = [
    Event(
      eventName: 'Alola',
      imageUrl: 'https://www.masaratclub.com/wp-content/uploads/2022/10/IMG_045595-e1670798082812.jpeg',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer',
      website: 'https://www.vision2030.gov.sa/v2030/v2030-projects/alula/',
      cardImageUrl:
          'https://images.unsplash.com/photo-1670762903850-231b08a54518?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      contentOfCard: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tincidunt nibh sapien,',
      ticketPrice: 200,
    ),
    Event(
      eventName: 'Neom',
      imageUrl: 'https://zamzam-blog.s3.eu-west-1.amazonaws.com/wp-content/uploads/2022/07/NEOM-840x450.jpg',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ',
      website: 'https://www.neom.com/en-us',
      cardImageUrl: 'https://static.dezeen.com/uploads/2022/12/neom-port-oxagon-saudi-arabia_dezeen_2364_sq_1.jpg',
      contentOfCard: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tincidunt nibh sapien,',
      ticketPrice: 100,
    ),
    Event(
      eventName: 'Bike',
      imageUrl:
          'https://images.unsplash.com/photo-1517649763962-0c623066013b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ',
      website: 'https://www.onegiantleap.com/en/home.html',
      cardImageUrl:
          'https://mbaction.com/wp-content/uploads/2018/07/14064205_1679363339055666_961550323406477972_n.jpg',
      contentOfCard: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tincidunt nibh sapien,',
      ticketPrice: 90,
    ),
    Event(
      eventName: 'Abha',
      imageUrl:
          'https://www.sayidaty.net/sites/default/files/styles/600x380/public/2022-04/%D8%A3%D8%A8%D9%87%D8%A7%20%D9%88%D8%A7%D8%B3_2.jpg?h=21203a90',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ',
      website: 'https://welcomesaudi.com/destination/abha',
      cardImageUrl: 'https://welcomesaudi.com/uploads/0000/1/2021/07/23/1-art-street-abha-asir-province.jpeg',
      contentOfCard: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tincidunt nibh sapien,',
      ticketPrice: 1000,
    ),
  ];

  static final List<Event> cart = [];
}

class Ticket {
  static final List<Ticket> ticket = [
    Ticket(qrCode: 'Not yet', message: 'Nice choice.\nNow you can join the event with QR below'),
  ];
  static final List<Ticket> book = [];
  final String qrCode;
  final String message;
  Ticket({required this.qrCode, required this.message});
}

class Registration {
  final String name;
  final String email;
  final String id;

  static Registration information = Registration();

  Registration({this.name = 'Hiker', this.email = '', this.id = 'user ID'});
}

class TicketDetails {
  static final List<TicketDetails> ticket = [];
  static final List<TicketDetails> book = [];
  final String eventName;
  final String imageUrl;
  final int price;
  TicketDetails({required this.eventName, required this.imageUrl, required this.price});
}

class Notification {
  final String thanks;

  static final List<Notification> noti = [
    Notification('Thank you for choosing Hike,Your Ticket will be sent to your email'),
  ];
  Notification(this.thanks);
}

class Group {
  final String groupName;
  final String groupDescription;

  Group({
    required this.groupName,
    required this.groupDescription,
  });
}

class GroupData {
  static final List<Group> newGroup = [];
}

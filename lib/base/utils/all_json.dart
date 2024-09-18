List<Map<String, dynamic>> hotelList = [
  {
    'image': 'bedroom1.jpg',
    'place': 'Open Space',
    'destination': 'London',
    'price': 25,
    'description':
        'A cozy and affordable room located in the heart of London, offering easy access to the city’s iconic landmarks and vibrant culture.'
  },
  {
    'image': 'bedroom2.jpg',
    'place': 'Global Will',
    'destination': 'London',
    'price': 40,
    'description':
        'A modern hotel in London offering luxurious amenities and spacious rooms, perfect for business travelers and tourists alike.'
  },
  {
    'image': 'bedroom3.jpg',
    'place': 'Tallest Building',
    'destination': 'Dubai',
    'price': 68,
    'description':
        'Stay in the world-renowned tallest building in Dubai with breathtaking views of the city skyline and luxurious accommodations.'
  },
  {
    'image': 'bedroom4.jpg',
    'place': 'Skyline View',
    'destination': 'New York',
    'price': 150,
    'description':
        'Enjoy a breathtaking view of the New York City skyline from this elegant and stylish hotel in the heart of Manhattan.'
  },
  {
    'image': 'bedroom5.jpg',
    'place': 'Ocean Breeze',
    'destination': 'Maldives',
    'price': 200,
    'description':
        'Escape to the Maldives and relax in this beachfront hotel with stunning ocean views, private villas, and tropical serenity.'
  },
  {
    'image': 'bedroom6.jpg',
    'place': 'Mountain Retreat',
    'destination': 'Switzerland',
    'price': 180,
    'description':
        'A serene mountain retreat nestled in the Swiss Alps, offering luxury accommodation with access to hiking trails and ski resorts.'
  },
  {
    'image': 'bedroom7.jpg',
    'place': 'Desert Oasis',
    'destination': 'Dubai',
    'price': 90,
    'description':
        'An oasis in the Dubai desert, combining modern luxury with a traditional Arabian ambiance. Perfect for a unique desert experience.'
  },
  {
    'image': 'bedroom1.jpg',
    'place': 'City Lights',
    'destination': 'Tokyo',
    'price': 120,
    'description':
        'Experience the vibrant energy of Tokyo with a stay in this chic hotel, located close to major shopping districts and cultural sites.'
  },
  {
    'image': 'bedroom2.jpg',
    'place': 'Historic Haven',
    'destination': 'Rome',
    'price': 80,
    'description':
        'Immerse yourself in the rich history of Rome by staying in this charming hotel located near iconic landmarks like the Colosseum.'
  },
  {
    'image': 'bedroom3.jpg',
    'place': 'Tropical Paradise',
    'destination': 'Hawaii',
    'price': 250,
    'description':
        'A tropical paradise in Hawaii with beachfront access, stunning views, and a variety of activities for an unforgettable island vacation.'
  },
  {
    'image': 'bedroom4.jpg',
    'place': 'Countryside Charm',
    'destination': 'Tuscany',
    'price': 70,
    'description':
        'A charming hotel in the Tuscan countryside, offering a peaceful escape with picturesque views of vineyards and rolling hills.'
  },
  {
    'image': 'bedroom5.jpg',
    'place': 'Urban Chic',
    'destination': 'Paris',
    'price': 130,
    'description':
        'Stay in style in the heart of Paris with this chic and modern hotel, located near the Eiffel Tower and other famous landmarks.'
  },
  {
    'image': 'bedroom6.jpg',
    'place': 'Luxury Resort',
    'destination': 'Bali',
    'price': 300,
    'description':
        'Indulge in the ultimate luxury at this Bali resort, featuring private villas, serene gardens, and world-class spa treatments.'
  },
  {
    'image': 'bedroom7.jpg',
    'place': 'Island Escape',
    'destination': 'Seychelles',
    'price': 280,
    'description':
        'A secluded island escape in the Seychelles, offering pristine beaches, crystal-clear waters, and luxurious accommodations.'
  },
  {
    'image': 'bedroom7.jpg',
    'place': 'Forest Cabin',
    'destination': 'Canada',
    'price': 60,
    'description':
        'A cozy forest cabin in Canada, perfect for nature lovers looking to enjoy peaceful surroundings and explore nearby hiking trails.'
  },
];

List<Map<String, dynamic>> ticketList = [
  {
    'from': {'code': "NYC", 'name': "New-York"},
    'to': {'code': "LDN", 'name': "London"},
    'flying_time': '8H 30M',
    'date': "1 MAY",
    'departure_time': "08:00 AM",
    "number": 23
  },
  {
    'from': {'code': "DK", 'name': "Dhaka"},
    'to': {'code': "SH", 'name': "Shanghai"},
    'flying_time': '4H 20M',
    'date': "10 MAY",
    'departure_time': "09:00 AM",
    "number": 45
  },
  {
    'from': {'code': "SF", 'name': "San Francisco"},
    'to': {'code': "TYO", 'name': "Tokyo"},
    'flying_time': '11H 00M',
    'date': "15 MAY",
    'departure_time': "07:00 AM",
    "number": 67
  },
  {
    'from': {'code': "PAR", 'name': "Paris"},
    'to': {'code': "BER", 'name': "Berlin"},
    'flying_time': '1H 45M',
    'date': "20 MAY",
    'departure_time': "02:00 PM",
    "number": 89
  },
  {
    'from': {'code': "SYD", 'name': "Sydney"},
    'to': {'code': "LA", 'name': "Los Angeles"},
    'flying_time': '13H 30M',
    'date': "25 MAY",
    'departure_time': "10:00 AM",
    "number": 34
  },
  {
    'from': {'code': "TOR", 'name': "Toronto"},
    'to': {'code': "ROM", 'name': "Rome"},
    'flying_time': '9H 15M',
    'date': "30 MAY",
    'departure_time': "06:00 PM",
    "number": 56
  },
  {
    'from': {'code': "BOM", 'name': "Mumbai"},
    'to': {'code': "SIN", 'name': "Singapore"},
    'flying_time': '5H 50M',
    'date': "5 JUN",
    'departure_time': "11:00 AM",
    "number": 78
  },
  {
    'from': {'code': "MEX", 'name': "Mexico City"},
    'to': {'code': "BCN", 'name': "Barcelona"},
    'flying_time': '11H 10M',
    'date': "12 JUN",
    'departure_time': "03:00 PM",
    "number": 12
  }
];

Map<String, dynamic> ticketDetail = {
  'passenger': "Flutter DB",
  'passport': "5221 364869",
  'number_of_eTicket': '364738 2827448',
  'booking_code': "B2SG28",
  'payment_method': {
    'code': "B2SG28",
    'image': 'visa.png',
    'price': "249.99",
  },
};

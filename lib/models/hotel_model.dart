import 'package:beginner/models/activity_model.dart';

import 'destination_model.dart';

class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;
  List<Activity> activities;
  String description;
  String city;
  String country;

  Hotel({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
    required this.activities,
    required this.description,
    required this.city,
    required this.country,
  });
}

List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/hotel0.jpg',
    name: 'Hotel 0',
    address: '404 Great St',
    price: 175,
    activities: activities,
    description: 'Visit Venice for an amazing and unforgettable adventure.',
    city: 'Venice',
    country: 'France',
  ),
  Hotel(
    imageUrl: 'assets/images/hotel1.jpg',
    name: 'Hotel 1',
    address: '404 Great St',
    price: 300,
    activities: activities,
    description: 'Visit Venice for an amazing and unforgettable adventure.',
    city: 'Paris',
    country: 'France',
  ),
  Hotel(
    imageUrl: 'assets/images/hotel2.jpg',
    name: 'Hotel 2',
    address: '404 Great St',
    price: 240,
    activities: activities,
    description: 'Visit Venice for an amazing and unforgettable adventure.',
    city: 'Paris',
    country: 'France',
  ),
];

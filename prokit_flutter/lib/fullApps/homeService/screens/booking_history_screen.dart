import 'package:flutter/material.dart';
import 'package:pradeep_the_developer/fullApps/homeService/components/booking_history_component.dart';
import 'package:pradeep_the_developer/fullApps/homeService/models/last_bookings_model.dart';

class BookingHistoryScreen extends StatefulWidget {
  const BookingHistoryScreen({Key? key}) : super(key: key);

  @override
  State<BookingHistoryScreen> createState() => _BookingHistoryScreenState();
}

class _BookingHistoryScreenState extends State<BookingHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: lastBooking.length,
        itemBuilder: (BuildContext context, int index) {
          return BookingHistoryComponent(index,
              lastBookings: lastBooking[index]);
        },
      ),
    );
  }
}

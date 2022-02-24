import 'package:flutter/material.dart';
import '/constants.dart';
import '/repository/session_repository.dart';

class MovieSession extends StatefulWidget {
  const MovieSession({Key? key}) : super(key: key);

  @override
  _MovieSessionState createState() => _MovieSessionState();
}

class _MovieSessionState extends State<MovieSession> {
  var session = SessionRepository().session;

  final List<bool> isSelected = List.generate(7, (_) => false);
  double price = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: (price != 0)
              ? SizedBox(
                  height: 25,
                  child: Text(
                    '\$ $price',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.green.shade300,
                    ),
                  ))
              : const SizedBox(height: 25),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding + 5),
            child: ToggleButtons(
              children: [
                for (var i = 0; i < session.length; i++)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding - 10),
                    child: Text(
                      session[i].time,
                      style: textStyle.copyWith(fontSize: 16),
                    ),
                  ),
              ],
              selectedBorderColor: Colors.grey,
              fillColor: Colors.grey,
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              borderWidth: 2,
              borderColor: Colors.grey,
              onPressed: (int index) {
                setState(() {
                  price = session[index].price;
                  for (int buttonIndex = 0;
                      buttonIndex < isSelected.length;
                      buttonIndex++) {
                    if (buttonIndex == index) {
                      isSelected[buttonIndex] = true;
                    } else {
                      isSelected[buttonIndex] = false;
                    }
                  }
                });
              },
              isSelected: isSelected,
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../model/radio.dart';

class RadioItem extends StatelessWidget {
  final RadioModel _item;
  final bool isSelected;

  const RadioItem(this._item, {super.key, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 25,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(_item.image),
                fit: BoxFit.fill,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(15)),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10.0),
          child: Text(
            _item.text,
            style: const TextStyle(fontSize: 25, color: Colors.black),
          ),
        ),
        Container(
          height: 30.0,
          width: 30.0,
          alignment: Alignment.center,
          child: isSelected
              ? const Icon(
                  Icons.check_circle,
                  size: 30,
                  color: Colors.black,
                )
              : Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: const BorderRadius.all(Radius.circular(60)),
                  ),
                ),
        ),
      ],
    );
  }
}

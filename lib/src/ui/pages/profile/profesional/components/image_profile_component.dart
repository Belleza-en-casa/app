// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ImageProfileComponent extends StatelessWidget {
  ImageProfileComponent({super.key});
  late Size _size;
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.sizeOf(context);
    return Center(
      child: Stack(
        children: [
          Container(
            width: _size.height * 0.2, // Double the radius to get the diameter
            height: _size.height * 0.2,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: .1,
              ),
            ),
            child: CircleAvatar(
              radius: _size.height * 0.1,
              backgroundImage: const AssetImage("assets/png/user.png"),
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: .1),
                    color: Colors.white),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_a_photo,
                    size: 20,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

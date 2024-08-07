import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

import 'package:toktik/config/helpers/human_formats.dart';
import 'package:toktik/domain/models/video_post.dart';

class VideoButtons extends StatelessWidget {

  final VideoPost videoPost;
  
  const VideoButtons({super.key, required this.videoPost});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
          value: videoPost.likes,
          iconData: Icons.favorite,
          color: Colors.red,
          onPressed: (){},
        ),
        const SizedBox(
          height: 20
        ),
        _CustomIconButton(
          value: videoPost.views,
          iconData: Icons.remove_red_eye_outlined,
          onPressed: (){}
        ),
        const SizedBox(
          height: 20
        ),
        SpinPerfect(
          infinite: true,
          duration: const Duration( seconds: 2 ),
          child: _CustomIconButton(
            value: 0,
            iconData: Icons.play_circle_outline,
            onPressed: (){}
          ),
        ),
      ],
    );
  }
}


class _CustomIconButton extends StatelessWidget {

  final int value;
  final IconData iconData;
  final Color color;
  final VoidCallback onPressed;

  const _CustomIconButton({
    required this.value,
    required this.iconData,
    this.color = Colors.white,
    required this.onPressed
  });
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          iconSize: 30,
          onPressed: onPressed,
          icon: Icon( 
            iconData,
            color: color
          )
        ),

        if( value > 0 )
        Text( HumanFormats.humanReadbleNumber(value.toDouble()), style: const TextStyle( fontWeight: FontWeight.bold ),)
      ],
    );
  }
}
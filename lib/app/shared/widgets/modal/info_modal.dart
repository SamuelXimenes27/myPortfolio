import 'package:flutter/material.dart';

class InfoModalWidget extends StatefulWidget {
  final String? alertTitle;
  final dynamic Function()? onPressed;
  final String? pathCardImage;

  const InfoModalWidget({
    Key? key,
    required this.alertTitle,
    required this.onPressed,
    required this.pathCardImage,
  }) : super(key: key);

  @override
  State<InfoModalWidget> createState() => _InfoModalWidgetState();
}

class _InfoModalWidgetState extends State<InfoModalWidget> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      title: Text(
        widget.alertTitle!,
      ),
      content: Image(
        image: AssetImage(widget.pathCardImage!),
        fit: BoxFit.cover,
      ),
      actions: <Widget>[
        TextButton(
          onPressed: widget.onPressed,
          child: const Text('Github'),
        ),
        TextButton(
          child: const Text('Fechar'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

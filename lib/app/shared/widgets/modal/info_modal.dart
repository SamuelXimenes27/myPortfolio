import 'package:flutter/material.dart';

class InfoModalWidget extends StatelessWidget {
  final String alertTitle;
  final VoidCallback onPressed;
  final List<String> pathCardImage;

  const InfoModalWidget({
    Key? key,
    required this.alertTitle,
    required this.onPressed,
    required this.pathCardImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      title: Text(alertTitle),
      content: pathCardImage.length != 1
          ? SizedBox(
              width: size.width * 0.5,
              height: size.height * 0.5,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: size.width < 1350 ? 1 : pathCardImage.length,
                ),
                controller: ScrollController(
                  initialScrollOffset: 1,
                  keepScrollOffset: true,
                ),
                itemCount: pathCardImage.length,
                itemBuilder: (context, index) {
                  return FittedBox(
                    child: Image(
                      image: AssetImage(pathCardImage[index]),
                      fit: BoxFit.contain,
                    ),
                  );
                },
              ),
            )
          : Image(
              image: AssetImage(pathCardImage[0]),
              fit: BoxFit.contain,
            ),
      actions: <Widget>[
        TextButton(
          onPressed: onPressed,
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

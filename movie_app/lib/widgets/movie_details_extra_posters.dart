import 'package:flutter/material.dart';

class MovieDetailsExtraPosters extends StatelessWidget {
  const MovieDetailsExtraPosters({Key key, this.posters}) : super(key: key);

  final List<String> posters;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'More Movie Posters'.toUpperCase(),
            style: TextStyle(color: Colors.black26, fontSize: 14),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Container(
            height: 200,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: 160,
                      child: Image.network(
                        posters[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                      width: 8,
                    ),
                itemCount: posters.length),
          ),
        )
      ],
    );
  }
}

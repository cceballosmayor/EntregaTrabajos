import 'package:flutter/material.dart';

class Pie extends StatelessWidget {
	const Pie({ super.key });

	@override
	Widget build(BuildContext context) {

		return Container(
      color: const Color.fromRGBO(238, 238, 238, 10),
      padding: const EdgeInsets.all(15),
      child: const Column(
        children: [
          Image(                    
            image: NetworkImage('https://www.umayor.cl/um/bundles/umayor/images/footer/logo-pie.png')
          )
        ],
      ),
    );
	}
}
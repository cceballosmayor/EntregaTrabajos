import 'package:flutter/material.dart';

class Cabecera extends StatelessWidget {
	const Cabecera({ super.key });

	@override
	Widget build(BuildContext context) {

		return Column(
			children: [
				Container(
					padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
					color: const Color.fromRGBO(254, 218, 63, 10),
					child: const Row(
						children: [
							Column(
								mainAxisAlignment: MainAxisAlignment.start,
								children: [Text('Consultas Online', style: TextStyle(fontSize: 10))]
							),
						],
					),
				),
				Container(
					margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
					child: const Row(
						children: [
							Image(
								width: 160,
								image: AssetImage('assets/logo-conservatorio.jpg')
							),
						],
					),
				),
				const Image(
					image: NetworkImage('https://conservatorio.umayor.cl/images/conservatorio-universidad-mayor.jpg')
				)
			],
		);
	}
}



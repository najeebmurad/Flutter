import 'package:flutter/material.dart';
import 'package:real_estate/app/AppColor.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final String price;
  final void Function()? onTap;

  const CustomListTile(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.image,
      required this.price, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: onTap,
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Text(subtitle),
        leading: Column(
          children: [
            const Text(
              "السعر",
              style: TextStyle(color: AppColor.gold, fontSize: 18),
            ),
            Text("$price ر.س")
          ],
        ),
        trailing: Container(
          clipBehavior: Clip.antiAlias,
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          width: 100,
          height: 100,
          child: image == ""
              ? Image.asset("assets/images/notFound.png")
              : Image.network(image,width: 100,height: 100),
        ),
      ),
    );
  }
}

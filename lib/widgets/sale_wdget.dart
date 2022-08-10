import 'package:flutter/material.dart';

class SaleWidget extends StatelessWidget {
  const SaleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(5.0),
      width: double.infinity,
      height: size.height * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        gradient: const LinearGradient(
            colors: [Color(0xFF7a60A5), Color(0xff82C3df)],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Row(
        children: [
          Flexible(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xff9689ce),
                      borderRadius: BorderRadius.circular(18)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Get the special descount",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        Flexible(
                          child: SizedBox(
                              width: double.infinity,
                              child: FittedBox(
                                fit: BoxFit.fill,
                                child: Text(
                                  "50 %\nOFF",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
          Flexible(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Image.network(
                  width: double.infinity, "https://i.ibb.co/vwB46Yq/shoes.png"),
            ),
          )
        ],
      ),
    );
  }
}

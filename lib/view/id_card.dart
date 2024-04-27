import 'package:flutter/material.dart';

class DigitalIdCard extends StatelessWidget {
  const DigitalIdCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return _buildLayoutVertical();
          } else {
            return _buildLayoutHorizontal();
          }
        },
      ),
    );
  }

  Widget _buildLayoutVertical() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 270,
              ),
              Container(
                height: 180,
                width: double.infinity,
                color: Colors.blue,
                child: Image.asset(
                  "assets/idbackground.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  right: 0,
                  left: 0,
                  top: 80,
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: const ShapeDecoration(
                        color: Colors.amber,
                        shape: CircleBorder(),
                        image: DecorationImage(
                            image: AssetImage("assets/aaa.jpg"),
                            scale: 1.0,
                            fit: BoxFit.contain)),
                  ))
            ],
          ),
          const Text(
            "Daffa Aditya Rejasa R",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          const Text(
            "Sales Crypto",
            style: TextStyle(fontSize: 15),
          ),
          const SizedBox(
            height: 30,
          ),
          contentDataVertical("ID No.", "E412145678"),
          contentDataVertical("E-mail", "daffaaditya2912@gmail.com"),
          contentDataVertical("Phone", "+6285851065789"),
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            "assets/ttd.png",
            alignment: Alignment.topCenter,
            scale: 1.2,
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            "assets/barcode.png",
            alignment: Alignment.topCenter,
            scale: 1.2,
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

  Widget _buildLayoutHorizontal() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: double.infinity,
                height: 180,
                color: Colors.blue,
                child: Image.asset(
                  "assets/idbackground.jpg",
                  fit: BoxFit.cover,
                )),
            Container(
                margin: const EdgeInsets.only(left: 450, top: 30, right: 15),
                child: Column(
                  children: [
                    contentData("ID No.", "E412145678"),
                    contentData("E-mail", "daffaaditya2912@gmail.com"),
                    contentData("Phone", "+6285851065789")
                  ],
                ))
          ],
        ),
        Positioned(
          top: 70,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 220,
                height: 220,
                decoration: const ShapeDecoration(
                    color: Colors.amber,
                    shape: CircleBorder(),
                    image: DecorationImage(
                        image: AssetImage("assets/aaa.jpg"),
                        scale: 1.0,
                        fit: BoxFit.contain)),
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                width: 320,
                child: Text(
                  "Daffa Aditya Rejasa R.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              const SizedBox(
                width: 320,
                child: Text(
                  "Sales Crypto",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                "assets/ttd.png",
                alignment: Alignment.topCenter,
                scale: 1.2,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                child: Image.asset(
                  "assets/barcode.png",
                  alignment: Alignment.topCenter,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget contentDataVertical(String header, String desc) {
    return Column(
      children: [
        Text(
          header,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
        Text(
          desc,
          style: TextStyle(fontSize: 12),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Divider(),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget contentData(String header, String desc) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          header,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        Text(desc, style: TextStyle(fontSize: 20)),
        const Divider(
          thickness: 1,
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}

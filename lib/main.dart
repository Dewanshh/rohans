import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rohans/styles.dart';

import 'constants.dart';
import 'container_2.dart';
import 'container_wid.dart';
import 'drawer_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Intercity',
      home: MyHomePage(title: 'Intercity'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWid(),
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Color.fromRGBO(131, 195, 41, 1),
        title: Text(
          widget.title,
          style: GoogleFonts.poppins(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 10, right: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              buildChooseMethod(),
              const SizedBox(
                height: 30,
              ),
              addressMethod(),
              const SizedBox(
                height: 20,
              ),
              carChooser(),
              const form2(),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(131, 195, 41, 1)),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Find a Driver",
                        style: GoogleFonts.poppins(
                            color: Colors.black, fontSize: 20),
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox carChooser() {
    return SizedBox(
      height: 150,
      child: ListView.separated(
          itemCount: cabType.length,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (_, int index) {
            return const SizedBox(
              width: 20,
            );
          },
          itemBuilder: (_, int index) {
            return Container2(
              isSelected: isSelected,
              ind: index,
              data: cabType[index],
            );
          }),
    );
  }

  Column addressMethod() {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            child: Text(
              "A",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("From"),
              TextField(
                decoration: InputDecoration(hintText: "Boarding Address"),
              ),
            ],
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Text(
              "B",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("To"),
              TextField(
                decoration: InputDecoration(hintText: "Destination Address"),
              ),
            ],
          ),
        ),
        const ListTile(
          leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Icon(
                Icons.calendar_month,
                color: Colors.grey,
              )),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(hintText: "When"),
              ),
            ],
          ),
        ),
      ],
    );
  }

  SizedBox buildChooseMethod() {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, int index) {
          return ContainerWid(
              isSelected: isSelected, ind: index, data: x[index]);
        },
        itemCount: x.length,
        separatorBuilder: (_, int index) {
          return const SizedBox(
            width: 20,
          );
        },
      ),
    );
  }

  Drawer DrawerWid() {
    return Drawer(
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(
            top: (HomeVacationInsets.sm + 4) / 2,
            bottom: HomeVacationInsets.md),
        child: Column(
          children: [
            drawerHeaderWidget(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: HomeVacationInsets.lg),
              child: Divider(
                thickness: 1,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            DrawerCard(
                title: "Home", icon: Icons.home_outlined, onPressed: () {}),
            const SizedBox(
              height: 32,
            ),
            ShortlistDrawerCard(
                title: "Bookings", icon: Icons.logout, onPressed: () {}),
            const SizedBox(
              height: 32,
            ),
            DrawerCard(
                title: "My Orders", icon: Icons.logout, onPressed: () {}),
            const SizedBox(
              height: 32,
            ),
            DrawerCard(
                title: "Complaints", icon: Icons.logout, onPressed: () {}),
            const SizedBox(
              height: 32,
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: HomeVacationInsets.lg),
              child: Divider(
                thickness: 1,
              ),
            ),
            DrawerCard(title: "Logout", icon: Icons.logout, onPressed: () {}),
          ],
        ),
      ),
    );
  }

  DrawerHeader drawerHeaderWidget() {
    return DrawerHeader(
        decoration: BoxDecoration(
          border: Border.all(width: 0, color: Colors.white),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: HomeVacationInsets.sm,
              vertical: HomeVacationInsets.md),
          child: GestureDetector(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2, color: HomeVacationColors.white),
                        // color: Colors.red,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 12,
                            color: Colors.black.withOpacity(0.08),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(74),
                        child: Image.network(
                          "https://img.freepik.com/free-photo/image-amazed-happy-man-reacting-special-offer-internet-looking-laptop-excited-standing-against-blue-background_1258-65513.jpg?w=826&t=st=1694957772~exp=1694958372~hmac=ef3efbe7de17f5ca72f128ccc1015beba43c0ee44240ae414b45c5d0e07d6874",
                          fit: BoxFit.cover,
                          height: 60,
                          width: 60,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rohan Mehta",
                          style: GoogleFonts.poppins(
                              color: HomeVacationColors.surfaceVariant,
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          "example@gmail.com",
                          style: GoogleFonts.poppins(
                              color: HomeVacationColors.serviceGray,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

class form2 extends StatelessWidget {
  const form2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Icon(
              Icons.person_outlined,
              color: Colors.grey,
            ),
          ),
          title: TextField(
            decoration: InputDecoration(hintText: "Number of Passengers"),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Icon(
              Icons.comment_outlined,
              color: Colors.grey,
            ),
          ),
          title: TextField(
            decoration: InputDecoration(hintText: "Comments"),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Icon(
              Icons.local_offer_outlined,
              color: Colors.grey,
            ),
          ),
          title: TextField(
            decoration: InputDecoration(hintText: "Offer your fare"),
          ),
        )
      ],
    );
  }
}

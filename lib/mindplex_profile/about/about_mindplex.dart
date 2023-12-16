import 'package:flutter/material.dart';
import 'package:mindplex/mindplex_profile/about/widgets/about_card.dart';
import 'package:mindplex/mindplex_profile/about/widgets/contact_form.dart';
import 'package:mindplex/mindplex_profile/about/widgets/team_member_card.dart';
import 'package:mindplex/mindplex_profile/about/widgets/mission_card.dart';
import 'package:mindplex/mindplex_profile/about/widgets/values_card.dart';
import 'package:mindplex/mindplex_profile/about/widgets/vission_card.dart';
import 'package:mindplex/models/TeamMember.dart';

class AboutMindPlex extends StatelessWidget {
  const AboutMindPlex({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 6, 46, 59),
      body: ListView(
        children: [
          Material(
            elevation: 10,
            child: Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: Center(
                  child: Text(
                "About",
                style: TextStyle(color: Colors.white, fontSize: 22),
              )),
              height: 70,
            ),
            color: Color.fromARGB(255, 6, 46, 59),
          ),
          SizedBox(
            height: 10,
          ),
          AboutCard(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                "Our Team",
                style: TextStyle(
                    color: const Color.fromARGB(255, 105, 190, 108),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 3,
              childAspectRatio: 0.6,
              children: [
                TeamMemberCard(teamMember: TeamMember(name: "Dr. Ben Goertzel",position: "Editor in chief",profilePic: "https://magazine.mindplex.ai/wp-content/plugins/mp-general/public/assets/authors/ben.png")),
                TeamMemberCard(teamMember: TeamMember(name: "Amara Angelica",position: "Senior Editor",profilePic: "https://magazine.mindplex.ai/wp-content/plugins/mp-general/public/assets/authors/amara.png")),
                TeamMemberCard(teamMember: TeamMember(name: "Lisa Rein",position: "Editor in Large",profilePic: "https://magazine.mindplex.ai/wp-content/plugins/mp-general/public/assets/authors/lisa.png")),
                TeamMemberCard(teamMember: TeamMember(name: "Conor O`Higgins",position: "Managing Editor",profilePic: "https://magazine.mindplex.ai/wp-content/plugins/mp-general/public/assets/authors/conor.png")),
                TeamMemberCard(teamMember: TeamMember(name: "Hruy Tsegaye",position: "CEO of Mindplex",profilePic: "https://magazine.mindplex.ai/wp-content/plugins/mp-general/public/assets/authors/hruy.png")),
                TeamMemberCard(teamMember: TeamMember(name: "Leykun Ejigu",position: "Developer",profilePic: "https://magazine.mindplex.ai/wp-content/plugins/mp-general/public/assets/authors/leykun.jpg")),
                TeamMemberCard(teamMember: TeamMember(name: "Debashis Saha",position: "UX Designer",profilePic: "https://magazine.mindplex.ai/wp-content/plugins/mp-general/public/assets/authors/debashis.jpg")),
                TeamMemberCard(teamMember: TeamMember(name: "Esubalew Amenu",position: "Lead Backend Developer",profilePic: "https://magazine.mindplex.ai/wp-content/plugins/mp-general/public/assets/authors/esubalew.jpg")),
                TeamMemberCard(teamMember: TeamMember(name: "Dawit Mekonnen",position: "Web developer",profilePic: "https://magazine.mindplex.ai/wp-content/plugins/mp-general/public/assets/authors/dawit.jpg")),
                TeamMemberCard(teamMember: TeamMember(name: "Anna Ostrovska",position: "Illustrator & UI Designer",profilePic: "https://magazine.mindplex.ai/wp-content/plugins/mp-general/public/assets/authors/anna.jpg")),
                TeamMemberCard(teamMember: TeamMember(name: "Tesfaye Assefa (Tesfu)",position: "Illustrator",profilePic: "https://magazine.mindplex.ai/wp-content/plugins/mp-general/public/assets/authors/tesfaye.jpg")),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                "Our Vissions",
                style: TextStyle(
                    color: const Color.fromARGB(255, 105, 190, 108),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          MissionCard(),
          ValuesCard(),
          VissionsCard(),
          ContactForm()
        ],
      ),
    ));
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokemon/app/podcast/podcast_screen.dart';
import 'package:pokemon/app/util/custom_collor.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isPlaying = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: const Text('PETCast'),
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              SvgPicture.asset(
                                'assets/logo.svg',
                                width: 40,
                                height: 40,
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Text(
                                "PET",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Text(
                                "Cast",
                                style: TextStyle(
                                  color: CustomColor.pink700,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )
                        ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      right: 2,
                      left: 20,
                    ),
                    height: 35,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        CategoryWidget(
                          text: 'Extensão',
                          color: CustomColor.purple700,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CategoryWidget(
                          text: 'Projetos',
                          color: CustomColor.purple700,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CategoryWidget(
                          text: 'Comunidade',
                          color: CustomColor.purple700,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CategoryWidget(
                          text: 'Ensino',
                          color: CustomColor.purple700,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),

                  Center(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(25, 30, 25, 0),
                      child: const Text(
                        'Podcasts Recentes',
                        style: TextStyle(
                          color: CustomColor.purple700,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    child: Container(
                      height: isPlaying ?  
                       MediaQuery.of(context).size.height * 0.54 :
                      MediaQuery.of(context).size.height * 0.8,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                             PodcastWidget(
                              img: "assets/philips.jpg",
                              title: "Philips Full Stack",
                              description: "Aprenda a criar aplicações ultramega elaboradas",
                              click: (){
                                setState(() {
                                  isPlaying = !isPlaying;
                                });
                              },
                              color: isPlaying ? CustomColor.pink700 : CustomColor.purple700,
                              icon: Icon(
                                isPlaying ? Icons.pause : Icons.play_arrow,
                                color: Colors.white,
                              )
                              
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                             PodcastWidget(
                              img: "assets/impulso.jpg",
                              title: "Impulso",
                              description: "Impulso Full Stack",
                              click: (){
                                setState(() {
                                  isPlaying = !isPlaying;
                                });
                              },
                              color: isPlaying ? CustomColor.pink700 : CustomColor.purple700,
                              icon: Icon(
                                isPlaying ? Icons.pause : Icons.play_arrow,
                                color: Colors.white,
                              )
                              
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                             PodcastWidget(
                              img: "assets/philips.jpg",
                              title: "Philips Full Stack",
                              description: "Aprenda a criar aplicações",
                              click: (){
                                setState(() {
                                  isPlaying = !isPlaying;
                                });
                              },
                              color: isPlaying ? CustomColor.pink700 : CustomColor.purple700,
                              icon: Icon(
                                isPlaying ? Icons.pause : Icons.play_arrow,
                                color: Colors.white,
                              )
                              
                            ),
                     // Add an else part to the ternary operator
                          ],
                        ),
                      ),
                    ),
                  ),
                      isPlaying ? 
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(context, 
                                  MaterialPageRoute(builder: (context) => const PodcastScreen()
                                  ));
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                            colors: [
                                              CustomColor.gray700,
                                              CustomColor.gray200
                                            ],
                                            begin: Alignment.bottomRight,
                                            end: Alignment.topLeft,
                                          ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: CustomColor.gray700.withOpacity(0.5) ,
                                          offset: const Offset(0, 20),
                                          blurRadius: 40,
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(25)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 60,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              image: const DecorationImage(
                                                image: AssetImage("assets/philips.jpg"),
                                                fit: BoxFit.cover,
                                              ),
                                            ),  
                                            
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          const Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Philips Full Stack",
                                                style: TextStyle(
                                                  color: CustomColor.purple700,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              SizedBox(height: 10,),
                                              Text("06:90 / 69:66",
                                                style: TextStyle(
                                                  color: CustomColor.gray200,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: CustomColor.purple700,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Icon(
                                          isPlaying ? Icons.pause : Icons.play_arrow,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                    )
                                ),
                              ),
                            )
                            : Container(),
                ],
              ),
             
            ),
            bottomNavigationBar: BottonNavigator(),
          
            ));
  }
}

class BottonNavigator extends StatelessWidget {
  const BottonNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: CustomColor.pink700,
      selectedFontSize: 13,
      unselectedFontSize: 13,
      iconSize: 30,
      items: const [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: "Pesquisar",
          icon: Icon(Icons.search),
        ),
        BottomNavigationBarItem(
          label: "Categorias",
          icon: Icon(Icons.grid_view),
        ),
        BottomNavigationBarItem(
          label: "Minha conta",
          icon: Icon(Icons.account_circle_outlined),
        ),
      ],
    );
  }
}

class PodcastWidget extends StatelessWidget{
  const PodcastWidget({super.key,
    required this.img,
    required this.title,
    required this.description,
    required this.color,
    required this.icon,
    required this.click,
  });

  final String img;
  final String title;
  final String description;
  final Color color;
  final Icon icon;
  final Function()? click;
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: CustomColor.purple700,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 200,
                  child: Text(
                    description,
                    style: const TextStyle(
                      color: CustomColor.gray200,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                )
              ],
            )
          ],
        ),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: InkWell(
            onTap: click,
            child: icon,
          )
        )
      ],
    );
  }


}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.text,
    required this.color,
  });

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30,
        width: 130,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            text.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ));
  }
}

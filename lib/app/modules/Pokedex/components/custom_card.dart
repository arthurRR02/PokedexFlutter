import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/app/modules/Pokedex/pokedex_controller.dart';

class CustomCard extends StatefulWidget {
  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends ModularState<CustomCard, PokedexController> {
  @override
  Widget build(BuildContext context) {
    return  GridView.count(
              crossAxisCount: 2,
              children: List.generate(controller.pokemons!.pokemon!.length, (index) {
                return GestureDetector(
                  onTap: () {
                     Modular.to.pushNamed("/details");
                     controller.savedIndex = index;
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: controller.setColor(controller.pokemons!.pokemon![index].type![0]),
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                            ),
                            height: MediaQuery.of(context).size.height * 0.22,
                            child: Stack(
                              children: [
                                Center(
                                  child: Hero(
                                    tag: controller.pokemons!.pokemon![index].num!,
                                    child: Container(
                                      margin: EdgeInsets.only(left: 35, top: 35, bottom: 25),
                                      child: controller.getImage(
                                        controller.pokemons!.pokemon![index].num!
                                      ),
                                    ),
                                  )),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 8, bottom: 2, top: 15),
                                      child: Text(controller.pokemons!.pokemon![index].name!,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Colors.white
                                            ),
                                            ),
                                    ),
                                   Padding(
                                     padding: EdgeInsets.only(left: 8),
                                     child: Text("Nº ${controller.pokemons!.pokemon![index].num}",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.white
                                        ),
                                        ),
                                   ),
                                  ],
                                ),
                                      Positioned(
                                      left: 18,
                                      right: 30,
                                      bottom: 12,
                                      child: SizedBox(
                                        height: MediaQuery.of(context).size.height * 0.03,
                                        width: MediaQuery.of(context).size.width * 0.5,
                                        child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: controller.pokemons!.pokemon![index].type!.length,
                                          itemBuilder: (context, i){
                                            return Padding(
                                              padding: EdgeInsets.only(left: 8),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.only(right: 1),
                                                    decoration: BoxDecoration(
                                                      border: Border.all(color: Colors.black, width: 0.1),
                                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                                      color: controller.setColorType(controller.pokemons!.pokemon![index].type![i])
                                                      ),
                                                    child: Text(controller.pokemons!.pokemon![index].type![i], 
                                                    style: TextStyle(
                                                      color: Colors.white
                                                    ),),
                                                  )
                                                ]),
                                            );
                                          }
                                          ),
                                      )
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
            })
          );
  }
}
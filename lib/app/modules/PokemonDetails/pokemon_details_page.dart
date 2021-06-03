import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/app/modules/Pokedex/pokedex_controller.dart';
import 'package:pokedex/app/modules/PokemonDetails/pokemon_details_controller.dart';

class PokemonDetailsPage extends StatefulWidget {
  @override
  _PokemonDetailsPageState createState() => _PokemonDetailsPageState();
}

class _PokemonDetailsPageState
    extends ModularState<PokemonDetailsPage, PokemonDetailsController> {
  final pokedexController = Modular.get<PokedexController>();
  PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: pokedexController.savedIndex);
      _pageController.addListener((){
        setState(() {
         controller.indexPage = _pageController.page!.toInt();    
                });
        
      });
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () => Modular.to.pop(),
      )),
      body: Observer(builder: (_) {
        return PageView.builder(
            onPageChanged:  (page){
                  setState(() {
                    controller.indexPage = page;
                  });
                },
            controller: _pageController,
            scrollDirection: Axis.horizontal, 
            itemCount: pokedexController.pokemons!.pokemon!.length,
            pageSnapping: true,
            itemBuilder: (BuildContext context, int index){
              return Container(
                color: pokedexController.setColor(pokedexController.pokemons!.pokemon![index].type![0]),
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(12), 
                            height: MediaQuery.of(context).size.height * 0.4,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("${pokedexController.pokemons!.pokemon![index].name}",
                                style: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white
                                ),
                                ),
                                Row(
                              children: [
                                Text("Nº ${pokedexController.pokemons!.pokemon![index].num}",
                                style: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white
                                ),
                                ),
                              ],
                            )
                  ],
                ),
                          ),
                      Theme(
                        data: ThemeData(
                          fontFamily: "Staaliches"
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                            boxShadow: [
                                BoxShadow(
                                blurRadius: 10.00,
                              )
                              ],
                            ),
                          padding: EdgeInsets.all(16),
                          height: MediaQuery.of(context).size.height * 0.5,
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width,
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Height", 
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                    ),
                                    ),
                                    Text("${pokedexController.pokemons!.pokemon![controller.indexPage].height}",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 8),
                                      child: Text("Weight", 
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold
                                      ),
                                      ),
                                    ),
                                    Text("${pokedexController.pokemons!.pokemon![controller.indexPage].weight}",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                    ),
                                     Padding(
                                      padding: EdgeInsets.only(top: 8),
                                      child: Text("Type", 
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold
                                      ),
                                      ),
                                    ),
                                    SizedBox(
                                        height: MediaQuery.of(context).size.height * 0.03,
                                        width: MediaQuery.of(context).size.width,
                                        child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: pokedexController.pokemons!.pokemon![index].type!.length,
                                          itemBuilder: (context, i){
                                            return Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.all(2),
                                                  margin: EdgeInsets.only(right: 8),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(color: Colors.black, width: 0.1),
                                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                                    color: pokedexController.setColorType(pokedexController.pokemons!.pokemon![index].type![i])
                                                    ),
                                                  child: Text(pokedexController.pokemons!.pokemon![index].type![i], 
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontFamily: "Staaliches"
                                                  ),),
                                                )
                                              ]);
                                          }
                                          ),
                                      ),
                                      Padding(
                                      padding: EdgeInsets.only(top: 8),
                                      child: Text("Weaknesses", 
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold
                                      ),
                                      ),
                                    ),
                                      SizedBox(
                                        height: MediaQuery.of(context).size.height * 0.03,
                                        width: MediaQuery.of(context).size.width,
                                        child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: pokedexController.pokemons!.pokemon![index].weaknesses!.length,
                                          itemBuilder: (context, i){
                                            return Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.all(2),
                                                  margin: EdgeInsets.only(right: 8),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(color: Colors.black, width: 0.1),
                                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                                    color: pokedexController.setColorType(pokedexController.pokemons!.pokemon![index].weaknesses![i])
                                                    ),
                                                  child: Text(pokedexController.pokemons!.pokemon![index].weaknesses![i], 
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontFamily: "Staaliches"
                                                  ),),
                                                )
                                              ]);
                                          }
                                          ),
                                      ),
                                      Padding(
                                      padding: EdgeInsets.only(top: 8),
                                      child: Text("Next Evolutions", 
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold
                                      ),
                                      ),
                                    ),
                                    pokedexController.pokemons!.pokemon![index].nextEvolution != null ? 
                                      SizedBox(
                                        height: MediaQuery.of(context).size.height * 0.18,
                                        width: MediaQuery.of(context).size.width ,
                                        child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: pokedexController.pokemons!.pokemon![index].nextEvolution?.length,
                                          itemBuilder: (context, i){
                                            return Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(right: 8),
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                                    ),
                                                      child: pokedexController.getImage(pokedexController.pokemons!.pokemon![index].nextEvolution![i].num.toString())
                                                      ),
                                              ]);
                                          }
                                          ),
                                      ) :
                                      Text("No Evolutions",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontFamily: "Staaliches"
                                              ),
                                              )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                       ],
                      ),
                    ),
                    Positioned(
                            top: 50,
                            bottom: 300,
                            left: 80,
                            right: 60,
                            child: pokedexController.getImage(pokedexController.pokemons!.pokemon![index].num!)
                            )
                  ]),
              );
            }
            );
      }),
    );
  }
}

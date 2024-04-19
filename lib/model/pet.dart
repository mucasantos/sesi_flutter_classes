class Pet {
//propriedades
  String? name;
  String? image;

//construtor
  Pet({
    this.image,
    this.name,
  });

}

//Para criar uma lista de algum tipo dado,
//uso: List<TIPO_DE_DADO> nome_var = [];
List<Pet> mypets = [
  Pet(
      image:
          "https://static.vecteezy.com/system/resources/previews/018/871/732/original/cute-and-happy-dog-png.png",
      name: "My dog"),
  Pet(
      image:
          "https://png.pngtree.com/png-clipart/20230511/ourmid/pngtree-isolated-cat-on-white-background-png-image_7094927.png",
      name: "My cat"),
  Pet(
      image:
          "https://png.pngtree.com/png-clipart/20230528/ourmid/pngtree-funny-bunny-or-rabbit-for-easter-day-on-isolated-background-png-image_7110057.png",
      name: "My dog"),
  Pet(
      image:
          "https://png.pngtree.com/png-clipart/20230511/ourmid/pngtree-isolated-cat-on-white-background-png-image_7094927.png",
      name: "My cat"),
  Pet(
      image:
          "https://static.vecteezy.com/system/resources/previews/018/871/732/original/cute-and-happy-dog-png.png",
      name: "My dog"),
  Pet(
      image:
          "https://png.pngtree.com/png-clipart/20230511/ourmid/pngtree-isolated-cat-on-white-background-png-image_7094927.png",
      name: "My cat"),
];

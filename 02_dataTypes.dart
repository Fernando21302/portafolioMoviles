main(){
  // ------------ Numeros -------------
  int a = 10;
  double b = 3.13;
  int? c;
  late int d;
  d = 20;

  print(a);
  print(b);
  print(c);
  print(d);
  print(a + b);

  // ----------- Cadenas ---------------
  String nombre = 'Craig';
  String apellido = 'Boone';
  String apellidoRandom = 'O\'Connor';
  String? cadenaVacia;
  String nombreCompleto = '$nombre $apellido';
  String multilinea = 
      '''
Hola mundo 
    ¿como estas $nombre $apellido?
    Cuentame sobre Bitter Springs, $apellido
  ''';
  print(nombre);
  print(apellido);
  print(apellidoRandom);
  print(cadenaVacia);
  print(nombreCompleto);
  print(multilinea);

  //---------- Booleanos ----------
  bool isActive = true;
  bool isNotActive = !isActive;
  print(isActive);
  print(isNotActive);

  // --------- Array -----------
  var general = ['Arthur Maxon', 'Legate Lanius', 'Frank Horrigan', 1, true, 3.14];
  List<String> villanos = ['Arthur Maxon', 'Legate Lanius', 'Frank Horrigan'];
  villanos[0] = 'The Master';
  print(general);
  print(villanos);
  villanos.add('John Henry Eden');
  villanos.add('John Henry Eden');
  villanos.add('John Henry Eden');
  villanos.add('John Henry Eden');
  print(villanos);

  //------------- Sets ----------------
  var villanosSet = ['Arthur Maxon', 'Legate Lanius', 'Frank Horrigan', 1, true, 3.14];
  List<String> villanosSetString = ['Arthur Maxon', 'Legate Lanius', 'Frank Horrigan'];
  villanos[0] = 'The Master';
  print(villanosSet);
  print(villanosSetString);
  villanosSetString.add('John Henry Eden');
  villanosSetString.add('John Henry Eden');
  villanosSetString.add('John Henry Eden');
  villanosSetString.add('John Henry Eden');
  print(villanosSetString);

  var villanosSet2 = villanos.toSet();
  print(villanosSet2.toList());

  //----------------- Maps -----------------
  var ironman = {
    'nombre': 'Tony Stark',
    'poder': 'Inteligencia y el dinero',
    'edad': 40,
  };

  Map<String, dynamic> warMachine = {
    'nombre': 'Rhodey Rhodes',
    'poder': 'Tactico y tecnologia',
    'edad': 40,
  };

  Map<String, dynamic> capitanAmerica = Map();
  //capitanAmerica['nombre'] = 'Steve Rogres';
  capitanAmerica.addAll({
    'poder': 'Fuerza, agilidad y resistencia',
    'edad': 102,
  });
    capitanAmerica.addAll(ironman);
    print(ironman);
    print(warMachine);
    print(ironman['nombre']);
    print(warMachine['nombre']);
  
}

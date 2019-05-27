import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Recipes',
      theme: ThemeData(
        primaryColor: Colors.pink,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(title: 'Food Recipes'),
        DetailScreen.routeName: (context) => DetailScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    var foods = [
      {"food": "Donat Maizena", "image": "donat_maizena.jpg", "ingredients": "- 250 gr tepung terigu\n- 1 sdm tepung maizena\n- 2 sdm gula pasir\n- 1 sdt fermipan\n- 140 ml air hangat kuku\n- 30 gr margarin\n- 1/2 sdt vanilla bubuk", "cooking_steps": "1. Campurkan 1 sdm gula, air hangat dengan fermipan. Aduk rata dan tutup untuk membuat biang.\n2. Campurkan tepung, gula dan vanilli bubuk. Tuang biang ke dalam tepung dan uleni hingga kalis. Diamkan 30 menit hingga mengembang.\n3. Setelah itu tinju-tinju adonan hingga keluar udaranya.\n4. Buat bulatan 35 gr per adonan. Diamkan lagi 30 menit.\n4. Bentuk donat dan goreng hingga mengembang dan matang."},
      {"food": "Es Pisang Ijo", "image": "es_pisang_ijo.jpg", "ingredients": "- 8 buah pisang raja, dikukus 10 menit lalu kupas\n- 150 gram tepung beras\n- 150 gram tepung terigu\n- 60 gram gula pasir\n- 300 ml santan kental\n- 250 ml air perasan daun pandan\n- 3 tetes pasta pandan", "cooking_steps": "1. Haluskan 2 ikat pandan dengan 250 ml air dengan blender, peras, dan saring.\n2. Tambahkan santan kental, tepung beras, dan tepung terigu dalam air perasan daun pandan. Aduk rata sampai tidak menggumpal.\n3. Tambahkan gula dan pasta pandan, aduk rata.\n4. Kukus adonan sekitar 20 menit sampai matang.\n5. Ambil beberapa sendok adonan, uleni, lalu pipihkan di atas kertas minyak. Isi dengan pisang, tutup adonan, rapikan bentuknya (bisa dibungkus plastik). Lakukan sampai adonan habis. Kukus kembali dengan dialasi daun pisang sekitar 15 menit. Angkat dan dinginkan.\n6. Untuk membuat vla, campur dan aduk semua bahan. Masak dan didihkan dengan api kecil sampai mengental.\n7. Siapkan piring atau mangkuk. Ambil beberapa sendok vla, tambahkan potongan pisang di atasnya, beri es batu, sirup, dan susu kental manis secukupnya."},
      {"food": "Rolade Tahu Bayam", "image": "rolade_tahu_bayam.jpg", "ingredients": "-1 ikat bayam, siangi\n-1 buah tahu kotak besar (sekitar 300 gr)\n-2 butir telur\n-5 siung bawang putih, haluskan\n-1 cm terasi, bakar\n-1 sdt garam/secukupnya\n-3 sdm tepung terigu\n-2 sdm tepung beras\n-garam secukupnya", "cooking_steps": "-Rebus bayam, hingga matang, tiriskan, potong-potong\n-Hancurkan tahu dan campur dengan bayam, terasi dan bumbu halus.\n-Campurkan dengan telur dan aduk rata. Usahakan memeras bayam dan tahu agar adonan tidak terlalu basah.\n-Masukkan ke dalam wadah plastik panjang dan kukus kurang lebih 30 menit atau hingga matang dan padat. Biarkan dingin.\n-Potong-potong rolade. Campurkan bahan tepung dengan sedikit air. Gulung rolade dan goreng hingga matang dan krispi."},
      {"food": "Kupat Tahu", "image": "kupat_tahu.jpg", "ingredients": "- Tumis bumbu halus hingga harum. Tambahkan air, air asam jawa, dan kecap manis. Masak hingga mendidih. Koreksi rasa.\n- Seduh kol, mi telur, dan tauge dengan air panas. Tiriskan.\n- Tata lontong dengan mi, tauge, dan tahu. Siram dengan kuah. Taburi bawang goreng dan daun seledri.", "cooking_steps": "- Tumis bumbu halus hingga harum. Tambahkan air, air asam jawa, dan kecap manis. Masak hingga mendidih. Koreksi rasa.\n- Seduh kol, mi telur, dan tauge dengan air panas. Tiriskan.\n- Tata lontong dengan mi, tauge, dan tahu. Siram dengan kuah. Taburi bawang goreng dan daun seledri."},
      {"food": "Samosa", "image": "samosa.jpg", "ingredients": "- 500 gram tepung terigu serbaguna\n- 310 ml air\n- 2 sdm minyak\n- 1 sdt garam\n- 650 gram daging ayam cincang\n- 3 siung bawang putih\n- 4 butir bawang bombay\n- 1 sdt garam\n- 1 sdm gula\n- 1 sdt lada bubuk\n- 2 sdm bubuk kari instan\n", "cooking_steps": "- Cara membuat kulit\n1. Campur semua bahan kulit, uleni hingga kalis, istirahatkan selama 30 menit.\n2. Bagi adonan menjadi 4 bagian. Tiap bagian, bagi lagi menjadi lima. Total ada 20 bulatan.\n3. Ambil 5 bulatan, pipihkan jadi 5 lembar adonan kulit. Olesi 4 lembar adonan dengan minyak dan taburi tepung, tumpuk jadi satu. 1 lembar terakhir ditumpuk paling atas tanpa diolesi minyak.\n4. Rapikan pinggiran tumpukan. Gilas jadi satu lingkaran tipis. Panggang masing-masing sisi di teflon panas dengan api kecil selama sekitar 2 menit. Potong menjadi bentuk segi empat. Pisahkan masing-masing lembarannya. Kulit samosa siap digunakan.\n\n- Cara membuat samosa\n1. Tumis bawang putih cincang dan bawang bombay yang dipotong dadu sampai harum. Masukkan daging ayam cincang, bumbu rempah-rempah, gula, dan garam. Masak sampai agak kesat.\n2. Ambil kulit samosa, bentuk seperti contong, berisi isian daging ayam secukupnya, lipat membentuk segitiag. Rekatkan ujung dan pinggirannya dengan lem terigu dan air."},
      {"food": "Nasi Bakar Tuna", "image": "nasi_bakar_tuna.jpg", "ingredients": "- 3 porsi nasi putih/ secukupnya\n- 250 tuna segar (kukus) atau kaleng\n- 1 genggam kemangi\n- 1 ruas jahe, memarkan\n- 1 ruas lengkuas, memarkan\n- 2 batang serai, memarkan\n- 2 lembar daun salam\n- 3 butir kemiri\n- gula dan garam secukupnya", "cooking_steps": "- Tumis bumbu halus hingga harum, masukkan bumbu utuh dan tumis hingga harum.\n- Masukkan ikan tuna yang telah disuwir-suwir, tuang air secukupnya. Aduk rata dengan bumbu.\n- Masukkan garam dan gula secukupnya, tes rasa. Jika sudah pas, matikan api.\n- Ambil daun pisang secukupnya, tata nasi dan tumis tuna di atasnya, gulung dan semat dengan lidi di ujung-ujungnya.\n- Bakar nasi bungkus duan pisang hingga daun pisang kering dan sedap."},
      {"food": "Pancake Mangga Beku", "image": "pancake_mangga_beku.jpg", "ingredients": "- 200 ml susu full cream\n- 70 gr tepung terigu\n- 1 sdm margarin\n- 2 sdm gula halus\n- sejumput garam\n- 1 butir telur\n- 1 buah mangga gadung\n- 100 gr whipped cream\n- 100 ml air es\n- 1/2 sdt vanila essence\n- pewarna kuning", "cooking_steps": "1. Kocok krim hingga padat dan kaku, tidak jatuh ketika diangkat.\n2. Campurkan susu full cream dengan telur, garam dan gula hingga rata.\n3. Campur tepung terigu dan aduk rata. Lelehkan margarin dan aduk rata dengan adonan.\n4. Tuang adonan dan cetak di teflon, balik ketika satu sisi sudah matang. Lakukan hingga habis.\n5. Ambil mangga dan isi di dalam kulit bersama krim. Lipat dan diamkan di dalam freezer."},
      {"food": "Capcay Saus Tiram", "image": "capcay_jamur_saus_tiram.jpg", "ingredients": "- 200 gr jamur tiram, cuci sambil diremas-remas, suwir-suwir\n- 1 buah mentimun, buang bijinya, potong korek api\n- 1 buah wortel, potong korek api\n- 1 buah paprika, potong korek api\n- 1 sdm tepung maizena, larutkan dengan sedikit air\n- 3 siung bawang putih, iris tipis\n- 1 buah bawang bombay\n- 1 sdm saus tiram\n- 1 sdm minyak ikan\n- 1 sdt kecap inggris\n- 1/2 sdt merica bubuk\n- garam dan gula secukupnya", "cooking_steps": "- Tumis bawang bombay hingga harum, masukkan bawang putih dan tumis lagi hingga sedap.\n- Masukkan semua sayuran dan tuang sedikit air, masak hingga sayuran layu.\n- Masukkan semua saus dan merica bubuk, aduk rata.\n- Terakhir, tuang maizena dan aduk rata hingga mengental. Tes rasa."},
      {"food": "Asem Asem Daging", "image": "asem_asem_daging.jpg", "ingredients": "- 500 gram daging sapi\n- 10 buah buncis, buang uratnya, potong panjang\n- 1 buah wortel, potong-potong\n- 1 buah tomat hijau besar, belah jadi 4 bagian\n- 1 buah tomat merah, bagi 4 bagian\n- 2 buah belimbing wuluh potong-potong\n- 1/4 sdt merica bubuk\n- 1 sdm kecap\n- 1 sdm gula merah\n- garam secukupnya dan sedikit gula\n- kaldu bubuk secukupnya\n- 7 siung bawang merah, iris\n- 4 siung bawang putih, geprek iris\n- 3 buah cabe hijau, potong\n- 1 buah cabe merah, potong\n- 7 buah cabe rawit utuh\n- 2 ruas lengkuas, bagi dua dan memarkan\n- 2 lembar daun salam\n- minyak untuk menumis", "cooking_steps": "- Potong dadu daging sapi, remas-remas dengan daun pepaya agar empuk, jika tak ada, bisa menggunakan pengempuk daging biasa. Rebus agar terpisah dari kotoran dan lemak, tiriskan.\n- Tumis bawang merah dan bawang putih hingga harum, masukkan semua bumbu lainnya, oseng lagi hingga matang.\n- Tuang 700 ml air, masak hingga mendidih. Masukkan daging dan sedikit garam.\n- Masukkan semua sayuran dan masak hingga agak empuk, tuang kecap, gula merah, kaldu bubuk dan merica bubuk.\n- Tes rasa, jika rasanya belum asam gurih, tambahkan garam dan gula."},
      {"food": "Gulai Lidah Sapi", "image": "gulai_lidah_sapi.jpg", "ingredients": "- 1 kg lidah sapi\n- 700 ml santan cair\n- 3 lembar daun salam\n- 3 lembar daun jeruk\n- 1 ruas lengkuas, memarkan hingga agak hancur\n- 2 batang serai, memarkan\n- gula garam secukupnya\n- 5 siung bawang putih\n- 10 butir bawang merah\n- 10 buah cabai merah\n- 1 sdm ketumbar, sangrai\n- 1 sdt jintan, sangrai\n- 1 sdm gula jawa, sisir\n- 4 butir kemiri\n- 2 ruas jahe\n- 2 ruas kunyit", "cooking_steps": "- Rebus lidah sapi dengan garam secukupnya hingga terlepas dari kotorannya. Tiriskan dan kuliti bagian atas lidah sapi yang ada lapisan putihnya. Presto lidah sapi kurang lebih 20 menit hingga empuk. Angkat dan potong-potong sesuai selera.\n- Tumis bumbu halus hingga harum dan masukkan semua bumbu kasar, termasuk gula dan garam secukupnya. Masak bumbu hingga matang.\n- Tuang santan dan aduk hingga agak mendidih. Masukkan lidah sapi dan masak agak lama hingga santan berkurang atau mengental.\n- Tes rasa, tambahkan garam dan gula secukupnya hingga sesuai selera."},
      {"food": "Sup Iga Kambing", "image": "sup_iga_kambing.jpg", "ingredients": "- 700 gr iga kambing\n- 1 buah kentang, potong-potong\n- 1 buah wortel, potong-potong\n- 2 batang daun bawang besar, potong-potong\n- 2 buah tomat, potong-potong\n- air secukupnya\n- 1 buah bawang bombay, potong-potong agak besar\n- 5 siung bawang putih, memarkan dan cincang kasar\n- 2 ruas jahe, memarkan hingga hancur\n- 4 buah cengkeh\n- 1 batang kayu manis panjang\n- 2 buah pekak\n- 2 buah kapulaga\n- 1 sdt pala bubuk\n- 1 sdt merica bubuk\n- 1 sdt ketumbar bubuk\n- gula dan garam secukupnya", "cooking_steps": "- Rebus iga hingga berubah warna untuk menghilangkan lemak dan kotorannya. Buang air rebusan dan tiriskan.\n- Rebus iga lagi hingga mendidih.\n- Tumis bawang bombay hingga layu, masukkan bawang putih dan tumis hingga harum dan matang.\n - Masukkan semua bumbu utuh dan bubuk, aduk rata hingga menimbulkan bau harum.\n- Masukkan kentang, wortel dan daun bawang ke dalam rebusan iga yang mendidih.\n- Masukkan bumbu tumis dan aduk rata. Tambahkan gula dan garam secukupnya sesuai selera."},
      {"food": "Tumis Tahu Teriyaki", "image": "tumis_tahu_goreng_teriyaki.jpg", "ingredients": "- 1 blok tahu putih, potong dadu dan rendam sedikit garam\n- 2 sdm tepung terigu serbaguna\n- 2 sdm saus teriyaki\n- 2 siung bawang putih\n- 1/2 sdt merica, \n- 1 sdm saus tiram\n- 1 sdm saus cabai\n- garam dan gula secukupnya\n- minyak secukupnya", "cooking_steps": "- Gulung tahu ke dalam tepung lalu goreng tahu hingga matang kecokelatan, tiriskan.\n- Tumis bawang putih hingga harum, masukkan semua saus dan merica, masukkan tahu goreng dan aduk merata. \n- Tes rasa, masukkan garam dan gula secukupnya. \n- Siap sajikan dengan nasi hangat."},
      {"food": "Tahu Pok Pok Krispi", "image": "tahu_pok_pok_krispi_renyah.jpg", "ingredients": "- 1 buah tahu putih besar\n- 5 sdm tepung terigu\n- 1 sdm tepung maizena\n- 2 siung bawang putih, haluskan\n- 1/2 sdt merica bubuk\n- 1/2 sdt garam/secukupnya\n- cabai bubuk secukupnya\n- bumbu balado atau BBQ", "cooking_steps": "1. Hancurkan tahu putih, campur dengan bawang putih, gula dan merica bubuk. Aduk rata.\n2. Campurkan tepung terigu dan maizena. Campur dengan tahu yang sudah dibumbui. Tak perlu terlalu diaduk agar bisa krispi dan keriting.\n3. Jumput tahu sesuai selera dan goreng hingga matang dan krispi. Tiriskan.\n4. Taburi tahu dengan bumbu-bumbu topping, jadi deh tahu pok-pok yang bisa dicamil saat hangat."},
      {"food": "Tahu Walik Aci", "image": "tahu_walik_aci.jpg", "ingredients": "- 10 buah tahu pong\n- 4 sdm tepung terigu\n- 3 sdm tepung tapioka\n- 1 batang daun bawang, iris tipis\n- 250 ml air\n- 1 sdt garam\n- kaldu bubuk secukupnya\n- 2 siung bawang putih\n- 3 siung bawang merah", "cooking_steps": "- Potong tahu pong jadi dua dan keluarkan isinya.\n- Rebus air secukupnya, masukkan bumbu halus, garam secukupnya, kaldu ayam, dan daun bawang. Aduk rata hingga sedap. Matikan api. \n- Masukkan tepung terigu dan tapioka. Aduk rata.\n- Balik tahu dan isikan adonan ke dalamnya. Lakukan hingga habis.\n- Goreng tahu walik aci hingga kecokelatan dan kering krispi."},
      {"food": "Tahu Lada Hitam", "image": "tahu_lada_hitam.jpg", "ingredients": "- 1 buah tahu putih, ukuran 200-300 gr\n- 2 sdm tepung terigu\n- 2 sdm tepung bumbu serbaguna\n- air secukupnya\n- 1 sdm saus tiram\n- 1 sdt kecap asin\n- 1 sdt lada hitam, haluskan\n- 2 siung bawang putih\n- 1 buah cabai merah, iris tipis\n- 1 buah cabai hijau, iris tipis\n- 1 sdm tepung maizena, larutkan dengan air\n- garam dan gula secukupnya", "cooking_steps": "- Potong dadu tahu putih. Cairkan tepung bumbu tapi jangan terlalu encer, celupkan ke dalam tepung bumbu dan gulung ke dalam tepung \nerigu.\n- Goreng tahu hingga matang dan kecokelatan, tiriskan. \n- Tumis bawang putih dan cabai hingga harum, masukkan semua bumbu kecuali tepung maizena, aduk rata. \n- Masukkan tahu selimut, aduk rata dengan bumbu. Larutkan maizena dan tuang sedikit demi sedikit. Aduk rata hingga agak kental. Tes rasa, tambahkan gula dan garam sesuai selera. Setelah sesuai, matikan api."},
      {"food": "Tumis Ayam Sayuran", "image": "tumis_ayam_sayuran.jpg", "ingredients": "- 1 buah dada ayam fillet\n- 1 buah wortel, iris tipis\n- 1 bonggol brokoli, siangi\n- 1 buah paprika, iris tipis\n- 5 buah baby corn, iris tipis\n- 2 siung bawang putih\n- 1/2 siung bawang bombay, iris tipis\n- 2 buah cabai merah, iris tipis\n- 3 buah cabai rawit, iris tipis\n- 2 sdm saus tomat\n- 2 sdm saus cabai\n- 1 sdm saus tiram\n- 1 sdt kecap asin\n- merica bubuk secukupnya\n- garam dan gula secukupnya", "cooking_steps": "- Rebus sebentar dada ayam, potong dadu\n- Tumis bawang putih dan bawang bombay hingga layu, Masukkan dada ayam. Tumis sebentar dengan bumbu.\n- Masukkan sayuran, beri sedikit air dan masak hingga matang.\n- Masukkan semua bumbu saus dan aduk rata. Tuang larutan maizena secukupnya dan aduk hingga mengental."},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
            widget.title,
            style: TextStyle(fontFamily: 'ProductSans')
        ),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: foods.length,
          itemBuilder: (context, index) {
            return new GestureDetector(
              child: new Card(
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                margin: EdgeInsets.all(10),
                child: new Column(
                  children: <Widget>[
                    new Container(
                      alignment: Alignment.topCenter,
                      child: new ClipRRect(
                        borderRadius: new BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5)),
                        child: new Image.asset(
                          "assets/images/" + foods[index]["image"],
                          fit: BoxFit.cover,
                          height: 120,
                        ),
                      ),

                    ),
                    new Padding(padding: EdgeInsets.only(top: 10)),
                    new Text(
                      foods[index]['food'],
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withAlpha(175),
                          fontFamily: 'ProductSans'
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(
                    context,
                    DetailScreen.routeName,
                    arguments: DetailArguments(
                        foods[index]["food"],
                        foods[index]["image"],
                        foods[index]["ingredients"],
                        foods[index]["cooking_steps"]
                    )
                );
              },
            );
          }

      ),
    );
  }

}

class DetailScreen extends StatelessWidget {
  static const routeName = '/detail';

  @override
  Widget build(BuildContext context) {
    final DetailArguments args = ModalRoute
        .of(context)
        .settings
        .arguments;

    return Scaffold(
        appBar: AppBar(
            title: Text(
                'Detail Recipe', style: TextStyle(fontFamily: 'ProductSans')),
            leading: IconButton(icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context, false),
            )
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                alignment: Alignment.topCenter,
                child: new Image.asset(
                  "assets/images/" + args.image,
                  fit: BoxFit.cover,
                ),
              ),
//            new Padding(padding: EdgeInsets.only(top: 5)),
              new Container(
                padding: EdgeInsets.all(20),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(
                      args.food,
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'ProductSans',
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withAlpha(170)
                      ),
                      textAlign: TextAlign.left,
                    ),
                    new Padding(padding: EdgeInsets.only(top: 20)),
                    new Text(
                        "Ingredients:",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontWeight: FontWeight.bold,
                            fontSize: 14
                        )
                    ),
                    new Padding(padding: EdgeInsets.only(top: 5)),
                    new Text(args.ingredients,
                        style: TextStyle(fontFamily: 'ProductSans')),
                    new Padding(padding: EdgeInsets.only(top: 20)),
                    new Text(
                        "Cooking Steps:",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontWeight: FontWeight.bold,
                            fontSize: 14
                        )
                    ),
                    new Padding(padding: EdgeInsets.only(top: 5)),
                    new Text(args.cookingSteps,
                        style: TextStyle(fontFamily: 'ProductSans'),
                        textAlign: TextAlign.justify)
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}

class DetailArguments {
  final String food;
  final String image;
  final String ingredients;
  final String cookingSteps;

  DetailArguments(this.food, this.image, this.ingredients, this.cookingSteps);
}

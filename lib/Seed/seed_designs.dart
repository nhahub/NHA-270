import '../Models/designs.dart';
import '../repositories/design_repository.dart';

Future<void> seedDesignsPart1() async {
  final repo = DesignRepository();

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_0.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : kitchen,dining , drawing  , balcony',
  )); //0

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 1 | features : Family Room, deck, terrace',
  )); //1

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features :drawing room, dining, kitchen, rear lawn',
  )); //3

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_3.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, flower bed, kitchen, deck',
  )); //3

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_5.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : kitchen,drawing room  ,balcony',
  )); //5

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_6.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features :  drawing room , balcony, kitchen',
  )); //6

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_7.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen, terrace ,balcony',
  )); //7

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_8.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, balcony, kitchen',
  )); //8

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_10.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, flower bed, kitchen',
  )); //10

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_11.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen',
  )); //11

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_12.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen,balcony',
  )); //12

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_13.png',
    description: 'bedrooms : 4 | toilet : 5 | attached _ toilet : 4 | dress _ room : 2 | features : living room, dining, kitchen, balcony,pooja,utility,servant room',
  )); //13

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_14.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing, kitchen, balcony',
  )); //14

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_15.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, kitchen,dining,balcony',
  )); //15

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_17.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, flower bed , balcony ,lobby',
  )); //17

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_18.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features :  dining, kitchen',
  )); //18

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_19.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, kitchen, balcony',
  )); //19

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_20.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, utility,balcony',
  )); //20

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_21.png',
    description: 'bedrooms : 4 | toilet : 2 | attached _ toilet : 2 | dress _ room : 2 | features : powder room, dining, kitchen, balcony,pooja room , utility,lobby,foyer,staff block , family lonuge',
  )); //21

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_22.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  )); //22

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_3262.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : lobby kitchen, balcony',
  )); //3262

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_3264.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, kitchen',
  )); //3264

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_3265.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  )); //3265

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_3281.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, passage',
  )); //3281

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_3285.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : passage, sit out, kitchen, balcony',
  )); //3285

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_3289.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen , balcony',
  )); //3289

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_3293.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, parking , powder room , utility , deck , water body',
  )); //3293

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_3299.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 2 | features : living room, dining, foyer , servant room , dry balcony',
  )); //3299

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_3303.png',
    description: 'bedrooms : 2 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, wash',
  )); //3303

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_3304.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 1 | features : lounge, balcony',
  )); //3304

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_3306.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 1 | features : living room, balcony, kitchen',
  )); //3306

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_7268.png',
    description: 'bedrooms: 1 | toilet: 2 | attached_toilet: 0 | dress_room: 0 | features: living room, kitchen, dining',
  )); //7268

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_7272.png',
    description: 'bedrooms: 3 | toilet: 3 | attached_toilet: 2 | dress_room: 0 | features: living room, dining, kitchen, balcony',
  )); //7272

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_7277.png',
    description: 'bedrooms: 1 | toilet: 2 | attached_toilet: 0 | dress_room: 0 | features: living room, dining, kitchen, lobby',
  )); //7277

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_7294.png',
    description: 'bedrooms: 2 | toilet: 2 | attached_toilet: 1 | dress_room: 0 | features: living room, dining, kitchen, utility, balcony',
  )); //7294

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_7323.png',
    description: 'bedrooms: 4 | toilet: 4 | attached_toilet: 4 | dress_room: 0 | features: living, dining, kitchen, balcony, pool, store, terrace, verandah, deck, utility, servant room, lawn',
  )); //7323

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_7326.png',
    description: 'bedrooms: 1 | toilet: 1 | attached_toilet: 0 | dress_room: 0 | features: drawing room, dining, kitchen, balcony',
  )); //7326

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_7331.png',
    description: 'bedrooms: 2 | toilet: 2 | attached_toilet: 1 | dress_room: 0 | features: living room, dining, lobby, kitchen, balcony, terrace',
  )); //7331

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_7371.png',
    description: 'bedrooms: 1 | toilet: 2 | attached_toilet: 1 | dress_room: 0 | features: living room, dining, kitchen, balcony',
  )); //7371

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_7373.png',
    description: 'bedrooms: 1 | toilet: 2 | attached_toilet: 1 | dress_room: 0 | features: living room, dining, kitchen, passage, balcony',
  )); //7373

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_7383.png',
    description: 'bedrooms: 2 | toilet: 2 | attached_toilet: 1 | dress_room: 0 | features: drawing room, dining, kitchen, lawn, parking, study room',
  )); //7383

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_7398.png',
    description: 'bedrooms: 1 | toilet: 1 | attached_toilet: 1 | dress_room: 1 | features: living room, dining, kitchen, sitout, terrace, lawn',
  )); //7398

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_7407.png',
    description: 'bedrooms: 1 | toilet: 1 | attached_toilet: 1 | dress_room: 1 | features: drawing room, dining, kitchen, car porch, lawn',
  )); //7407

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_7428.png',
    description: 'bedrooms: 2 | toilet: 2 | attached_toilet: 2 | dress_room: 0 | features: hall, dining, kitchen, balcony',
  )); //7428

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_7467.png',
    description: 'bedrooms: 3 | toilet: 3 | attached_toilet: 2 | dress_room: 1 | features: living room, dining, kitchen, balcony',
  )); //7467

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_7480.png',
    description: 'bedrooms: 3 | toilet: 3 | attached_toilet: 2 | dress_room: 0 | features: living room, dining, kitchen',
  )); //7480

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_7476.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 1 | features : drawing room, dining, kitchen, lobby, puja, balcony, multipurpose room',
  )); //7476

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_23.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen,utility, courtyard',
  )); //23

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_24.png',
    description: 'bedrooms : 4 | toilet : 3 | attached _ toilet : 1 | dress _ room : 1 | features : lobby, dining, kitchen, balcony,store,rear countryard , front countryard',
  )); //24

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_27.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features :  dining, kitchen, garden,verandah',
  )); //27

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_3260.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 0 | features : drawing room, lobby , kitchen, balcony, front lawn',
  )); //3260

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_3313.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : hall, kitchen, utility, balcony',
  )); //3313

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_30.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen,dining,balcony',
  ));//30

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_31.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, balcony, kitchen',
  ));//31

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_33.png',
    description: 'bedrooms : 4 | toilet : 3 | attached _ toilet : 2 | dress _ room : 2 | features : living room, dining, kitchen, balcony, rear lawn ,front lawn,drawing',
  ));//33

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_34.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, verandah, kitchen',
  ));//34

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_36.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony,lobby',
  ));//36

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_37.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, balcony ,kitchen',
  ));//37

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_38.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features :  dining, kitchen, study room',
  ));//38

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_39.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : powder room, dining, kitchen, rear lawn, lobby',
  ));//39

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_40.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : dining room, kitchen, balcony ,drawing room',
  ));//40

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_44.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony, foyer , utility',
  ));//44

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_45.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining,  kitchen',
  ));//45

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_49.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : sitting , pantry',
  ));//49

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_50.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, wash , balcony',
  ));//50

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_51.png',
    description: ' bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : parking , garden , foyer , living room',
  ));//51

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_54.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));//54

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_55.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : wash ,kitchen , passage , walking space , hall',
  ));//55

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_56.png',
    description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 3 | dress _ room : 1 | features : living room, study room , powder room, kitchen, foyer, balcony , servant room , media room , utility',
  ));//56

  await repo.insertDesign(Design(
    image: 'assets/ resized_images/image_57.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room , dining , balcony, kitchen',
  ));//57

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_60.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 1 | features : living room, balcony, kitchen',
  ));//60

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_61.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 1 | features : living room, dining, kitchen, wash, balcony',
  ));//61

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_63.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, utility, kitchen, balcony',
  ));//63

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_64.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen, balcony',
  ));//64

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_71.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 1 | features : living room, dining, kitchen, entry , utility , balcony',
  ));//71

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_75.png',
    description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 4 | dress _ room : 1 | features : living room,passage, kitchen, balcony,lobby',
  ));//75

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_77.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen',
  ));//77

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_79.png',
    description: 'bedrooms : 4 | toilet : 5 | attached _ toilet : 4 | dress _ room : 0 | features : living room, dining, kitchen, balcony, terrace ,wardrobe, lobby, utility, servant room',
  ));//79

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_83.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, terrace , balcony , pooja , utility',
  ));//83

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_90.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, flower bed, kitchen , terrace',
  ));//90

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_92.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, wash, kitchen',
  ));//92

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_97.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, balcony, kitchen',
  ));//97

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_102.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 1 | features : drawing room, dining, kitchen, lobby,servant room ,rear',
  ));//102

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_103.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, flower bed, kitchen',
  ));//103

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_110.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));//110

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_112.png',
    description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 3 | dress _ room : 0 | features : drawing room,dining, kitchen, balcony, passage',
  ));//112

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_120.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, flower bed, kitchen, dry yard',
  ));//120

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_122.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony, service',
  ));//122

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_139.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, lobby, kitchen, balcony',
  ));//139

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_145.png',
    description: 'bedrooms : 2 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, store, kitchen, balcony,dining , utility',
  ));//145

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_148.png',
    description: 'bedrooms : 2 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : pooja,hall , kitchen, portico ,balcony',
  ));//148

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_149.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen, dining',
  ));//149

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_152.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen , utility, terrace',
  ));//152

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_154.png',
    description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 2 | dress _ room : 2 | features : drawing room, family room ,pooja,dining, kitchen, balcony , servant',
  ));//154

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_157.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));//157

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_160.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen,balcony',
  ));//160

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_162.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));//162

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_169.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, pooja room,store,balcony',
  ));//169

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_175.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen',
  ));//175

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_189.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, utility,balcony',
  ));//189

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_191.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen, family roon,pooja,store,foyer,wash,balcony',
  ));//191

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_194.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, terrace , dry balcony',
  ));//194

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_196.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features :hall, kitchen, balcony',
  ));//196

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_198.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, balcony,washing ,sit out',
  ));//198

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_200.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features :drawing room,dining, kitchen,balcony',
  ));//200

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_202.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, utility , balcony',
  ));//202

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_206.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room,wash ,balcony, kitchen',
  ));//206

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_216.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));//216

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_218.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, balcony,kitchen',
  ));//218

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_219.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, utility,balcony',
  ));//219

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_220.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen ,balcony',
  ));//220

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_222.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));//222

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_225.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, kitchen, balcony',
  ));//225

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_229.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, flower bed ,kitchen, utility,passage',
  ));//229

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_244.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, flower bed kitchen balcony ,dry balcony',
  ));//244

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_246.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, wash',
  ));//246

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_249.png',
    description: 'bedrooms : 4 | toilet : 3 | attached _ toilet : 3 | dress _ room : 1 | features : living room, kitchen, balcony,lobby',
  ));//249

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_266.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 0 | features : living,drawing room, dining, kitchen, balcony',
  ));//266

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_268.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen,utility ,sit out',
  ));//268

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_270.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, terrace, kitchen,flower bed , service',
  ));//270

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_271.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, deck,drawing,portico,store,utility,sit out,up',
  ));//271

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_272.png',
    description: 'bedrooms : 2 | toilet : 1 | attached _ toilet :0 | dress _ room : 0 | features : living room, balcony, kitchen',
  ));//272

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_276.png',
    description: ' bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 1 | features : living room, dining,drawing, kitchen, balcony,verandah,lobby,porch',
  ));//276

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_280.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, passage , balcony',
  ));//280

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_291.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, pool, kitchen, deck, utility, dining',
  ));//291

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_293.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen, flower bed,dry  balcony',
  ));//293

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_303.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen,utility,terrace ,flower bed',
  ));//303

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_305.png',
    description: 'bedrooms : 2 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen, balcony, utility',
  ));//305

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_307.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen, parking, garden',
  ));//307

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_315.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : verandah, dining, kitchen',
  ));//315

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_316.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, passage, kitchen, flower bed, terrace',
  ));//316

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_320.png',
    description: 'bedrooms : 4 | toilet : 5 | attached _ toilet : 4 | dress _ room : 1 | features : drawing room, dining, kitchen,entrance lobby, wardrobe,servant room,balcony,family  lounge,store',
  ));//320

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_322.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, balcony, utility',
  ));//322

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_323.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, balcony, kitchen, dining,terrace',
  ));//323

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_331.png',
    description: 'bedrooms : 2 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen,balcony',
  ));//331

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_334.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining ,pooja, kitchen',
  ));//334

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_336.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, balcony',
  ));//336

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_340.png',
    description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 3 | dress _ room : 2 | features : living room, dining, kitchen, family lounge, servant room,balcony',
  ));//340

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_342.png',
    description: 'bedrooms : 2 | toilet : 3 | attached _ toilet : 2 | dress _ room : 1 | features : drawing room, dining, kitchen,pooja,sit out, utility',
  ));//342

  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_346.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, flower bed ,kitchen',
  ));//346
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_362.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : hall, dining, kitchen, service , balcony',
  ));//362
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_371.png',
    description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 4 | dress _ room : 2 | features : living room, dining, kitchen, foyer ,terrace, servant room, dry balcony',
  ));//371
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_390.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, wash, balcony',
  ));//390
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_399.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, kitchen, balcony',
  ));//399
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_404.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : hall, dining, kitchen, wash ,sit out',
  ));//404
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_406.png',
    description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen,deck .family room,lobby,servant room , utlility',
  ));//406
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_407.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, , kitchen, dining',
  ));//407
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_410.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room,dining , kitchen,balcony',
  ));//410
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_411.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room , dining ,wash , kitchen , living room , porch',
  ));//411
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_419.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen,  dining , balcony , utility',
  ));//419
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_438.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : hall, kitchen, wash , passage',
  ));//438
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_456.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, wash, balcony',
  ));//456
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_458.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room,terrace, kitchen, lobby, passage, utility',
  ));//458
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_460.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen , balcony',
  ));//460
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_472.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room , flower bed, kitchen',
  ));//472
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_474.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony, utility',
  ));//474
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_477.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, balcony , service balcony',
  ));//477
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_491.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, utility , balcony',
  ));//491
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_518.png',
    description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 4 | dress _ room : 1 | features : drawing, Utility, room, dining, kitchen, family lounge, powder room, Balcony,  Terrace , pooja room , lobby , foyer',
  ));//518
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_519.png',
    description: 'bedrooms : 4 | toilet : 5 | attached _ toilet : 4 | dress _ room : 4 | features : living room, dining, kitchen, lobby,deck , utility , private elevator , powder room , passage , dry yard',
  ));//519
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_525.png',
    description: 'bedrooms : 2 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen , balcony',
  ));//525
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_556.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room,dining, kitchen, Portico',
  ));//556
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_557.png',
    description: 'bedrooms : 2 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, flower bed',
  ));//557
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_564.png',
    description: ' bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : hall, balcony, kitchen',
  ));//564
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_566.png',
    description: 'bedrooms : 2 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, kitchen, balcony',
  ));//566
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_589.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : lobby , kitchen',
  ));//589
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_602.png',
    description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 4 | dress _ room : 1 | features : drawing room, Drive Way, kitchen, lobby,foyer,Lounge Dining,Open Space,front lawn, rear lawn',
  ));//602
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_630.png',
    description: 'bedrooms :2  | toilet : 2 | attached _ toilet : 1 | dress _ room : 1 | features : living room, dining, kitchen, balcony  foyer ,utility',
  ));//630
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_637.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : Kitchen Garden , Paved Area, Parking , Verandah,Living.dining room, Kitchen',
  ));//637
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_638.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, Servant Room,Utility, Private Garden,Porch,lobby,store,powder room,parking',
  ));//638
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_640.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, lobby, kitchen, balcony',
  ));//640
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_650.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 2 | features : living room, dining, kitchen, lobby, washing area , belcony , study room, Entrance Lobby,Drawing Room',
  ));//650
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_655.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, flower bed, kitchen, dry balcony , passage',
  ));//655
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_661.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, wash, store room',
  ));//661
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_664.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, terrace, kitchen, balcony',
  ));//664
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_677.png',
    description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 4 | dress _ room : 1 | features : drawing room,dining Area,family lounge, kitchen, balcony, uti;ity , powder room',
  ));//677
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_694.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, flower bed, kitchen, terrace',
  ));//694
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_699.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, utility, lobby,balcony',
  ));//699
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_720.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, passage, kitchen, balcony',
  ));//720
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_724.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 1 | features : drawing room, kitchen, front lawn , rear lawn',
  ));//724
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_739.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen',
  ));//739
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_740.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, Utility, kitchen, Passage,dining',
  ));//740
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_741.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen, balcony, terrace',
  ));//741
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_742.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, kitchen, dining',
  ));//742
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_773.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, dining , balcony',
  ));//773
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_776.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen , terrace',
  ));//776
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_780.png',
    description: 'bedrooms : 4 | toilet : 5 | attached _ toilet : 4 | dress _ room : 2 | features : living room, dining, kitchen, balcony , pooja , store , lobby , drawing , front lawn , rear lawn',
  ));//780
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_803.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 1 | features : living room,drawing room , dining, kitchen, balcony , porch , powder room , utility',
  ));//803
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_807.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen',
  ));//807
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_812.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 2 | features : drawing room, dining, kitchen, balcony,front  lawn ,  rear lawn , parking , verandah',
  ));//812
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_842.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, balcony, kitchen',
  ));//842
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_848.png',
    description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 3 | dress _ room : 0 | features : living room, dining, kitchen, pooja room , store , balcony',
  ));//848
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_856.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, lobby, study room , balcony , utility , meshbal',
  ));//856
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_866.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, front lawn',
  ));//866
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_872.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, passage, terrace',
  ));//872
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_881.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, dining, kitchen , wash, porch , parking , verandah , pooja , garden , store',
  ));//881
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_885.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));//885
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_897.png',
    description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 3 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony, family lounge',
  ));//897
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_909.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dry balcony, kitchen , terrace',
  ));//909
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_915.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen',
  ));//915
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_919.png',
    description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 2 | dress _ room : 1 | features : drawing room,dining , lobby,servant room, lounge, kitchen, balcony',
  ));//919
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_926.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, lobby, kitchen,front lawn , rear lawn',
  ));//926
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_932.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, dry balcony ,utility , terrace',
  ));//932
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_939.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room ,dining , portico, kitchen',
  ));//939
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_945.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, balcony , kitchen',
  ));//945
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_974.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining ,kitchen, balcony',
  ));//974
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_1032.png',
    description: 'bedrooms : 4 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room,sitting, dining, kitchen, Covered Verandah , balcony',
  ));//1032
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_1047.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 2 | features : living room, pooja , kitchen, utility',
  ));//1047
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_1048.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, utility , balcony',
  ));//1048
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_1070.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, passage',
  ));//1070
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_1083.png',
    description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 3 | dress _ room : 0 | features : living room, dining, kitchen, service verandah , balcony',
  ));//1083
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_1112.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));//1112
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_1144.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : lobby , Porch Area , Open To Sky , Servant Room ,Sitout , Lawn',
  ));//1144
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_1163.png',
    description: 'bedrooms : 1 | toilet :2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen',
  ));//1163
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_1175.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 1 | features : living room, dining, kitchen, utility , verandah',
  ));//1175
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_1196.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen, dining , garden , parking , wash',
  ));//1196
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_1207.png',
    description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 3 | dress _ room : 0 | features : living room, dining, kitchen, pooja , store , study , balcony',
  ));//1207
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_1211.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, dining, kitchen, pooja , store , verandah , parking , utility',
  ));//1211
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_1213.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));//1213
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_1216.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 0 | features : living room, lobby, kitchen, front lawn , rear lawn',
  ));//1216
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_1232.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, parking , utility',
  ));//1232
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_1242.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room . Dining , kitchen , parking , verandah , wash area',
  ));//1242
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_1245.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen , wash',
  ));//1245
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_1248.png',
    description: 'bedrooms : 4 | toilet : 5 | attached _ toilet : 4 | dress _ room : 0 | features : drawing room, dining, kitchen, servant room , study room , balcony',
  ));//1248
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_1253.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, verandah',
  ));//1253
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_1265.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 1 | dress _ room : 1 | features : living room, dining, kitchen, lobby , service room , balcony , passage',
  ));//1265
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_1286.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));//1286
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_1287.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, flower bed,  kitchen, utility',
  ));//1287
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_1302.png',
    description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 3 | dress _ room : 0 | features : living room, dining, kitchen, balcony, lift , foyer',
  ));//1302
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_1306.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, balcony , utility, kitchen',
  ));//1306
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_1314.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 0 | features : drawing room, kitchen, balcony',
  ));//1314
  await repo.insertDesign(Design(
    image: 'assets/ resized_images\image_1318.png',
    description: ' bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 1 | features :upper floor : living room, study room, sit out , puja        lower floor :parking , living room , dining , kitchen , utility , store , pooja',
  ));//1318
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1332.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 1 | features : living room, dining, kitchen, balcony',
  ));//1332

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1335.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : study, dining, kitchen, terrace , balcony , puja',
  ));//1335

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1336.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 2 | features : living room, dining, kitchen, lift, HOME THEATER , puja , utility , sit out',
  ));//1336

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1356.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room,dining , kitchen , balcony',
  ));//1356

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1357.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, kitchen , balcony',
  ));//1357

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1421.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, flower bed, kitchen, balcony',
  ));//1421

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1426.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen , study',
  ));//1426

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1446.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, parking , store , front lawn , rear lawn',
  ));//1446

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1463.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen',
  ));//1463

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1468.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen,rear lawn',
  ));//1468

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1472.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen  , balcony',
  ));//1472

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1480.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, utility , balcony',
  ));//1480

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1499.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : garden , store , kitchen , dining , wash , outdoor , puja , foyer , parking , living room , Personal Garden , Otta , up',
  ));//1499

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1523.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, foyer , utility , study',
  ));//1523

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1525.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, lobby, kitchen , balcony',
  ));//1525

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1568.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony, wash area',
  ));//1568

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1628.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, utility',
  ));//1628

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1630.png',
    description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 2 | dress _ room : 0 | features : drawing  room, dining, kitchen, balcony , Servant Room',
  ));//1630

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1631.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, verandah , front lawn , rear lawn',
  ));//1631

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1632.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, balcony,terrace, kitchen',
  ));//1632

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1633.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : hall, kitchen , balcony',
  ));//1633

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1634.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, kitchen , dining , balcony',
  ));//1634

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1636.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, utility , balcony',
  ));//1636

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1637.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, utility , foyer , balcony',
  ));//1637

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1638.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, kitchen',
  ));//1638

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1639.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, flower bed, kitchen , balcony',
  ));//1639

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1640.png',
    description: 'bedrooms : 2 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, Flower Bed',
  ));//1640

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1641.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, flower bed,terrace , kitchen',
  ));//1641

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1642.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, wash , balcony',
  ));//1642

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1644.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, lobby,passage, kitchen, balcony',
  ));//1644

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1645.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen , balcony , dry balcony',
  ));//1645

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1646.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, servant room , powder room , balcony',
  ));//1646

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1647.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : hall,dining , utility, kitchen , porch',
  ));//1647

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1648.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : hall, kitchen, kitchen',
  ));//1648

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1650.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : hall , kitchen, washing , balcony',
  ));//1650

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1652.png',
    description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 2 | dress _ room : 1 | features : living room, dining, kitchen, balcony , drying yard , wash area',
  ));//1652

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1654.png',
    description: ' bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, balcony , utility',
  ));//1654

  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1655.png',
    description: ' bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, balcony, kitchen',
  ));//1655



}

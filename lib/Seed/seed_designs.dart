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
  )); //2
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
    image: 'assets/resized_images/image_57.png',
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
  ));//14
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_152.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen , utility, terrace',
  ));//152
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_154.png',
    description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 2 | dress _ room : 2 | features : drawing room, family room ,pooja,dining, kitchen, balcony , servant',
  ));//14
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_157.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));//157
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_160.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen,balcony',
  ));//60
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
    image: 'assets/resized_images/image_346.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, flower bed ,kitchen',
  ));//346
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_362.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : hall, dining, kitchen, service , balcony',
  ));//362
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_371.png',
    description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 4 | dress _ room : 2 | features : living room, dining, kitchen, foyer ,terrace, servant room, dry balcony',
  ));//371
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_390.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, wash, balcony',
  ));//390
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_399.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, kitchen, balcony',
  ));//399
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_404.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : hall, dining, kitchen, wash ,sit out',
  ));//404
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_406.png',
    description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen,deck .family room,lobby,servant room , utlility',
  ));//406
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_407.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, , kitchen, dining',
  ));//407
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_410.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room,dining , kitchen,balcony',
  ));//410
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_411.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room , dining ,wash , kitchen , living room , porch',
  ));//411
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_419.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen,  dining , balcony , utility',
  ));//419
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_438.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : hall, kitchen, wash , passage',
  ));//438
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_456.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, wash, balcony',
  ));//456
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_458.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room,terrace, kitchen, lobby, passage, utility',
  ));//458
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_460.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen , balcony',
  ));//460
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_472.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room , flower bed, kitchen',
  ));//472
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_474.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony, utility',
  ));//474
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_477.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, balcony , service balcony',
  ));//477
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_491.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, utility , balcony',
  ));//491
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_518.png',
    description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 4 | dress _ room : 1 | features : drawing, Utility, room, dining, kitchen, family lounge, powder room, Balcony,  Terrace , pooja room , lobby , foyer',
  ));//518
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_519.png',
    description: 'bedrooms : 4 | toilet : 5 | attached _ toilet : 4 | dress _ room : 4 | features : living room, dining, kitchen, lobby,deck , utility , private elevator , powder room , passage , dry yard',
  ));//519
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_525.png',
    description: 'bedrooms : 2 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen , balcony',
  ));//525
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_556.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room,dining, kitchen, Portico',
  ));//556
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_557.png',
    description: 'bedrooms : 2 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, flower bed',
  ));//557
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_564.png',
    description: ' bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : hall, balcony, kitchen',
  ));//564
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_566.png',
    description: 'bedrooms : 2 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, kitchen, balcony',
  ));//566
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_589.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : lobby , kitchen',
  ));//589
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_602.png',
    description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 4 | dress _ room : 1 | features : drawing room, Drive Way, kitchen, lobby,foyer,Lounge Dining,Open Space,front lawn, rear lawn',
  ));//602
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_630.png',
    description: 'bedrooms :2  | toilet : 2 | attached _ toilet : 1 | dress _ room : 1 | features : living room, dining, kitchen, balcony  foyer ,utility',
  ));//630
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_637.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : Kitchen Garden , Paved Area, Parking , Verandah,Living.dining room, Kitchen',
  ));//637
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_638.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, Servant Room,Utility, Private Garden,Porch,lobby,store,powder room,parking',
  ));//638
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_640.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, lobby, kitchen, balcony',
  ));//640
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_650.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 2 | features : living room, dining, kitchen, lobby, washing area , belcony , study room, Entrance Lobby,Drawing Room',
  ));//650
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_655.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, flower bed, kitchen, dry balcony , passage',
  ));//655
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_661.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, wash, store room',
  ));//661
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_664.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, terrace, kitchen, balcony',
  ));//664
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_677.png',
    description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 4 | dress _ room : 1 | features : drawing room,dining Area,family lounge, kitchen, balcony, uti;ity , powder room',
  ));//677
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_694.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, flower bed, kitchen, terrace',
  ));//694
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_699.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, utility, lobby,balcony',
  ));//699
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_720.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, passage, kitchen, balcony',
  ));//720
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_724.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 1 | features : drawing room, kitchen, front lawn , rear lawn',
  ));//724
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_739.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen',
  ));//739
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_740.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, Utility, kitchen, Passage,dining',
  ));//740
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_741.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen, balcony, terrace',
  ));//741
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_742.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, kitchen, dining',
  ));//742
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_773.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, dining , balcony',
  ));//773
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_776.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen , terrace',
  ));//776
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_780.png',
    description: 'bedrooms : 4 | toilet : 5 | attached _ toilet : 4 | dress _ room : 2 | features : living room, dining, kitchen, balcony , pooja , store , lobby , drawing , front lawn , rear lawn',
  ));//780
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_803.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 1 | features : living room,drawing room , dining, kitchen, balcony , porch , powder room , utility',
  ));//803
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_807.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen',
  ));//807
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_812.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 2 | features : drawing room, dining, kitchen, balcony,front  lawn ,  rear lawn , parking , verandah',
  ));//812
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_842.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, balcony, kitchen',
  ));//842
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_848.png',
    description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 3 | dress _ room : 0 | features : living room, dining, kitchen, pooja room , store , balcony',
  ));//848
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_856.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, lobby, study room , balcony , utility , meshbal',
  ));//856
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_866.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, front lawn',
  ));//866
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_872.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, passage, terrace',
  ));//872
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_881.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, dining, kitchen , wash, porch , parking , verandah , pooja , garden , store',
  ));//881
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_885.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));//885
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_897.png',
    description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 3 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony, family lounge',
  ));//897
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_909.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dry balcony, kitchen , terrace',
  ));//909
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_915.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen',
  ));//915
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_919.png',
    description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 2 | dress _ room : 1 | features : drawing room,dining , lobby,servant room, lounge, kitchen, balcony',
  ));//919
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_926.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, lobby, kitchen,front lawn , rear lawn',
  ));//926
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_932.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, dry balcony ,utility , terrace',
  ));//932
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_939.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room ,dining , portico, kitchen',
  ));//939
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_945.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, balcony , kitchen',
  ));//945
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_974.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining ,kitchen, balcony',
  ));//974
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1032.png',
    description: 'bedrooms : 4 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room,sitting, dining, kitchen, Covered Verandah , balcony',
  ));//1032
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1047.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 2 | features : living room, pooja , kitchen, utility',
  ));//1047
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1048.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, utility , balcony',
  ));//1048
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1070.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, passage',
  ));//1070
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1083.png',
    description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 3 | dress _ room : 0 | features : living room, dining, kitchen, service verandah , balcony',
  ));//1083
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1112.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));//1112
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1144.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : lobby , Porch Area , Open To Sky , Servant Room ,Sitout , Lawn',
  ));//1144
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1163.png',
    description: 'bedrooms : 1 | toilet :2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen',
  ));//1163
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1175.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 1 | features : living room, dining, kitchen, utility , verandah',
  ));//1175
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1196.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen, dining , garden , parking , wash',
  ));//1196
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1207.png',
    description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 3 | dress _ room : 0 | features : living room, dining, kitchen, pooja , store , study , balcony',
  ));//1207
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1211.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, dining, kitchen, pooja , store , verandah , parking , utility',
  ));//1211
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1213.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));//1213
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1216.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 0 | features : living room, lobby, kitchen, front lawn , rear lawn',
  ));//1216
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1232.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, parking , utility',
  ));//1232
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1242.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room . Dining , kitchen , parking , verandah , wash area',
  ));//1242
  await repo.insertDesign(Design(
    image: 'assets/ resized_images/image_1245.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen , wash',
  ));//1245
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1248.png',
    description: 'bedrooms : 4 | toilet : 5 | attached _ toilet : 4 | dress _ room : 0 | features : drawing room, dining, kitchen, servant room , study room , balcony',
  ));//1248
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1253.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, verandah',
  ));//1253
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1265.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 1 | dress _ room : 1 | features : living room, dining, kitchen, lobby , service room , balcony , passage',
  ));//1265
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1286.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));//1286
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1287.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, flower bed,  kitchen, utility',
  ));//1287
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1302.png',
    description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 3 | dress _ room : 0 | features : living room, dining, kitchen, balcony, lift , foyer',
  ));//1302
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1306.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, balcony , utility, kitchen',
  ));//1306
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1314.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 0 | features : drawing room, kitchen, balcony',
  ));//1314
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1318.png',
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
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1662.png',
    description: 'bedrooms : 2 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, kitchen',
  ));//1662
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1663.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : balcony lobby, kitchen',
  ));//1663
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1664.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));//1664
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1666.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));//1666
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1667.png',
    description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 3 | dress _ room : 0 | features : drawing room, dining, kitchen, lobby, foyer, study, balcony, passage, utility',
  ));//1667
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1668.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen, parking, back yard, chokkadi',
  ));//1668
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1669.png',
    description: 'bedrooms : 2 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, balcony, kitchen',
  ));//1669
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1672.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, pooja room, lounge',
  ));//1672
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1673.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, balcony',
  ));//1673
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1675.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, balcony',
  ));//1675
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1680.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));//1680
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1683.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));//1683
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1686.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, kitchen, balcony',
  ));//1686
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1687.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, terrace, flower bed, kitchen',
  ));//1687
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1688.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));//1688
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1690.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : hall, wash, passage, kitchen',
  ));//1690
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1692.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, parking, front lawn, rear lawn, verandah, passage',
  ));//1692
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1693.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, kitchen, balcony',
  ));//1693
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1696.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 2 | features : drawing room, family lounge, kitchen, verandah, front lawn, rear lawn',
  ));//1696
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1698.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony, lobby, study, passage',
  ));//1698
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1701.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen',
  ));//1701
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1703.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 1 | features : living room, dining, kitchen, garden, wash, store, parking, otla',
  ));//1703
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1706.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 2 | features : drawing room, dining, servant room, lobby, kitchen, balcony, wash',
  ));//1706
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1707.png',
    description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 3 | dress _ room : 0 | features : living room, store, kitchen, balcony, dining, servant room, utility',
  ));//1707
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1714.png',
      description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen,balcony',
    ));//1714
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1716.png',
      description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
    ));//1716
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1722.png',
      description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen , balcony',
    ));//1722
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1728.png',
      description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, balcony, kitchen',
    ));//1728
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1732.png',
      description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, utility , balcony , foyer',
    ));//1732
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1735.png',
      description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, balcony, kitchen',
    ));//1735
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1739.png',
      description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, terrace',
    ));//1739
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1740.png',
      description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, store room , utility',
    ));//1740
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1746.png',
      description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, study , puja , store',
    ));//1746
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1751.png',
      description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen',
    ));//1751
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1755.png',
      description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, kitchen',
    ));//1755
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1758.png',
      description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : balcony, kitchen',
    ));//1758
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1761.png',
      description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room , dining ,lobby , kitchen',
    ));//1761
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1764.png',
      description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room,dining , kitchen,balcony , wash area',
    ));//1764
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1772.png',
      description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, terrace, kitchen , balcony',
    ));//1772
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1773.png',
      description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 3 | dress _ room : 1 | features : servant room, dining, kitchen, balcony, lobby , front lawn , rear lawn',
    ));//1773
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1779.png',
      description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room,dining, kitchen , balcony',
    ));//1779
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1786.png',
      description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room,kitchen , lobby',
    ));//1786
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1787.png',
      description: 'bedrooms : 2 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room,dining , terrace, kitchen , Walk-in closet',
    ));//1787
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1791.png',
      description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, passage, balcony, kitchen',
    ));//1791
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1796.png',
      description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen',
    ));//1796
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1800.png',
      description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen,Vestibule , store ,wash , Balcony',
    ));//1800
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1805.png',
      description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : Sitting Area , balcony',
    ));//1805
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1808.png',
      description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 0 | features : living room, dining, kitchen, utility , balcony',
    ));//1808
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1809.png',
      description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living , dining , kitchen , lawn, black yard , wash area',
    ));//1809
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1819.png',
      description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 1 | features : living room, dining, kitchen , balcony',
    ));//1819
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1820.png',
      description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen , passage, Flower Bed , dry balcony',
    ));//1820
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1824.png',
      description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, passage , balcony, kitchen',
    ));//1824
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1825.png',
      description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, terrace',
    ));//1825
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1827.png',
      description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, pooja room, wash , balcony',
    ));//1827
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1828.png',
      description: 'bedrooms : 4 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features :  dining, kitchen, balcony',
    ));//1828
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1830.png',
      description: 'bedrooms : 4 | toilet : 5 | attached _ toilet : 4 | dress _ room : 1 | features : living room, dining, kitchen, Corridor , balcony , servants',
    ));//1830
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1833.png',
      description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen, passage ,balcony',
    ));//1833
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1837.png',
      description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, utility , balcony',
    ));//1837
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1838.png',
      description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 1 | features : living room, dining, kitchen, parking',
    ));//1838
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1839.png',
      description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
    ));//1839
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1842.png',
      description: 'bedrooms : 4 | toilet : 5 | attached _ toilet : 4 | dress _ room : 1 | features : living room, dining, kitchen, balcony, utility , foyer , pooja room , store, servant room , powder room',
    ));//1842
  await repo.insertDesign(Design(
      image: 'assets/resized_images/image_1843.png',
      description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
    ));//1843
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1844.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));//1844
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1849.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));//1849
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1862.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen , utility , balcony',
  ));//1862
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1868.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, dining, kitchen , balcony',
  ));//1868
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1878.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen',
  ));//1878
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1879.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, Terrace, dry balcony , kitchen',
  ));//1879
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1889.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen, Sunkun Lawn',
  ));//1889
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1891.png',
    description: 'bedrooms : 5 | toilet : 6 | attached _ toilet : 5 | dress _ room : 0 | features : living room, dining, kitchen, utility , study room , foyer , balcony , family room',
  ));//1891
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1895.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, utility , balcony',
  ));//1895
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1903.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 1 | features : drawing room, lobby, kitchen, store',
  ));//1903
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1905.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : balcony, hall, kitchen,passage',
  ));//1905
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1922.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, kitchen, balcony, lobby , dining , open',
  ));//1922
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1924.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen , Flower Bed , Passage',
  ));//1924
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1925.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen , passage',
  ));//1925
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1927.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen, verandah',
  ));//1927
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1928.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, Elevation Balcony , dry balcony',
  ));//1928
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1936.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen',
  ));//1936
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1951.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining,  kitchen , Terrace',
  ));//1951
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1968.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen, Portico , verandah , Utility',
  ));//1968
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1969.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 1 | features : living room, dining, kitchen, balcony , Vestibule , utility , pooja room',
  ));//1969
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1976.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, balcony , Utility',
  ));//1976
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1979.png',
    description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 3 | dress _ room : 0 | features : drawing room, dining, kitchen, verandah,front lawn , rear lawn',
  ));//1979
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1987.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, store , utility , Car Porch , verandah',
  ));//1987
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1990.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 1 | features : living room, dining, kitchen, store , utility , foyer,puja room',
  ));//1990
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_1991.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen,foyer , balcony',
  ));//1991
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2008.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : drawing  room, dining, kitchen, foyer, store , Flower Bed,Planter,utility',
  ));//2008
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2012.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));//2012
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2019.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living , kitchen , wash , garden',
  ));//2019
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2024.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, service',
  ));//2024
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2026.png',
    description: 'bedrooms : 2 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen , passage , balcony',
  ));//2026
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2027.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room,  kitchen',
  ));//2027
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2028.png',
    description: 'bedrooms : 2 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : lobby,balcony, passage, kitchen',
  ));//2028
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2033.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, dining , balcony',
  ));//2033
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2040.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, terrace, kitchen,dry balcony',
  ));//2040
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2044.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));//2044
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2052.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));//2052
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2053.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, lobby ,balcony, kitchen, terrace , sitting , water body',
  ));//2053
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2058.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, kitchen, balcony',
  ));//2058
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2066.png',
    description: 'bedrooms : 2 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, kitchen , balcony',
  ));//2066
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2072.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features :drawing room , living room, dining, kitchen, parking , sit out , utility , servant room , pump room',
  ));//2072
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2082.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, terrace , dry terrace',
  ));//2082
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2093.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : lounge , balcony',
  ));//2093
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2114.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen, pooja room , balcony',
  ));//2114
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2118.png',
    description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 3 | dress _ room : 1 | features : living room, dining, kitchen, lobby, servant room , terrace , utility , powder room',
  ));//2118
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2119.png',
    description: 'bedrooms : 4 | toilet : 5 | attached _ toilet : 4 | dress _ room : 0 | features : living room, dining, kitchen, utility , servant room , puja room , foyer , deck , garden , terrace , landscape terrace',
  ));//2119
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2130.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen, utility , balcony',
  ));//2130
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2133.png',
    description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 3 | dress _ room : 1 | features : living room, dining, kitchen, balcony , foyer , store , powder room , servant room , lobby',
  ));//2133
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2135.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 2 | dress _ room : 1 | features : balcony , lobby',
  ));//2135
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2143.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, parking',
  ));//2143
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2146.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen , parking',
  ));//2146
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2147.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen , balcony',
  ));//2147
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2150.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, balcony',
  ));//2150
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2152.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));//2152
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2158.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, Back Court Yard',
  ));//2158
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2172.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2183.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2185.png',
    description: 'bedrooms : 4 | toilet : 5 | attached _ toilet : 3 | dress _ room : 1 | features : living room, kitchen, balcony, Vestibule, utility , dining',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2193.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 0 | features : drawing room, dining, kitchen, Family Lounge, covered balcony, Canopy',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2194.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, terrace , utility  , store',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2198.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : Front Courtyard, drawing room , dining , kitchen ',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2200.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2212.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, front lawn',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2228.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 0 | features : living room,drawing room , dining, kitchen , balcony , store , utility , sit out',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2233.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, terrace , dry  terrace',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2250.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, lobby , Rear Lawn , front Lawn, Main Gate',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2274.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2282.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, lobby , passage, kitchen , balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2283.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2307.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, flower red, kitchen',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2310.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2319.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, sit out , front lawn , rear lawn',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2322.png',
    description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 3 | dress _ room : 2 | features :first floor:living , study , pooja, balcony   second floor:living , kitchen , dining , bar , servant room , balcony , pool',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2334.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room,dining , kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2351.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining , wash, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2392.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, balcony, store',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2393.png',
    description: 'bedrooms : 4 | toilet : 3 | attached _ toilet : 1 | dress _ room : 0 | features : staff room ,deck ,utility , dining, kitchen, powder room ,car park , sit out ,powder room , wardrobe , foyer',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2399.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2400.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room,dining,parking , kitchen',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2406.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room,dining , kitchen',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2409.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 1 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2424.png',
    description: 'bedrooms : 4 | toilet : 3 | attached _ toilet : 2 | dress _ room : 1 | features : drawing room, dining, kitchen, verandah , servant room',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2448.png',
    description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 2 | dress _ room : 1 | features : living room, dining, kitchen, utility',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2450.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, kitchen',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2463.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, kitchen',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2466.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, lobby, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2484.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room,splash  pool, kitchen, deck',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2486.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room , kitchen',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2510.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features :lobby, dining, kitchen, lobby,balcony , front lawn , rear lawn',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2519.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, lobby, kitchen, balcony , passage',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2534.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen, balcony , passage',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2543.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, garden , sitting area , parking',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2551.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen, Car Portico , utility',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2562.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, utility, parking',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2563.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : hall , wash , passage, flower bed, kitchen',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2566.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, terrace , utility',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2604.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : hall, balcony, kitchen',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2632.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : hall, kitchen, balcony , dining',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2669.png',
    description: 'bedrooms : 5 | toilet : 6 | attached _ toilet : 5 | dress _ room : 4 | features : drawing room, terrace, lobby, kitchen, balcony , dining , lonuge , utility , store , servant room , closet',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2707.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2711.png',
    description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 3 | dress _ room : 0 | features : balcony , passage , powder room , lobby , entertainment room',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2719.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, parking , lawn, wash',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2749.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, wash',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2755.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, store , wash , verandah',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2758.png',
    description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 3 | dress _ room : 1 | features : drawing room, dining, kitchen,utility , balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2761.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 2 | dress _ room : 1 | features : drawing room, lobby, kitchen, passage, puja , store',
  ));//2761
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2762.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen',
  ));//2762
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2783.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen, balcony, lobby',
  ));//2783
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2822.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, utility , balcony',
  ));//2822
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2833.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, family lounge, balcony',
  ));//2833
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2849.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, hall , lobby , balcony',
  ));//2849
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2859.png',
    description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 3 | dress _ room : 1 | features : living room, dining, kitchen, utility , terrace , dry balcony , powder room',
  ));//2859
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2864.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room,dining , kitchen, balcony',
  ));//2864
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2870.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen',
  ));//2870
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2879.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room,dining, kitchen, store , wash , balcony',
  ));//2879
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2905.png',
    description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 4 | dress _ room : 3 | features : drawing room, lounge, kitchen, balcony',
  ));//2905
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2915.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen, study room , balcony',
  ));//2915
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4001.png',
    description: 'bedrooms : 4 | toilet : 3 | attached _ toilet : 2 | dress _ room : 1 | features : drawing room, dining, kitchen, driveway, lawn',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4004.png',
    description: 'bedrooms : 4 | toilet : 5 | attached _ toilet : 4 | dress _ room : 1 | features : drawing room, dining, kitchen, balcony, family room, store, servant room',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4012.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, balcony, kitchen',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4015.png',
    description: 'bedrooms : 2 | toilet : 3 | attached _ toilet : 2 | dress _ room : 1 | features : drawing room, dining, kitchen, balcony, utility, powder',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4040.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, passage, flower bed, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4041.png',
    description: 'bedrooms : 4 | toilet : 3 | attached _ toilet : 3 | dress _ room : 0 | features : drawing room, dining, kitchen, lawn',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4046.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony, utility',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4049.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, pool, kitchen, deck',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4059.png',
    description: 'bedrooms : 4 | toilet : 3 | attached _ toilet : 2 | dress _ room : 1 | features : drawing room, dining, kitchen, verandah, lawn',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4061.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4105.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, pooja, kitchen, utility',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4115.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, kitchen, wash, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4134.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 1 | features : kitchen, lobby, dining, living room, pooja, store, parking, rear, cut out',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4141.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, terrace, flower bed',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4143.png',
    description: 'bedrooms : 2 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4157.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4171.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, open, porch',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4175.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4179.png',
    description: 'bedrooms : 3 | toilet : 5 | attached _ toilet : 4 | dress _ room : 1 | features : living room, dining, kitchen, pantry, servant room, wash, store, work area, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4182.png',
    description: 'bedrooms : 2 | toilet : 3 | attached _ toilet : 3 | dress _ room : 0 | features : living room, dining, kitchen, store, terrace, servant room',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4186.png',
    description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 2 | dress _ room : 0 | features : living room, looby, kitchen, balcony, verandah, lawn',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4238.png',
    description: 'bedrooms : 4 | toilet : 3 | attached _ toilet : 2 | dress _ room : 1 | features : drawing room, dining, kitchen, parking, lawn',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4243.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 0 | features : living room, dining, kitchen, foyer, balcony, utility',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4293.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, utility, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4317.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 1 | features : drawing room, dining, kitchen, store, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4321.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen, lawn, powder room',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4329.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4417.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony, wash basin, flower bed, terrace',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4433.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, verandah, lobby, utility room, powder room',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4434.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony, lobby',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4442.png',
    description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 4 | dress _ room : 1 | features : drawing room, dining, kitchen, balcony, store',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4444.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony, foyer, lawn, parking, powder room',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4453.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 0 | features : drawing room, dining, kitchen, puja, sitout, balcony, utility',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4468.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen, sitout',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4469.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, verandah, puja',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_2917.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen, flower bed',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4576.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4579.png',
    description: 'bedrooms : 2 | toilet : 3 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, terrace',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4581.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4582.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony, store',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4588.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 2 | features : living room, balcony, terrace',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4589.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4591.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4594.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, flower bed, passage, terrace',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4600.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, balcony, utility',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4606.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen,  balcony, utility',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4610.png',
    description: 'bedrooms : 2 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : hall, kitchen, pooja, portico',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4611.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen, flower bed',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4616.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 1 | features : drawing room, dining, kitchen, passage, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4618.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, lobby',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4624.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 1 | features : living room, dining, kitchen, store, puja, terrace, lawn, utility, servant room, powder room',
  ));
  await repo.insertDesign(Design(
  image: 'assets/resized_images/image_4633.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, kitchen, lobby, store, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4634.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen, deck,  pool',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4645.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 2 | features : balcony, terrace garden',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4649.png',
    description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 2 | dress _ room : 1 | features : living room, dining, kitchen, utility, balcony, servant room',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4652.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, lounge, balcony, utility',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4653.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, passage, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4656.png',
    description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 4 | dress _ room : 1 | features : living room, dining, kitchen, family room, balcony, utility, servant room',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4657.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 1 | features : living room, dining, kitchen, utility, balcony, puja',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4658.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 1 | dress _ room : 1 | features : drawing room, dining, kitchen, balcony, study room',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4667.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, balcony, kitchen',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4676.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4689.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen, hall, parking, utility',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4691.png',
    description: 'bedrooms : 2 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen, balcony, lawn',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4695.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony, utility',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4698.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4700.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4702.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, dining, kitchen, lawn, porch, rear yard',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4706.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen, verandah, balcony, utility',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4709.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features :  hall, kitchen, wash',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4715.png',
    description: 'bedrooms : 4 | toilet : 5 | attached _ toilet : 5 | dress _ room : 3 | features : living room, dining, kitchen, balcony, bar, lobby, gym, lounge, pooja, servant room, powder room',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4717.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, flower bed, kitchen, deck',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4731.png',
    description: 'bedrooms : 2 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4735.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, wash, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4742.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, lobby, storage area, passage, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4743.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, terrace, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4744.png',
    description: 'bedrooms : 5 | toilet : 6 | attached _ toilet : 5 | dress _ room : 1 | features : family room, dining, kitchen, balcony, store, formal sitting,  vestibule, puja, wash, servant room, terrace, pool',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4745.png',
    description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 4 | dress _ room : 1 | features : living room, dining, kitchen, utility, balcony, store, puja, walk-in,',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4747.png',
    description: 'bedrooms : 3 | toilet : 5 | attached _ toilet : 3 | dress _ room : 0 | features : living room, dining, kitchen, lobby, wardrobe, balcony, servant room, utility',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4748.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, terrace, kitchen',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4750.png',
    description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 4 | dress _ room : 0 | features : living room, dining, kitchen, balcony, passage, utility, puja, powder room',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4755.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 1 | features : drawing room, dining, kitchen, balcony, lawn, puja, balcony, store',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4757.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 1 | features : drawing room, dining, kitchen, sitout, wash, porch',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4765.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, kitchen, lawn',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4767.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4768.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 2 | dress _ room : 2 | features : drawing room, dining, kitchen, family room, pooja, passage, balcony, powder room',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4769.png',
    description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 4 | dress _ room : 0 | features : living room, dining, kitchen, balcony, prayer, utility, foyer, powder room',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4771.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features :  dining, kitchen, store, lobby, utility, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4774.png',
    description: 'bedrooms : 4 | toilet : 3 | attached _ toilet : 2 | dress _ room : 1 | features : drawing room, dining, kitchen, lawn',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4777.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4783.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 1 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4784.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4786.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, balcony, passage',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4833.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4834.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4001.png',
    description: 'bedrooms : 4 | toilet : 3 | attached _ toilet : 2 | dress _ room : 1 | features : drawing room, dining, kitchen, driveway, lawn',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4004.png',
    description: 'bedrooms : 4 | toilet : 5 | attached _ toilet : 4 | dress _ room : 1 | features : drawing room, dining, kitchen, balcony, family room, store, servant room',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4012.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, balcony, kitchen',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4015.png',
    description: 'bedrooms : 2 | toilet : 3 | attached _ toilet : 2 | dress _ room : 1 | features : drawing room, dining, kitchen, balcony, utility, powder',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4040.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, passage, flower bed, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4041.png',
    description: 'bedrooms : 4 | toilet : 3 | attached _ toilet : 3 | dress _ room : 0 | features : drawing room, dining, kitchen, lawn',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4046.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony, utility',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4049.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, pool, kitchen, deck',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4059.png',
    description: 'bedrooms : 4 | toilet : 3 | attached _ toilet : 2 | dress _ room : 1 | features : drawing room, dining, kitchen, verandah, lawn',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4061.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4105.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, pooja, kitchen, utility',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4115.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, kitchen, wash, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4134.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 1 | features : kitchen, lobby, dining, living room, pooja, store, parking, rear, cut out',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4141.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, terrace, flower bed',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4143.png',
    description: 'bedrooms : 2 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4157.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4171.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, open, porch',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4175.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4179.png',
    description: 'bedrooms : 3 | toilet : 5 | attached _ toilet : 4 | dress _ room : 1 | features : living room, dining, kitchen, pantry, servant room, wash, store, work area, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4182.png',
    description: 'bedrooms : 2 | toilet : 3 | attached _ toilet : 3 | dress _ room : 0 | features : living room, dining, kitchen, store, terrace, servant room',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4186.png',
    description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 2 | dress _ room : 0 | features : living room, looby, kitchen, balcony, verandah, lawn',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4238.png',
    description: 'bedrooms : 4 | toilet : 3 | attached _ toilet : 2 | dress _ room : 1 | features : drawing room, dining, kitchen, parking, lawn',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4243.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 0 | features : living room, dining, kitchen, foyer, balcony, utility',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4293.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, utility, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4317.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 1 | features : drawing room, dining, kitchen, store, balcony, store',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4321.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen, lawn, powder room',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4329.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_5003.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_5018.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, drying yard, utility, deck, lawn, servant room, foyer',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_5038.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, verandah',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_5039.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, wash area, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_5040.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, utility, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_5069.png',
    description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 4 | dress _ room : 2 | features : drawing room, dining, kitchen, washing, canopy, powder room, shower',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_5088.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen, porch, lawn, verandah, back yard',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_5096.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen, store, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_5108.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, utility',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_5110.png',
    description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 3 | dress _ room : 0 | features : living room, dining, kitchen, deck, utility',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_5123.png',
    description: 'bedrooms : 4 | toilet : 3 | attached _ toilet : 2 | dress _ room : 2 | features : lobby, dining, kitchen, front lawn, rear lawn',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4179.png',
    description: 'bedrooms : 3 | toilet : 5 | attached _ toilet : 4 | dress _ room : 1 | features : living room, dining, kitchen, pantry, servant room, wash, store, work area, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4182.png',
    description: 'bedrooms : 2 | toilet : 3 | attached _ toilet : 3 | dress _ room : 0 | features : living room, dining, kitchen, store, terrace, servant room',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4186.png',
    description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 2 | dress _ room : 0 | features : living room, looby, kitchen, balcony, verandah, lawn',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4238.png',
    description: 'bedrooms : 4 | toilet : 3 | attached _ toilet : 2 | dress _ room : 1 | features : drawing room, dining, kitchen, parking, lawn',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4243.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 0 | features : living room, dining, kitchen, foyer, balcony, utility',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4293.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, utility, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4317.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 1 | features : drawing room, dining, kitchen, store, balcony, store',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4321.png',
    description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen, lawn, powder room',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_4329.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_5003.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_5018.png',
    description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, drying yard, utility, deck, lawn, servant room, foyer',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_5038.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, verandah',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_5039.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, wash area, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_5040.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen,  utility, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_5069.png',
    description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 4 | dress _ room : 2 | features : drawing room, dining, kitchen, washing, canopy, powder room, shower',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_5088.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen, porch, lawn, verandah, back yard',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_5096.png',
    description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen, store, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_5108.png',
    description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, utility',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_5110.png',
    description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 3 | dress _ room : 0 | features : living room, dining, kitchen, deck, utility',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_5123.png',
    description: 'bedrooms : 4 | toilet : 3 | attached _ toilet : 2 | dress _ room : 2 | features : lobby, dining, kitchen, front lawn, rear lawn',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5266.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5270.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5277.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5278.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : hall, dining, kitchen, balcony, utility',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5294.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5297.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : hall, dining, kitchen, wash, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5299.png',
   description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 4 | dress _ room : 1 | features : drawing room, dining, kitchen, family lounge, balcony, utility',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5301.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, utility, balcony, foyer',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5338.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, utility, kitchen, terrace',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5344.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5347.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony, puja',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5369.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, balcony, utility, pooja',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5412.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5427.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5438.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : hall, balcony, kitchen, ',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5441.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5445.png',
   description: 'first floor(bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : family area, terrace, balcony) ground floor(bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, patio, kitchen)',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5467.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 1 | features : drawing room, dining, kitchen, balcony, study, sitout',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5487.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, lobby, kitchen, passage, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5498.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen, lobby, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5513.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5518.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, passage, flower bed, terrace',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5529.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, kitchen, lobby, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5545.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5557.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 0 | features : living room, dining, kitchen, lobby, front lawn, rear lawn, verandah',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5585.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, balcony, utility',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5586.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5615.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5626.png',
   description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, balcony, servant room',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5631.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : hall, dining, kitchen, wash, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5643.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 0 | features : drawing room, lobby, kitchen, balcony, front lawn, rear lawn',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5653.png',
   description: 'bedrooms : 2 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : family lounge, balcony, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5678.png',
   description: 'first floor(bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 2 | features : family room, utility) ground floor(bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen, utility)',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5686.png',
   description: 'bedrooms : 1 | toilet : 3 | attached _ toilet : 1 | dress _ room : 0 | features : living room, terrace, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5715.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, open kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5724.png',
   description: 'bedrooms : 2 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, balcony, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_4501.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, verandah, porch, powder room',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5740.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5757.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5759.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, flower bed, kitchen, dining, passage, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5760.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, lawn, work area, porch, utility, verandah',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5763.png',
   description: 'bedrooms : 2 | toilet : 3 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, passage, utility, study, terrace',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5779.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen, puja, store, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5784.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : flower bed, kitchen, terrace, living room',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5786.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5826.png',
   description: 'bedrooms : 4 | toilet : 5 | attached _ toilet : 3 | dress _ room : 1 | features : living room, dining, kitchen, lobby, passage, service slab, servant room, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5840.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 1 | features : drawing room, dining, kitchen, wash, lawn, parking, lobby',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5841.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, lobby, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5847.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony, utility',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5881.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony, utility',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5882.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 0 | features : living room, dining, kitchen, verandah, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5904.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living area, lobby, kitchen,balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5906.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living area, kitchen, frontyard, back yard',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5911.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_5945.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, balcony, dining',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6001.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6002.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : hall, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6004.png',
   description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 2 | dress _ room : 0 | features : flower bed, living room, kitchen, niche',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6005.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, flower bed, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6006.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, dining, kitchen, entrance, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6007.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, utility, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6008.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, wash, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6009.png',
   description: 'bedrooms : 3 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, front lawn, rear lawn',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6010.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen, kitchen yard',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6011.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, hall, kitchen, wash, pooja, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6014.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, balcony, utility',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6015.png',
   description: 'bedrooms : 2 1 toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, balcony, kitchen, dining',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6016.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 3 | features : family lounge, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6019.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, kitchen, lobby, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6020.png',
   description: 'bedrooms : 2 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6021.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony, lobby',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6022.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, anti-space, utility, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6023.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6024.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6027.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 2 | features : family lounge, balcony, sit out',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6028.png',
   description: 'first floor(bedrooms : 3 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : balcony) ground floor(bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen, parking)',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6033.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, balcony, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6035.png',
   description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 3 | dress _ room : 0 | features : living room, dining, kitchen, balcony, passage, utility, servant room',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6039.png',
   description: 'bedrooms : 4 | toilet : 3 | attached _ toilet : 2 | dress _ room : 2 | features : drawing room, dining, kitchen, balcony, front lawn, rear lawn, driveway',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6041.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, passage',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6044.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6045.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 1 | features : lounge, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6046.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : lawn, living room, wash,porch,kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6047.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, flower bed, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6048.png',
   description: 'bedrooms : 2 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : lobby, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6051.png',
   description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 4 | dress _ room : 0 | features : living room, dining, kitchen, lounge, corridor, pooja,balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6053.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, balcony, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6056.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony, utility',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6060.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, pooja,verandah, utility',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6061.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6062.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, store, puja, utility, passage',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6063.png',
   description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 2 | dress _ room : 0 | features : living room, store room, kitchen, sky deck',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6065.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, lawn, rear open, parking area',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6067.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 1 | features : formal living, dining, kitchen, wet kitchen, open court, utility cutout, family lounge, powder room, verandah, foyer, lawn',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6071.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, wash, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6073.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen, terrace',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6074.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony, beal, utility',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6077.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, hall, kitchen, landscape garden',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6083.png',
   description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 3 | dress _ room : 0 | features : drawing room, dining, kitchen, servant room',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6087.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, work area',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6088.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : lobby, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6089.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 1 | features : living room, drawing room, dining, kitchen, utility, lawn, powder room, portico, foyer',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6096.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6097.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, utility, kitchen, terrace, study',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6098.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6103.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, terrace, kitchen, balcony, service',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6105.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, pooja room, sitout, wash, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6107.png',
   description: 'bedrooms : 4 | toilet : 3 | attached _ toilet : 2 | dress _ room : 1 | features : drawing room, dining, kitchen, balcony, rear lawn, front lawn',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6109.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, lobby, kitchen, store, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6111.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6113.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, store, wash, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6116.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen, flower bed, terrace',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6118.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6120.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6123.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : passage, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6128.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen, parking, utility, garden',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6130.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, foyer, utility, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6136.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, utility, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6137.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, balcony, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6139.png',
   description: 'bedrooms : 3 | toilet : 5 | attached _ toilet : 3 | dress _ room : 1 | features : living room, deck, kitchen, foyer, dining, study, pooja, utility',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6140.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, deck, verandah',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6145.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, utility',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6149.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, balcony, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6151.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, passage, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6153.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6159.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, utility, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6160.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : lobby, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6168.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, lobby, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6170.png',
   description: 'bedrooms : 4 | toilet : 5 | attached _ toilet : 4 | dress _ room : 0 | features : formal living, family dining, kitchen, pooja, service, covered deck, foyer',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6172.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, utility, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6190.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : lawn, drawing, dining, kitchen, verandah',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6194.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, lobby, passage, balcony, terrace',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6198.png',
   description: 'first floor(bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 1 | features : living room, terrace) ground floor(bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, wash area, parking)',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6205.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6206.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6216.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, balcony, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6219.png',
   description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 3 | dress _ room : 0 | features : living room, dining, kitchen, pooja room, lobby, entrance foyer, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6224.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, puja, utility, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6236.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6237.png',
   description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 3 | dress _ room : 2 | features : living room, dining, kitchen, drawing room, balcony, stair case, front countryard, rear countryard',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6240.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6241.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 1 | features : drawing room, dining, kitchen, lobby, balcony, store',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6243.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 1 | features : living room, dining, kitchen, utility, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6247.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, balcony, utility',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6252.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, puja, balcony, utility',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6259.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, lawn, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6268.png',
   description: 'bedrooms : 4 | toilet : 5 | attached _ toilet : 4 | dress _ room : 0 | features : living room, kitchen, passage, flower bed, servant room',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6273.png',
   description: 'bedrooms : 1 | toilet : 0 | attached _ toilet : 0 | dress _ room : 0 | features : lawn, powder room, utility, portico',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6281.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, balcony, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6282.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, utility, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6285.png',
   description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 4 | dress _ room : 1 | features : drawing area, foyer, lounge, dining, balcony, kitchen, entrance lobby, rear lawn, front lawn, space for cylinder',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6289.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony, wash balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6291.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6292.png',
   description: 'bedrooms : 2 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, balcony, kitchen, dining, walk-in closet',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6293.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony, utility, powder room',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6300.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6303.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, lobby, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6310.png',
   description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 3 | dress _ room : 0 | features : living room, dining, kitchen, pooja room, store, study, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6311.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, wash, study',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6321.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, flower bed, terrace, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6322.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : hall, balcony, kitchen, wash',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6328.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6337.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 1 | features : living room, dining, kitchen, sit out, utility, pooja',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6340.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, verandah',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6341.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, foyer, puja, sitout',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6348.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6369.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6375.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, pooja room, study, wash, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6378.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, terrace, utility',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6385.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, hall, kitchen, balcony, lawn',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6397.png',
   description: 'bedrooms : 2 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6406.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, dining, kitchen, portico',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6425.png',
   description: 'upper floor(bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 1 | features : lobby, store, balcony) lower floor(bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 1 | features : living room, dining, kitchen, rear lawn)',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6434.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : hall, dining, kitchen, portico',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6440.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6442.png',
   description: 'bedrooms : 4 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, lobby, kitchen, front lawn, rear lawn',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6443.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, wash, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6456.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6469.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, utility, balcony, store room',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6490.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, lobby, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6495.png',
   description: 'bedrooms : 5 | toilet : 7 | attached _ toilet : 5 | dress _ room : 4 | features : drawing room, terrace, lobby, dining, lounge, store, utility, servant room:2 , kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6516.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : hall, dining, kitchen, lobby, utility, pooja room, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6517.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6533.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, flower bed, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6536.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 2 | features : drawing room, dining, kitchen, entrance lobby, lounge, utility, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6549.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen, verandah, garden',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6572.png',
   description: 'first floor(bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 2 | features : family living , utility) ground floor(bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen, utility)',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6600.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6606.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen, dining',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6607.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : car parking',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6619.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, pantry, wash area, garden, patio, lawn, sitout, garage, powder room',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6623.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, utility, balcony, pooja',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6626.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6628.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, passage, kitchen, balcony, covered verandah',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6631.png',
   description: 'bedrooms : 4 | toilet : 3 | attached _ toilet : 2 | dress _ room : 1 | features : drawing room, dining, kitchen, rear lawn',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6641.png',
   description: 'bedrooms : 4 | toilet : 3 | attached _ toilet : 2 | dress _ room : 1 | features : drawing room, kitchen, verandah, front lawn, rear lawn',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6643.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6653.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, utility, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6668.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6673.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 2 | dress _ room : 1 | features : living room, dining, passage, utility, kitchen, terrace, servant room',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6690.png',
   description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 3 | dress _ room : 0 | features : drawing room, dining, kitchen, passage, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6728.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 0 | features : living room, utility, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6731.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6740.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, foyer, kitchen, service, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6748.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, utility, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6749.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6761.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : lounge, stairhall, pantry, study, store, sitout',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6768.png',
   description: 'bedrooms : 4 | toilet : 5 | attached _ toilet : 3 | dress _ room : 0 | features : living room, dining, kitchen, foyer, pooja, family room, sitout, AC storage, balcony, utility, powder room, servant room',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6782.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : lobby, drawing room, kitchen, open area, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6784.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, kitchen, lawn',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6820.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6851.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6856.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6860.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, puja, passage, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6869.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, lobby, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6878.png',
   description: 'bedrooms : 5 | toilet : 6 | attached _ toilet : 5 | dress _ room : 2 | features : living room, dining, deck, verandah, pooja area, storage, pantry, utility, balcony, kitchen, lobby',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6880.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6920.png',
   description: 'bedrooms : 2 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : wardrobe, living room, sitout, storage, foyer, dining, kitchen, lawn, utility, staff room, deck, powder room, car park',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6961.png',
   description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, balcony, servant room',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6968.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6984.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, kitchen, dining, store, wash',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_6986.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : lawn, living room, dining, kitchen, utility, powder room',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7048.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 4 | dress _ room : 0 | features : drawing room, dining, kitchen, lobby, verandah, lawn, powder room, pool',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7056.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, passage, balcony, flower bed',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7078.png',
   description: 'bedrooms : 2 | toilet : 3 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, dining, kitchen, car parking, open area',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7082.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen, wash, service platform, car porch',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7087.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 1 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7093.png',
   description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 4 | dress _ room : 3 | features : drawing room, dining, kitchen, entrance lobby, lobby, balcony, powder room',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7101.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, passage, flowr bed',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7103.png',
   description: 'bedrooms : 2 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : lobby, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7109.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : lawn, living room, kitchen, parking',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7144.png',
   description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 4 | dress _ room : 2 | features : living room, drawing room, dining, kitchen, service area, store, foyer, wash balcony, terrace, study store room',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7195.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, deck, utility',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7202.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen, lobby, passage, puja, store, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7207.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen, lobby, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7218.png',
   description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 4 | dress _ room : 1 | features : drawing room, dining, foyer, utility, powder room, passage, pooja room, balcony, kitchen, lounge area',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7231.png',
   description: 'first floor(bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, balcony, lawn) ground floor(bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, lwan)',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7242.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen, sitout',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7247.png',
   description: 'bedrooms : 4 | toilet : 6 | attached _ toilet : 5 | dress _ room : 3 | features : drawing room, dining, kitchen, lobby, servant room, study room, balcony, lobby',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7260.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony, puja room, utility',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7268.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen, dining',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7272.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, foyer, storage, balcony, wash',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7277.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen, lobby',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7294.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, utility, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7323.png',
   description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 4 | dress _ room : 0 | features : living room, dining, kitchen, balcony, pool, store, passage, terrace, verandah, wooden deck,utility, servant room, closet, lawn',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7326.png',
   description: 'bedrooms : 2 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, balcony, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7331.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, lobby, kitchen, balcony, terrace',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7371.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7373.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, passage, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7383.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, lawn, parking, balcony, study room',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7398.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 1 | features : living room, dining, kitchen, sitout, terrace, wash, deck, pool, lawn, powder room',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7407.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 1 | features : drawing room, dining, kitchen, car porch, work area, lawn',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7428.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : hall, dining, kitchen, wash, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7467.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7476.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 1 | features : drawing room, dining, kitchen, lobby, puja, balcony, multipurpose room',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7480.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7499.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony, lobby, family lounge, pooja, random room',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7500.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 1 | features : drawing room, living room, dining, kitchen, stairhall, sitout, drive way, pool',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7501.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, balcony, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7502.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, verandah, lawn',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7503.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, parking, foyer, utility',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7504.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7505.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7506.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony, lobby',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7510.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7514.png',
   description: 'bedrooms : 2 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7515.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7516.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, balcony, foyer',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7518.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, terrace',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7521.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 0 | features : living room, dining, kitchen, wash, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7524.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, closet',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7525.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, balcony, utility',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7528.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : hall, kitchen, terrace',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7529.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 1 | features : drawing room, dining, kitchen, vestiblue, balcony, utility',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7534.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7535.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7536.png',
   description: 'bedrooms : 4 | toilet : 3 | attached _ toilet : 2 | dress _ room : 1 | features : drawing room, dining, kitchen, balcony, rear lawn',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7537.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, terrace, balcony, utility',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7538.png',
   description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 3 | dress _ room : 2 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7540.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, dining, balcony, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7541.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, lounge, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7545.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : garden, wash, parking, otta, drawing room, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7546.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, terrace, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7547.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : lawn, kitchen, dining, foyer, living room, sitout, utility, parking',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7548.png',
   description: 'bedrooms : 2 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : lobby, balcony, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7550.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen, wash, car parking',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7551.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7553.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living hall, dining, kitchen, utility, terrace',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7554.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7560.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 0 | features : drawing room, dining, kitchen, puja, utility, sitout, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7561.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, passage, flowr bed',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7562.png',
   description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 3 | dress _ room : 1 | features : drawing room, dining, kitchen, balcony, servant room, lobby, utility',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7566.png',
   description: 'bedrooms : 2 | toilet : 3 | attached _ toilet : 3 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony, work area',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7567.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, utility, sitout',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7568.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, wash, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7571.png',
   description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 4 | dress _ room : 1 | features : living room, dining, kitchen, balcony, wash, lobby, bar, powder room, pooja room, family lounge, passage',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7572.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, balcony, kitchen, dining, pooja, wash area, lobby',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7573.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7577.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, kitchen, terrace, wash, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7579.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, flower bed, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7580.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7585.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, verandah, kitchen, rear court',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7586.png',
   description: 'bedrooms : 4 | toilet : 3 | attached _ toilet : 2 | dress _ room : 1 | features : drawing room, kitchen, verandah, front lawn, rear lawn',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7587.png',
   description: 'bedrooms : 2 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7588.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : lobby, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7589.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, balcony, dining',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7591.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, terrace',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7594.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen, flower bed',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7595.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, verandah, open, lobby',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7596.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7598.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, balcony, kitchen, utility',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7601.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : dining, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7602.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, lobby, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7608.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, utility, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7609.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, foyer, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7611.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : lawn, living room, dining, kitchen, patio, utility, parking',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7612.png',
   description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 3 | dress _ room : 0 | features : drawing room, dining, kitchen, lobby area, puja, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7615.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7616.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, dining, kitchen, balcony, terrace',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7617.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7628.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, utility',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7630.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7632.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony, store',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7635.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen, otla',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7637.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7640.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 1 | features : drawing room, dining, kitchen, pooja, balcony, utility',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7641.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 3 | dress _ room : 0 | features : drawing room, seating area, kitchen,balcony, dining',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7647.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7651.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen, dining, verandah, foyer, sitout, car porch',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7652.png',
   description: 'bedrooms : 3 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, foyer, utility',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7654.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, kitchen, wash area, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7656.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 1 | features : living room, dining, kitchen, verandah, pooja, lobby, utility, lawn',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7664.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, lobby, kitchen, terrace',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7668.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony, wash area',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7669.png',
   description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 3 | dress _ room : 0 | features : drawing room, dining, kitchen, servant room, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_7670.png',
    description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, utility, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_7685.png',
    description: 'bedrooms : 4 | toilet : 5 | attached _ toilet : 4 | dress _ room : 2 | features : hall, dining, kitchen,lobby, utility, balcony, deck, passage',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7687.png',
   description: 'bedrooms : 2 | toilet : 3 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, dining, kitchen, car parking, open area',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7697.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, terrace, kitchen, balcony, service',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7700.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7701.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 1 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7710.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, corridor, balcony, utility',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7714.png',
   description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 3 | dress _ room : 1 | features : drawing room, dining, kitchen, balcony, servant room ',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7717.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, wash, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7725.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, passage',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7727.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, flowr bed, utility, terrace',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7731.png',
   description: 'bedrooms : 2 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, dining, kitchen, parking',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7742.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 1 | features :family room, sitout',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7743.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, pooja room, balcony, wash area',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7744.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, balcony, kitchen, deck',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7751.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, utility area, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7758.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, pooja room, balcony, wash area',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7759.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, store, passage, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7760.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, nook, kitchen, pooja room, powder room, utility, portico',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7767.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, landscape, utility',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7769.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7776.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, terrace, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7778.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, passage, flower bed, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7785.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, dining, kitchen, wash, porch, verandah, garden',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7787.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7789.png',
   description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 4 | dress _ room : 1 | features : drawing room, dining, lobby, lounge, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7793.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, balcony, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7794.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7798.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : living room, kitchen, balcony, dining, store',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7806.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features :kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7823.png',
   description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 3 | dress _ room : 0 | features : living room, dining, kitchen, puja, store, balcony, study room ',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7827.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : living room, dining, kitchen, utility, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7832.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 0 | dress _ room : 0 | features : drawing room, dining, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7835.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, kitchen, garden, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7842.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, balcony, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7844.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : hall, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7850.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : lobby, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7856.png',
   description: 'bedrooms : 3 | toilet : 3 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony, front lawn, rear lawn',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7860.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 0 | features : drawing room, kitchen, lobby, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7885.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7902.png',
   description: 'bedrooms : 4 | toilet : 4 | attached _ toilet : 4 | dress _ room : 0 | features : drawing room, dining, kitchen, family lounge',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7906.png',
   description: 'bedrooms : 4 | toilet : 5 | attached _ toilet : 4 | dress _ room : 0 | features : living room, dining, kitchen, balcony, wash',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7908.png',
   description: 'bedrooms : 1 | toilet : 1 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7911.png',
   description: 'bedrooms : 3 | toilet : 4 | attached _ toilet : 3 | dress _ room : 0 | features : living room, dining, kitchen, pooja room,store,balcony, study',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7926.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, utility, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7939.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, utility, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7950.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 0 | dress _ room : 0 | features : living room, balcony, kitchen',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7951.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 2 | dress _ room : 1 | features : lounge, home theatre, lobby, terrace',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7952.png',
   description: 'bedrooms : 1 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, dining, kitchen, lawn, drawing room, utility, wet kitchen, private garden',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7983.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : drawing room, dining, kitchen, balcony',
  ));
  await repo.insertDesign(Design(
   image: 'assets/resized_images/image_7994.png',
   description: 'bedrooms : 2 | toilet : 2 | attached _ toilet : 1 | dress _ room : 0 | features : living room, kitchen, utility, balcony',
  ));
  await repo.insertDesign(Design(
    image: 'assets/resized_images/image_7995.png',
    description: 'bedrooms : 3 | toilet : 5 | attached _ toilet : 3 | dress _ room : 0 | features : living room, dining, kitchen, passage, store room, deck',
  ));

}

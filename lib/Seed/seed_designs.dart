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



}

import '../models/movie_model.dart';

final List<String> CATEGORIES = ['Action','Drama', 'Comedy', 'Sports', 'Muscial', 'Crime', 'Horror', 'Fantasy', 'Thriller', 'Romance', 'Animation'];
final List<MovieModel> MOVIES_CONSTANT = [
  MovieModel(
      id: 61704,
      title: "Accident",
      description: "&#12298;&#24847;&#22806;&#12299;A self-styled accident choreographer, the Brain is a professional hitman who kills his victims by trapping them in well crafted accidents that look like unfortunate mishaps but are in fact perfectly staged acts of crime. Perennially plagued with guilt, he is also suspicious and morbid by nature. The recent avalanche of memories of his lost wife does not make things any easier.After one mission accidentally goes wrong, causing the life of one of his men, the Brain is convinced that this accident has been choreographed: someone is out there plotting to terminate him and his team. He becomes increasingly paranoid, walking on the thin line between reality and delusion.When he is accosted by a mysterious insurance agent Fong who happened to be on the scene of the accident as well, the Brain becomes obsessed that this man must be the mastermind behind a conspiracy to take him out. To regain his sanity and to safe his life, he must strive to kill Fong before he makes his next move.",
      img: "https://cdn.pixabay.com/photo/2021/11/03/08/24/baskets-6765014_1280.jpg",
      rating: 6.6,
      year: 2009,
      genres: [
        "Mystery",
        "Thriller"
      ],
      runtime: 89
  ),
  MovieModel(
      id: 61703,
      title: "Seth Rogen's Hilarity for Charity",
      description: "Seth Rogen hosts an evening of comedy to raise awareness for Alzheimer's disease.",
      img: "https://cdn.pixabay.com/photo/2023/02/08/18/36/tawny-owl-7777285_640.jpg",
      rating: 5,
      year: 2018,
      genres: [
        "Comedy"
      ],
      runtime: 70
  ),
  MovieModel(
      id: 61702,
      title: "Everything Puppies",
      description: "A dedicated entrepreneur and inventor looking to make it big creating innovative dog toys and treats finds success with the support of a handsome client. Starring Pascal Lamothe-Kipnes, Stephen Huszar, and Kathryn Davis.",
      img: "https://cdn.pixabay.com/photo/2020/04/20/18/10/cinema-5069314_640.jpg",
      rating: 6.1,
      year: 2024,
      genres: [
        "Drama"
      ],
      runtime: 0
  ),
  MovieModel(
      id: 61701,
      title: "Phil Tippett: Mad Dreams and Monsters",
      description: "An in-depth, sad, and beautiful documentary about the stop motion and VFX artist Phil Tippett, a man who changed the landscape of visual effects in film.",
      img: "https://cdn.pixabay.com/photo/2019/10/17/21/17/joker-4557864_640.jpg",
      rating: 7.2,
      year: 2019,
      genres: [
        "Biography",
        "Documentary"
      ],
      runtime: 80
  ),
  MovieModel(
      id: 61700,
      title: "Silence of the Prey",
      description: "In a desperate bid to secure a future for her child, an undocumented immigrant mother takes a caretaker job. Unbeknownst to her, the elderly man conceals a horrifying truth.",
      img: "https://cdn.pixabay.com/photo/2020/06/29/21/13/city-5354477_640.jpg",
      rating: 5.2,
      year: 2024,
      genres: [
        "Horror"
      ],
      runtime: 0
  ),
  MovieModel(
      id: 61699,
      title: "A Letter for Wales",
      description: "Donald Houston plays a Welshman who tells the story of what it's like to live in small town Wales and how the train service helps.",
      img: "https://cdn.pixabay.com/photo/2017/03/07/23/33/technology-2125547_640.jpg",
      rating: 6.2,
      year: 1960,
      genres: [
        "Documentary"
      ],
      runtime: 25
  ),
  MovieModel(
      id: 61698,
      title: "The Way Things Go",
      description: "Inside a warehouse, a precarious 70-100 feet long structure has been constructed using various items. When this is set in motion, a chain reaction ensues. Fire, water, law of gravity as well as chemistry determine the life-cycle of objects - of things. It brings about a story concerning cause and effect, mechanism and art, improbability and precision.—Anonymous",
      img: "https://cdn.pixabay.com/photo/2018/07/06/19/48/charles-chaplin-3521070_640.jpg",
      rating: 7.6,
      year: 1987,
      genres: [
        "Documentary"
      ],
      runtime: 30
  ),
  MovieModel(
      id: 61697,
      title: "Every Valley",
      description: "A look at the transport system in the South Wales Valleys and how it effects peoples livelihoods and everyday lives.",
      img: "https://cdn.pixabay.com/photo/2024/05/06/11/46/monster-8743173_640.jpg",
      rating: 6.8,
      year: 1957,
      genres: [
        "Documentary"
      ],
      runtime: 20
  ),
  MovieModel(
      id: 61695,
      title: "Force of Nature: The Dry 2",
      description: "Five women participate in a hiking retreat but only four come out the other side. Federal agents Aaron Falk and Carmen Cooper head into the mountains hoping to find their informant still alive.",
      img: "https://cdn.pixabay.com/photo/2021/09/22/11/34/horse-6646593_640.jpg",
      rating: 6.1,
      year: 2024,
      genres: [
        "Crime",
        "Mystery",
        "Thriller"
      ],
      runtime: 120
  ),
  MovieModel(
      id: 61694,
      title: "Cold Steel",
      description: "On Christmas Eve Johnny Modine's father is murdered by a psycho cut-throat. The cop swears bloody revenge, though he's taken off the case. He doesn't suspect yet that he's also target in a diabolic plan of revenge.—Tom Zoerner",
      img: "https://cdn.pixabay.com/photo/2020/10/22/10/28/cow-5675684_640.jpg",
      rating: 4.6,
      year: 1987,
      genres: [
        "Action",
        "Thriller"
      ],
      runtime: 91
  ),
  MovieModel(
      id: 61693,
      title: "Jay Pharoah: Can I Be Me?",
      description: "Stand up Jay Pharaoh performs his most popular celebrity impressions in this powerhouse comedy special, including hilarious takes on Chris Rock, Dave Chappelle, Jay-Z, Barack Obama and more.",
      img: "https://cdn.pixabay.com/photo/2024/04/28/07/00/bird-8724916_640.jpg",
      rating: 6,
      year: 2015,
      genres: [
        "Comedy"
      ],
      runtime: 62
  ),
  MovieModel(
      id: 61692,
      title: "Bomb: A Love Story",
      description: "In the middle of Iran-Iraq war, and at the height of Tehran's Bombardment, time goes by fear and fear. but love and affection, life and hope leave the tangible fear of death abandoned in the words of the living death is an absolute question and love is a frequent ambiguity. \"Bomb: A Love Story\" with a hopeful life not with a absolute darkness of death.—TheSheykhi",
      img: "https://cdn.pixabay.com/photo/2024/05/12/09/28/brown-bear-8756478_640.png",
      rating: 6.5,
      year: 2018,
      genres: [
        "Drama",
        "Romance",
        "War"
      ],
      runtime: 96
  ),
  MovieModel(
    id: 61691,
    title: "Shukriyaa",
    description: "Young and playful Neema's prank with a live electric wire kills her mother, and leaves her dad, Dayal, angered and devastated by Neema and his wife's death respectively. Dayal begins to resent his daughter so much so that he cannot stand the sight of her. Neema grows up to be nervous and insecure young woman, klutz-like, and terrified of her father. Things change for the better , when she meets the owner of a restaurant, Ajay Singh, and both fall in love w When Dayal comes to know of this, his anger knows no bounds, and he forbids her to ever see Ajay again. When Ajay finds out about Dayal's plan to marry Neema elsewhere, he is determined to marry Neema at all costs - and so is Neema, who now seems to have given up her timidity. What Neema does not know is that Ajay does not love her - all he is interested is humiliating and possibly killing Dayal - to set right a devastating incident that changed his life forever when he was a child. Will Ajay be able to carry out his deadly task?—rAjOo (gunwanti@hotmail.com)",
    img: "https://cdn.pixabay.com/photo/2024/04/16/16/25/ai-generated-8700383_640.jpg",
    rating: 5.5,
    year: 1988,
    genres: ["Drama", "Romance"],
    runtime: 0,
  ),
  MovieModel(
    id: 61690,
    title: "Anyone But Her",
    description: "A tight-knit group of friends can't live without each other, that is until one of them announces their marriage. In the midst of dealing with this change, they stumble upon the perfect chance to throw a wrench into the wedding preparations.",
    img: "https://cdn.pixabay.com/photo/2023/05/29/00/24/blue-tit-8024809_640.jpg",
    rating: 5.1,
    year: 2024,
    genres: ["Comedy", "Romance"],
    runtime: 93,
  ),
  MovieModel(
    id: 61689,
    title: "The Guardian of the Monarchs",
    description: "An exploration of the disappearance of Homero Gómez, an activist who brought attention to endangered monarch butterflies in the forests of Michoacán.",
    img: "https://cdn.pixabay.com/photo/2024/05/09/12/06/fruit-8750860_640.jpg",
    rating: 7.9,
    year: 2024,
    genres: ["Documentary"],
    runtime: 92,
  ),
  MovieModel(
    id: 61688,
    title: "Hidden City",
    description: "Sharon Newton (Cassie Stuart) leads the uncooperative James Richards (Charles Dance) into a world of misplaced government secrets, capitalistic artists and bungling secret agents. Will the truth be out? Will the meaning of the hidden film footage spliced into innocuous Government Information Films be discovered? And what is so important about these misplaced medical records? Hidden City is a film set in a London made hidden by the layers of history and secrets.—Robert Leather",
    img: "https://cdn.pixabay.com/photo/2024/05/06/00/39/one-person-8742116_640.jpg",
    rating: 6,
    year: 1987,
    genres: ["Mystery", "Thriller"],
    runtime: 108,
  ),
  MovieModel(
    id: 61687,
    title: "The World",
    description: "\"The World\" is a theme park on the outskirts of Beijing, sixteen kilometers from the Chinese capital, designed around scaled representations of the world's famous landmarks such as the Eiffel Tower or the Leaning Tower of Pisa.The site is seen here not from the visitors' point of view but through the eyes of a few of its staff, lonely people, communicating poorly, a bit disillusioned with life, glittering for the tourists but dull and restricted as far as they are concerned. We meet, among others, pretty young dancer Tao and Taisheng, a security guard who is fond of her but not of personal commitment...—Guy Bellinger",
    img: "https://cdn.pixabay.com/photo/2024/01/09/20/41/wheat-8498380_640.jpg",
    rating: 7.1,
    year: 2004,
    genres: ["Drama"],
    runtime: 143,
  ),
  MovieModel(
    id: 61686,
    title: "Single8",
    description: "During the midst of Star Wars fever in the late 1970s, a cinephile high schooler teams up with three classmates to make his no-budget sci-fi masterpiece for a class project.",
    img: "https://cdn.pixabay.com/photo/2023/06/19/18/41/blue-jay-8075346_640.jpg",
    rating: 7.2,
    year: 2023,
    genres: ["Adventure", "Comedy", "Drama"],
    runtime: 113,
  ),
  MovieModel(
    id: 61685,
    title: "After the Rain",
    description: "Ihei Misawa and his wife Tayo, stranded by rains at a country inn, bring a great deal of happiness to the other residents of the inn by means of Ihei's generosity and good spirit. Ihei is a masterless samurai and fencing expert. Ihei comes to the attention of Lord Shigeaki, who hires him as fencing instructor for Lord Shigeaki's men. But Ihei's expertise causes friction and jealousy in Shigeaki's castle and his future there comes into doubt.—Jim Beaver",
    img: "https://cdn.pixabay.com/photo/2023/04/05/16/08/hedgehog-fly-7901862_640.jpg",
    rating: 7.6,
    year: 1999,
    genres: ["Drama"],
    runtime: 91,
  ),
  MovieModel(
    id: 61683,
    title: "Pandemonium",
    description: "After realising he has died at the scene of a car crash, Nathan descends into the depths of hell, where he is doomed to experience the pain of tortured souls along the way.",
    img: "https://cdn.pixabay.com/photo/2022/11/07/21/31/rose-7577265_640.jpg",
    rating: 5.6,
    year: 2023,
    genres: ["Horror"],
    runtime: 95,
  ),
];
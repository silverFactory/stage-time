User.create(
  username: "newbie",
  stage_name: "Gene Belcher",
  password: "burgers",
  host: false,
  pic: "https://pbs.twimg.com/media/BRz_LmDCIAECG98.jpg",
  bio: "I've been playing keyboard my whole life, specialize in musical comedy",
  email: "gb@gamil.com",
  email_public: true,
  facebook_link: "",
  instagram_link: "",
  youtube_link: "https://youtube.com/gbelcher",
  bandcamp_link: "",
  spotify_link: ""
)
User.create(
  username: "poetguy",
  stage_name: "Arthur Rimbaud",
  password: "surrealism",
  host: false,
  pic: "",
  bio: "French poet, restless soul, big influence on modern literature",
  email: "",
  email_public: false,
  facebook_link: "",
  instagram_link: "",
  youtube_link: "",
  bandcamp_link: "",
  spotify_link: ""
)
User.create(
  username: "crocodile",
  stage_name: "Big Todd",
  password: "teethgochomp",
  host: true,
  pic: "",
  bio: "Been in the village since the '70's. Do a little bit of this and that. A mainstay in the scene.",
  email: "bt@gmail.com",
  email_public: true,
  facebook_link: "https://facebook.com/bigtoddtohot",
  instagram_link: "https://instagram.com/bigtoddishere",
  youtube_link: "",
  bandcamp_link: "",
  spotify_link: "https://spotify.com/btjokes"
)
User.create(
  username: "jazzman",
  stage_name: "Billy Keys",
  password: "aminordiminished",
  host: true,
  pic: "https://cdn.merriammusic.com/2015/11/Jazz-piano-keys_full.jpeg",
  bio: "Conservatory trained in the city. Love improvisation and collaboration",
  email: "",
  email_public: false,
  facebook_link: "",
  instagram_link: "",
  youtube_link: "",
  bandcamp_link: "",
  spotify_link: "https://spotify.com/billykeys"
)
User.create(
  username: "zazzblammymatazz",
  stage_name: "Pinky Zazz",
  password: "whatchoutyall",
  host: false,
  pic: "",
  bio: "Performance artist here to rock the East Village. Subversive and funny!",
  email: "zazzblam@gmail.com",
  email_public: true,
  facebook_link: "",
  instagram_link: "https://instagram.com/pinkyzazz",
  youtube_link: "",
  bandcamp_link: "",
  spotify_link: ""
)
OpenMic.create(
  name: "Sidewalk Reborn",
  genre: "All performers welcome",
  location: "94 avenue A, past the bar into the back room",
  day: "Sunday",
  time: "7:30 to late",
  stage_time: "6 min or two songs",
  sign_up_protocol: "names in a bucket",
  cover: 0,
  drink_or_food_minimum: "two drinks",
)
OpenMic.create(
  name: "Bebop at the Brownstone",
  genre: "music",
  location: "67 E 3rd st, up the staircase on the second floor",
  day: "Wednesday",
  time: "8-11",
  stage_time: "10 min",
  sign_up_protocol: "first-come list",
  cover: 5,
  drink_or_food_minimum: "none",
)
Update.create(
  open_mic_id: 1,
  body: "$5 PBR tallboys!!"
)
Update.create(
  open_mic_id: 2,
  body: "Featured performer this week: Thunder Michelson"
)
Instrument.create(
  open_mic_id: 1,
  name: "Casio Keyboard",
  description: "CT-465: pretty basic keyboard on a stand, available for anyone interested.",
  status: "High D Key is broken"
)
Instrument.create(
  open_mic_id: 2,
  name: "Yamaha Upright",
  description: "Been here for decades, well used but plays like a dream",
  status: "needs a tune but good otherwise"
)
Support.create(
  user_id: 2,
  open_mic_id: 1,
  title: "Poet looking for assistance",
  body: "Will be reading a short story, looking for a pianist to improvise lightly while I do.",
  missed_connection: false,
  lend_a_hand: true,
)
Support.create(
  user_id: 1,
  open_mic_id: 1,
  title: "Performer with the Pink Hair",
  body: "I was totally blown away with your set last week. Would love to work on a project with you!",
  missed_connection: true,
  lend_a_hand: false,
)
Support.create(
  user_id: 4,
  open_mic_id: 2,
  title: "Upright Bass Player",
  body: "Saw you in here last week, didn't get a chance to chat but I'm going into the studio soon and I think you'd fit my sound perfectly.",
  missed_connection: true,
  lend_a_hand: false,
)
Host.create(
  user_id: 3,
  open_mic_id: 1
)
Host.create(
  user_id: 4,
  open_mic_id: 2
)

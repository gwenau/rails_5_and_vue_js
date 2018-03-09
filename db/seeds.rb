# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.all.each {|x| x.destroy}
User.all.each {|x| x.destroy}

e1 = Event.create(name: "Graduation", venue: "TBA, somewhere in hackney", city: "London", postcode: "
E8 1BD", latitude: 51.544543, longitude: -0.0643581)
e2 = Event.create(name: "Codebar", venue: "Pivotal Labs", address_line_1: "Bentima House", address_line_2: "168-172 Old Street", city: "London", postcode: "EC1V 9BP", latitude: 51.525026, longitude: -0.090486)
e3 = Event.create(name: "Friday nights at the Gunmakers", address_line_1: "13 Eyre Street Hill", city: "London", postcode: "EC1R 5ET", latitude: 51.522563, longitude: -0.110554)

u1 = User.create(name: "Gwen Au", image: "http://m.c.lnkd.licdn.com/mpr/pub/image-qLGKpibHtp_OUipSn1gv69qpNTGHqlYWqSgB6K3KNWIetQMsqLGBJMVHNgeptSTQyCmK/gwen-au.jpg", email: "quyen_au@hotmail.com", github: "gwenau", linkedin: "http://au.linkedin.com/pub/gwen-au/45/266/a89", postcode: "NW1 0LE", password: "password", role: "admin")
u2 = User.create(name: "Toby Merlet", image: "https://fbcdn-profile-a.akamaihd.net/hprofile-ak-prn2/v/t1.0-1/c14.8.172.172/s160x160/539747_10151479855865228_1160094468_n.jpg?oh=57537df4a356fbab7b9c84346fe7f8bc&oe=5491F704&__gda__=1419728927_a3ac85623b61ea10c62746c20aa44501",github: "tmerlet", linkedin: "http://www.linkedin.com/pub/toby-merlet/22/a07/918", password: "password", email: "tmerlet@gmail.com", role: "member")
u3 = User.create(name: "Tobias Hale", image: "http://m.c.lnkd.licdn.com/mpr/pub/image-J1qMeBhKWP83NwvELL7Ev4T4UUkYgxYEHY7XEbqHUnEcWij4J1qXO3yKU2c7d1TvPraV/tobias-hale.jpg", github: "ThatTobMate", linkedin: "http://uk.linkedin.com/pub/tobias-hale/41/101/728?trk=pub-pbmap", password: "password", email: "thale.android@gmail.com", role: "member")
u4 = User.create(name: "Sam Maton", image: "http://m.c.lnkd.licdn.com/mpr/pub/image-4Ar_LCs2pTjk-2wHraK5_n7sXpz_lk0J_yxjrpT2XkdolZ2j4ArjfNP2Xrr1ApJE2V40/sam-maton.jpg", github: "smaton1", linkedin: "http://uk.linkedin.com/pub/sam-maton/7a/391/831?trk=pub-pbmap", password: "password", email: "sam_maton@hotmail.com", role: "member")
u5 = User.create(name: "Alex Windett", image: "http://2.bp.blogspot.com/-Kwv55b7dK-s/TVfKGZ9LarI/AAAAAAAABk4/tK5iU353ODw/s400/anonymous.bmp", github: "alex-windett", linkedin: "http://uk.linkedin.com/pub/alexander-windett/63/954/387?trk=pub-pbmap", password: "password", email: "alexwindett@hotmail.com", role: "member")
u6 = User.create(name: "Liam Collins", image: "http://m.c.lnkd.licdn.com/mpr/pub/image-iRyE8qEONK1D_MtsVZ_M7Wv1tGlhfYea12oJDu0OtI8brlsziRyJDOFOtApbr9f61qNS/liam-collins.jpg", github: "liampcollins", linkedin: "http://uk.linkedin.com/pub/liam-collins/45/a11/a32?trk=pub-pbmap", password: "password", email: "liam.collins@nesta.org.uk", role: "member")
u7 = User.create(name: "Graham Curl", image: "http://2.bp.blogspot.com/-Kwv55b7dK-s/TVfKGZ9LarI/AAAAAAAABk4/tK5iU353ODw/s400/anonymous.bmp", github: "madness7", linkedin: "http://uk.linkedin.com/pub/graham-curl/8/226/a54?trk=pub-pbmap", password: "password", email: "gac.curl@googlemail.com", role: "member")
u8 = User.create(name: "Piers Karpinski", image: "http://2.bp.blogspot.com/-Kwv55b7dK-s/TVfKGZ9LarI/AAAAAAAABk4/tK5iU353ODw/s400/anonymous.bmp", github: "PiersKarpinski", linkedin: "http://uk.linkedin.com/pub/piers-karpinski/8a/552/671?trk=pub-pbmap", password: "password", email: "piers.karpinski@gmail.com", role: "member")
u9 = User.create(name: "Johanna Carlberg ", image: "https://avatars0.githubusercontent.com/u/4820633?v=2&s=460", github: "johannasc", linkedin: "http://uk.linkedin.com/pub/johanna-carlberg/88/865/219", password: "password", email: "jcarlberg@gmail.com", role: "member")
u10 = User.create(name: "James Christie", image: "https://avatars2.githubusercontent.com/u/7838784?v=2&s=460", github: "jchristie55332", password: "password", email: "jwchristie.jc@gmail.com", role: "member")
u11 = User.create(name: "Andrew Fyfe", image: "https://avatars2.githubusercontent.com/u/7965116?v=2&s=460", github: "enumera", linkedin: "http://uk.linkedin.com/pub/piers-karpinski/8a/552/671?trk=pub-pbmap", password: "password", email: "andfyfe@fastmail.com", role: "member")
u12 = User.create(name: "Gareth Robert Lee", image: "http://m.c.lnkd.licdn.com/mpr/pub/image-gnrLEMlE_ZuvB2rFNCKZojQ5vqb6EEz7gdKOe12EvhIHZZLAgnrOVKpEvtVMkp7PlbJD/gareth-robert-lee.jpg", github: "cerico", linkedin: "http://www.linkedin.com/pub/gareth-robert-lee/88/8b/598", password: "password", email: "garethrobertlee@googlemail.com", role: "member")
u13 = User.create(name: "David Rees", image: "http://2.bp.blogspot.com/-Kwv55b7dK-s/TVfKGZ9LarI/AAAAAAAABk4/tK5iU353ODw/s400/anonymous.bmp", github: "davidarees", password: "password", email: "davidarees@outlook.com", role: "member")
u14 = User.create(name: "Tom Walker", image: "http://2.bp.blogspot.com/-Kwv55b7dK-s/TVfKGZ9LarI/AAAAAAAABk4/tK5iU353ODw/s400/anonymous.bmp", github: "tjwalker2014", password: "password", email: "tj.walker@live.com", role: "member")

u15 = User.create(name: "Hisako Bremner", image: "http://2.bp.blogspot.com/-Kwv55b7dK-s/TVfKGZ9LarI/AAAAAAAABk4/tK5iU353ODw/s400/anonymous.bmp", password: "password", email: "chakobre@gmail.com", role: "member")
u16 = User.create(name: "Anand Duddella", image: "http://2.bp.blogspot.com/-Kwv55b7dK-s/TVfKGZ9LarI/AAAAAAAABk4/tK5iU353ODw/s400/anonymous.bmp", github: "aduddella", password: "password", email: "anand@email.com", role: "member")
u17 = User.create(name: "Colin Gillingham", image: "http://m.c.lnkd.licdn.com/mpr/pub/image-4Ar_LCs2pTjk-2wHraK5_n7sXEp_cpRxuskju2GnXRd_lZ2j4ArjfNP2Xrr6lkZNCk-0/colin-gillingham.jpg", linkedin: "http://uk.linkedin.com/in/colingillingham", password: "password", email: "colingillingham@gmail.com", role: "member")
u18 = User.create(name: "Kate", image: "http://2.bp.blogspot.com/-Kwv55b7dK-s/TVfKGZ9LarI/AAAAAAAABk4/tK5iU353ODw/s400/anonymous.bmp", password: "password", email: "kate@email.com", role: "member")

e1.users << [u1, u2, u3, u4, u5, u6, u7, u8, u9, u10, u11, u12, u13, u14]
e2.users << [u1, u9, u15, u18]
e3.users << [u1, u2, u3, u4, u5, u6, u7, u8, u9, u10, u11, u12, u13, u14, u15, u16, u17, u18]


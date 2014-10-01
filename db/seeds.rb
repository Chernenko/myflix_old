# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Video.create(title: "Switched at Birth", description: "Switched at Birth is an American teen,family drama television series that premiered on ABC Family on June 6, 2011, at 9:00 ET/PT.The one-hour scripted drama is set in the Kansas City metropolitan area, and revolves around two teenagers who were switched at birth and grew up in very different environments: one in the old money suburb of Mission Hills, Kansas, and the other in working-class East Riverside, Missouri. According to ABC Family, it is the first mainstream television series to have multiple deaf and hard-of-hearing series regulars and scenes shot entirely in American Sign Language (ASL)", small_cover_url: "/tmp/switched_at_birth.jpg", large_cover_url: "/tmp/switched_at_birth_large.jpg", category_id: "5")
Video.create(title: "The Walking Dead", description: "The Walking Dead is an American post-apocalyptic horror drama television series developed by Frank Darabont. It is based on the comic book series of the same name by Robert Kirkman, Tony Moore, and Charlie Adlard. The series stars Andrew Lincoln as sheriff's deputy Rick Grimes,[3] who awakens from a coma to find a post-apocalyptic world dominated by flesh-eating zombies. He sets out to find his family and encounters many other survivors along the way.", small_cover_url: "/tmp/walking_dead.jpg", large_cover_url: "/tmp/walking_dead_large.jpg",category_id: "1")
Video.create(title: "Monk", description: "Monk is an American comedy-drama detective mystery television series created by Andy Breckman and starring Tony Shalhoub as the eponymous character, Adrian Monk. It originally ran from 2002 to 2009 and is primarily a police procedural series, and also exhibits comic and dramatic tones in its exploration of the main characters' personal lives.", small_cover_url: "/tmp/monk.jpg", large_cover_url: "/tmp/monk_large.jpg",category_id: "1")
Video.create(title: "Bones", description: "BONES, a darkly amusing procedural entering its 10th season, is inspired by real-life forensic anthropologist and novelist Kathy Reichs. ", small_cover_url: "/tmp/bones.jpg", large_cover_url: "/tmp/bones_large.jpg",category_id: "1")
Video.create(title: "Futurama", description: "Fry, a pizza guy is accidentally frozen in 1999 and thawed out New Year's Eve 2999.", small_cover_url: "/tmp/futurama.jpg", large_cover_url: "/tmp/futurama_large.jpg",category_id: "2")
Video.create(title: "South Park", description: "Follows the misadventures of four irreverent grade-schoolers in the quiet, dysfunctional town of South Park, Colorado.", small_cover_url: "/tmp/south_park.jpg", large_cover_url: "/tmp/south_park_large.jpg",category_id: "5")
Video.create(title: "Gossip Girl", description: "Privileged teens living on the Upper Eastside of New York City.", small_cover_url: "/tmp/gossip_girls.jpg", large_cover_url: "/tmp/gossip_girls_large.jpg",category_id: "4")
Video.create(title: "The Magic School Bus ", description: "An eccentric schoolteacher takes her class on wondrous educational field trips with the help of a magical school bus.", small_cover_url: "/tmp/magic_school_bus.jpg", large_cover_url: "/tmp/magic_school_bus_large.jpg",category_id: "3")

Category.create(name: "TV Shows")
Category.create(name: "Anime")
Category.create(name: "Children & Family")
Category.create(name: "Dramas")
Category.create(name: "Comedies")
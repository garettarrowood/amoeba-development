# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


acrobat = Talent.create(name: "acrobat")
contor = Talent.create(name: "contortionist")
juggler = Talent.create(name: "juggler")
freak = Talent.create(name: "freak")
clown = Talent.create(name: "clown")

wontons = Act.create(name: "The Amazing Flying Wontons")
spoon = Act.create(name: "Spoon Circus")
dr_teeth = Act.create(name: "Dr. Teeth and the Electric Mayhem")
crunch = Act.create(name: "Crunch")

zack = Amoeba.create(name: "Zack", generation: 1, talent: juggler, acts: [dr_teeth])
amelie = Amoeba.create(name: "Amelie", generation: 2, talent: contor, acts: [spoon, crunch])
billy = Amoeba.create(name: "Billy", generation: 1, talent: freak, acts: [dr_teeth, wontons])
betsy = Amoeba.create(name: "Betsy", generation: 3, talent: clown, acts: [crunch, spoon, wontons])
charles = Amoeba.create(name: "Charles", generation: 2, talent: acrobat, acts: [dr_teeth, crunch])
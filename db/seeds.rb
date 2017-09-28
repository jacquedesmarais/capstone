# fish = Fish.new(
#                   name: "Blue Tang",
#                   family: "Acanthuridae",
#                   color: "blue",
#                   description: "The Blue Tang boasts a vibrant electric blue body dressed with bold black markings. In fact, the black that begins at the eyes, traces the dorsal line down to the tail, and circles back above the pectoral fin to create a unique shape reminiscent of a painter's palette"
#                   )

# fish.save

Fish.create!([
  {name: "Ocellaris Clownfish", family: "Pomacentridae", color: "black, orange, white", description: "The Ocellaris Clownfish may be one of the aquarium industry's most popular marine fish. Its beautiful orange body dressed with white bands outlined in black instantly distinguishes the Ocellaris Clownfish."},
  {name: "Emperor Angelfish", family: "Pomacanthidae", color: "black, blue, white, yellow", description: "The adult Emperor Angelfish, also called the Imperator Angelfish, has a bold, blue body covered with bright yellow horizontal stripes culminating in a bright yellow to orange caudal fin. A striking blue-black mask covers the eyes and a similarly-colored vertical band extends from the pectoral fin two-thirds of the way up the body. This band is highlighted in a sapphire-blue in front, and bright yellow, caudally. The mouth is white."},
  {name: "Mombasa Lionfish", family: "Scorpaenidae", color: "brown, red, tan", description: "The Mombasa Lionfish originates from the Indian Ocean, and is infrequently exported from East Africa, Maldives, and Sri Lanka. These fishes frequent deeper water and can be found on offshore reefs and reef slopes varying in depth from 50-130 feet. The spines on the dorsal, anal fins of the Mombasa Lionfish are venomous."}
])



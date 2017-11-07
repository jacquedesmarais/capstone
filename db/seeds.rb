# User.create!([
#   {first_name: "Admin", email: "admin@gmail.com", password_digest: "$2a$10$.eKNT962GZmpvE3G5wGdSeD8i6u.NvomHoDjK3VpmVOnbyix5w6Ga"}
# ])

# Aquarium.create!([
#   {name: "McWane Science Center", city: "Birmingham", state: "Alabama", lat: "33.514803", long: "-86.808284", address: "200 19th St N"},
#   {name: "National Park Aquarium", city: "Hot Springs", state: "Arkansas", lat: "34.5175", long: "-93.05404", address: "209 Central Ave"},
#   {name: "McWane Science Center", city: "Seward", state: "Alaska", lat: "60.099879", long: "-149.441051", address: "301 Railway Ave"},
#   {name: "Aquarium of the Bay", city: "San Francisco", state: "California", lat: "37.808598", long: "-122.409384", address: "2 The Embarcadero & Beach St"},
#   {name: "Monterey Bay Aquarium", city: "Monterey", state: "California", lat: "36.61823", long: "-121.901792", address: "886 Cannery Row"},
#   {name: "Downtown Aquarium", city: "Denver", state: "Colorado", lat: "39.751781", long: "-105.013553", address: "700 Water St"},
#   {name: "Maritime Aquarium at Norwalk", city: "Norwalk", state: "Connecticut", lat: "41.100853", long: "-73.416545", address: "10 N Water St"},
#   {name: "Key West Aquarium", city: "Key West", state: "Florida", lat: "24.559041", long: "-81.807321", address: "1 Whitehead St"},
#   {name: "Georgia Aquarium", city: "Atlanta", state: "Georgia", lat: "33.763328", long: "-84.395088", address: "225 Baker St NW"},
#   {name: "Maui Ocean Center", city: "Wailuku", state: "Hawaii", lat: "20.792813", long: "-156.511816", address: "192 Maalaea Rd"},
#   {name: "Aquarium of Boise", city: "Boise", state: "Idaho", lat: "43.605558", long: "-116.273216", address: "64 N Cole Rd"},
#   {name: "Shedd Aquarium", city: "Chicago", state: "Illinois", lat: "41.867573", long: "-87.614038", address: "1200 S Lake Shore Dr"},
#   {name: "National Mississippi River Museum & Aquarium", city: "Dubuque", state: "Iowa", lat: "42.495775", long: "-90.659275", address: "350 E 3rd St"},
#   {name: "Newport Aquarium", city: "Newport", state: "Kentucky", lat: "39.094625", long: "-84.497301", address: "1 Dave Cowens Dr"},
#   {name: "OdySea Aquarium", city: "Scottsdale", state: "Arizona", lat: "33.554732", long: "-111.877632", address: "9500 East Vía de Ventura A-100"}
# ])

# Tip.create!([
#   {aquarium_id: 13, note: "Go see the show!"},
#   {aquarium_id: 13, note: "During the show, go downstairs and watch from below."},
#   {aquarium_id: 10, note: "Spend as much time as you can at the whale shark exhibit."}
# ])



Fish.create!([
  {name: "Thompson's Surgeonfish", color: "blue, purple, yellow", description: "Named for Bishop Museum artist and technician John W. Thomson, Thompson's Surgeonfish (Fowler 1923), is a plankton-eating tang with a uniformly dark brownish-purple body and pale yellow accents highlighting its fins and tail.", family: "Acanthuridae", images: ["surgonfish.jpg"], aquarium_name: "McWane Science Center", aquarium_id: 1},
  {name: "Ocellaris Clownfish", color: "black, orange, white", description: "The Ocellaris Clownfish may be one of the aquarium industry's most popular marine fish. Its beautiful orange body dressed with white bands outlined in black instantly distinguishes the Ocellaris Clownfish.", family: "Pomacentridae", images: ["clownfish.jpg"], aquarium_name: "National Park Aquarium", aquarium_id: 2},
  {name: "Blue Spotted Puffer", color: "Black, Tan, White", description: "The Blue Spotted Puffer may also be called the Blue Dot Toby or Blue Dot Sharp-nosed Puffer. Members of the Canthigaster genus are called Sharp-nosed Puffers or Tobies. The Blue Spotted Puffer Canthigaster solandri and the Papuan Toby Puffer Canthigaster papua have very similar characteristics. The lack of orange coloration around the mouth of the Blue Spotted Puffer Canthigaster solandri distinguishes these two puffers. The Blue Spotted Puffer lacks pelvic fins, but has learned to use the pectoral fins to move about the aquarium.", family: "Tetraodontidae", images: ["blue_spotted_puffer.jpeg"], aquarium_name: "McWane Science Center", aquarium_id: 3},
  {name: "Emperor Angelfish", color: "black, blue, white, yellow", description: "The adult Emperor Angelfish, also called the Imperator Angelfish, has a bold, blue body covered with bright yellow horizontal stripes culminating in a bright yellow to orange caudal fin. A striking blue-black mask covers the eyes and a similarly-colored vertical band extends from the pectoral fin two-thirds of the way up the body. This band is highlighted in a sapphire-blue in front, and bright yellow, caudally. The mouth is white.", family: "Pomacanthidae", images: ["angelfish.jpeg"], aquarium_name: "Aquarium of the Bay", aquarium_id: 4},
  {name: "Blue Tang", color: "blue", description: "The Blue Tang boasts a vibrant electric blue body dressed with bold black markings. In fact, the black that begins at the eyes, traces the dorsal line down to the tail, and circles back above the pectoral fin to create a unique shape reminiscent of a painter's palette", family: "Acanthuridae", images: ["Blue_Tang.jpg"], aquarium_name: "Monterey Bay Aquarium", aquarium_id: 5},
  {name: "Mombasa Lionfish", color: "brown, red, tan", description: "The Mombasa Lionfish originates from the Indian Ocean, and is infrequently exported from East Africa, Maldives, and Sri Lanka. These fishes frequent deeper water and can be found on offshore reefs and reef slopes varying in depth from 50-130 feet. The spines on the dorsal, anal fins of the Mombasa Lionfish are venomous.", family: "Scorpaenidae", images: ["lionfish.jpg"], aquarium_name: "Downtown Aquarium", aquarium_id: 6}
])

Image.create!([
  {fish_id: 1, url: "http://3.bp.blogspot.com/-Z25Hb5Hp1eY/TsJFyhcn4XI/AAAAAAAACLg/NKgzeU75T3o/s1600/Blue+Tang5.jpg"},
  {fish_id: 2, url: "https://www.petsolutions.com/images/Products/117200L.jpg"},
  {fish_id: 3, url: "https://cdn.shopify.com/s/files/1/0614/1237/products/emperor-angelfish-angel-fish-large-yourfishstore.jpeg?v=1496161724"},
  {fish_id: 4, url: "http://www.aquariumcreationsonline.net/images/antennatalion.jpg"}
])

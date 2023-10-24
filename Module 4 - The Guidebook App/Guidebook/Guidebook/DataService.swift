//
//  DataService.swift
//  Guidebook
//
//  Created by Svidt on 25/06/2023.
//

import Foundation

struct DataService {
    
    func getData() -> [City] {
        
        return [City(name: "Tokyo",
                     summary: "Tokyo serves as Japan's economic center and is the seat of both the Japanese government and the Emperor of Japan. Tokyo.",
                     imageName: "tokyo",
                     attractions: [
                        Attraction(name: "Tsukiji Outer Market",
                                   summary: "Tsukiji Market is a major tourist attraction for both domestic and overseas visitors in Tokyo. The area contains retail markets, restaurants, and associated restaurant supply stores.",
                                   longDescription: """
"Tsukiji Market (築地市場, Tsukiji shijō) is a major tourist attraction for both domestic and overseas visitors in Tokyo. The area contains retail markets, restaurants, and associated restaurant supply stores. Before 2018, it was the largest wholesale fish and seafood market in the world. The market opened on 11 February 1935 as a replacement for an older market that was destroyed in the 1923 Great Kantō earthquake. It was closed on 6 October 2018, with wholesale operations moving to the new Toyosu Market.

Located in Tsukiji in central Tokyo between the Sumida River and the upmarket Ginza shopping district, the inner wholesale market was only open to the trade and did not allow access to visitors.
""",
                                   imageName: "tsukiji", latLong: "35.66518913611479, 139.76982702573392"),
                        
                        Attraction(name: "Sensō-ji",
                                   summary: "Sensō-ji is an ancient Buddhist temple located in Asakusa, Tokyo, Japan. It is Tokyo's oldest temple, and one of its most significant..",
                                   longDescription: """
Sensō-ji (浅草寺, officially Kinryū-zan Sensō-ji (金龍山浅草寺), also known as Asakusa Kannon (浅草観音)) is an ancient Buddhist temple located in Asakusa, Tokyo, Japan. It is Tokyo's oldest temple, and one of its most significant. Formerly associated with the Tendai sect of Buddhism, it became independent after World War II. It is dedicated to Kannon, the bodhisattva of compassion, and is the most widely visited religious site in the world with over 30 million visitors annually. Adjacent to the temple is a five-story pagoda, the Asakusa Shinto shrine, as well as many shops with traditional goods in the Nakamise-dōri.

The temple has a titanium tiled roof that maintains the historic image but is stronger and lighter.
""",
                                   imageName: "sensoji", latLong: "35.714974138640066, 139.79667675457168"),
                        
                        Attraction(name: "Shinjuku Gyo-en",
                                   summary: "Shinjuku Gyo-en is a large park and garden in Shinjuku and Shibuya, Tokyo, Japan. It was originally a residence of the Naitō family in the Edo period.",
                                   longDescription: """
The garden, which is 58.3 hectares in area with a circumference of 3.5 km, blends three distinct styles: a French Formal and English Landscape in the north and to the south a Japanese traditional. A traditional Japanese tea house can be found within the gardens. The garden is a favourite hanami (cherry-blossom viewing) spot, and large crowds can be present during cherry blossom season.

The garden has more than 20,000 trees, including approximately 1,500 cherry trees which bloom from late March (Shidare or Weeping Cherry) to early April (Somei or Tokyo Cherry), and on to late April (Kanzan Cherry). Other trees found here include the majestic Himalayan cedars, which soar above the rest of the trees in the park, tulip trees, cypresses, and plane trees, which were first planted in Japan in the Imperial Gardens.

Horticulture work has been happening in the garden greenhouses since 1892. The present greenhouse, built in the 1950s has a stock of over 1,700 tropical and subtropical plant species on permanent display.
""",
                                   imageName: "shinjukugyoen", latLong: "35.68512626065214, 139.71080566797045"),
                        
                        Attraction(name: "Ghibli Museum",
                                   summary: "The Ghibli Museum is a museum showcasing the work of the Japanese animation studio Studio Ghibli.",
                                   longDescription: """
The Ghibli Museum (三鷹の森ジブリ美術館, Mitaka no Mori Jiburi Bijutsukan, Mitaka Forest Ghibli Museum) is a museum showcasing the work of the Japanese animation studio Studio Ghibli. It is located in Inokashira Park in Mitaka, a western city of Tokyo, Japan. The museum combines features of a children's museum, technology museum, and a fine arts museum, and is dedicated to the art and technique of animation. Features include a replica of the Catbus from My Neighbor Totoro (1988), a café, bookstore, rooftop garden, and a theater for exclusive short films by Studio Ghibli.

On the bottom floor is an exhibit room showing the history and science of animation, including a three-dimensional zoetrope named "Bouncing Totoro", with models of characters from My Neighbor Totoro (1988). On the first floor is a mock-up of an animation studio. Called "Where a Film is Born," the five-room exhibit is meant to showcase the creative process of an animation filmmaker such as illustration techniques. Packed with books and toys, the room also displays drawings and illustrations that cover the walls. Another exhibit demonstrates the process of creating an animated film, with sketches, storyboarding, keyframing, cleanup, coloring and background painting.
""",
                                   imageName: "ghibli", latLong: "35.696794229887736, 139.57038850594148")
                     ]
                    ),
                City(name: "Rome",
                             summary: "Rome is the capital city of Italy. It is also the capital of the Lazio region, the centre of the Metropolitan City of Rome, and a special comune named Comune di Roma Capitale.",
                             imageName: "rome",
                             attractions: [
                                Attraction(name: "Pantheon",
                                           summary: "The Pantheon is a former Roman temple and, since 609 AD, a Catholic church in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.",
                                           longDescription: """
        The Pantheon from Greek is a former Roman temple and, since 609 AD, a Catholic church (Basilica di Santa Maria ad Martyres or Basilica of St. Mary and the Martyrs) in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus (27 BC – 14 AD). It was rebuilt by the emperor Hadrian and probably dedicated c. 126 AD. Its date of construction is uncertain, because Hadrian chose not to inscribe the new temple but rather to retain the inscription of Agrippa's older temple, which had burned down.
        """,
                                           imageName: "pantheon", latLong: "41.898762500696236, 12.476915812472798")
                             ]),
                City(name: "Paris",
                             summary: "Paris, France's capital, is a major European city and a global center for art, fashion, gastronomy and culture. Its 19th-century cityscape is crisscrossed by wide boulevards and the River Seine.",
                             imageName: "paris",
                             attractions: [
                                Attraction(name: "Louvre Museum",
                                           summary: "The Louvre, or the Louvre Museum is a national art museum in Paris, France.",
                                           longDescription: """
        The Louvre or the Louvre Museum is a national art museum in Paris, France. A central landmark of the city, it is located on the Right Bank of the Seine in the city's 1st arrondissement (district or ward) and home to some of the most canonical works of Western art, including the Mona Lisa and the Venus de Milo. The museum is housed in the Louvre Palace, originally built in the late 12th to 13th century under Philip II. Remnants of the Medieval Louvre fortress are visible in the basement of the museum. Due to urban expansion, the fortress eventually lost its defensive function, and in 1546 Francis I converted it into the primary residence of the French Kings.
        """,
                                           imageName: "louvre", latLong: "48.860752239687095, 2.337686912770478")
                             ]),
                City(name: "London",
                             summary: "London, the capital of England and the United Kingdom, is a 21st-century city with history stretching back to Roman times.",
                             imageName: "london",
                             attractions: [
                                Attraction(name: "Buckingham Palace",
                                           summary: "Buckingham Palace is a London royal residence and the administrative headquarters of the monarch of the United Kingdom. Located in the City of Westminster, the palace is often at the centre of state occasions and royal hospitality.",
                                           longDescription: """
        Buckingham Palace is a London royal residence and the administrative headquarters of the monarch of the United Kingdom. Located in the City of Westminster, the palace is often at the centre of state occasions and royal hospitality. It has been a focal point for the British people at times of national rejoicing and mourning.

        Originally known as Buckingham House, the building at the core of today's palace was a large townhouse built for the Duke of Buckingham in 1703 on a site that had been in private ownership for at least 150 years. It was acquired by King George III in 1761 as a private residence for Queen Charlotte and became known as The Queen's House. During the 19th century it was enlarged by architects John Nash and Edward Blore, who constructed three wings around a central courtyard. Buckingham Palace became the London residence of the British monarch on the accession of Queen Victoria in 1837.
        """,
                                           imageName: "buckingham", latLong: "51.50148418749087, -0.1410746109020975")
                             ])
        ]
        
    }

    func getFileData() -> [City] {
        
        // Get the filepath to Data.json
        if let url = Bundle.main.url(forResource: "Data", withExtension: "json") {
            
            do {
                // Read the file and turn it into data
                let data = try Data(contentsOf: url)

                // Parse data into Swift instances
                let decoder = JSONDecoder()
                
                do {
                    let cities = try decoder.decode([City].self, from: data)
                    return cities
                    
                } catch {
                    print("Couldn't parse the JSON: \(error)")
                    
                }
                
            } catch {
                print("Coulnd't read the file: \(error)")
            }
            
            
        }
        
        return [City]()
        
    }
}



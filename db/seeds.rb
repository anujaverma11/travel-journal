User.create(first_name: "Anuja",
            last_name: "verma",
            email: "some@somthing.com",
            username: "anujaverma11",
            birth_date: "03/02/2007",
            address1: "55 Claremont Avenue",
            address2: "additional line",
            city: "Redwood City",
            state: "CA",
            country: "USA",
            zipcode: 94062,
            password: "password")

User.create(first_name: "Brenda",
            last_name: "xyz",
            email: "xyz@somthing.com",
            username: "xyzabc11",
            birth_date: "03/02/2007",
            address1: "55 Claremont Avenue",
            address2: "additional line",
            city: "Redwood City",
            state: "CA",
            country: "USA",
            zipcode: 94062,
            password: "password")

Journal.create(journal_name: "San Francisco",
               user_id: 1)

Journal.create(journal_name: "Puerto Rico",
               user_id: 1)

Journal.create(journal_name: "Just another Weekend",
               user_id: 1)

Visitedplace.create(journal_id: 1,
                    place_name: "Golden gate",
                    location: "San Francisco, California",
                    place_description: "The Golden Gate is the North American strait that connects San Francisco Bay to the Pacific Ocean. It is defined by the headlands of the San Francisco Peninsula and the Marin Peninsula, and, since 1937, has been spanned by the Golden Gate Bridge.",
                    visited_date: "10/08/20",
                    visited_time: "10:00 AM")

Visitedplace.create(journal_id: 1,
                    place_name: "Fisherman's Wharf",
                    location: "San Francisco, California",
                    place_description: "Fisherman's Wharf is a neighborhood and popular tourist attraction in San Francisco, California. It roughly encompasses the northern waterfront area of San Francisco from Ghirardelli Square or Van Ness Avenue east to Pier 35 or Kearny Street. The F Market streetcar runs through the area, the Powell-Hyde cable car lines runs to Aquatic Park, at the edge of Fisherman's Wharf, and the Powell-Mason cable car line runs a few blocks away.",
                    visited_date: "10/08/20",
                    visited_time: "11:00 AM")

Fact.create(visitedplace_id: 1,
            fact_name: "Climate",
            fact_description: "The Golden Gate is often shrouded in fog, especially during the summer. Heat generated in the California Central Valley causes air there to rise, creating a low pressure area that pulls in cool, moist air from over the Pacific Ocean. The Golden Gate forms the largest break in the hills of the California Coast Range, allowing a persistent, dense stream of fog to enter the bay there.")
Fact.create(visitedplace_id: 1,
            fact_name: "In local culture",
            fact_description: "The name Golden Gate holds an important connotation in the Bay Area as a reference point for the region, and is attached to the bridge that spans the strait, a large park in San Francisco, and various local establishments.")
Fact.create(visitedplace_id: 1,
            fact_name: "Golden Gate Park",
            fact_description: "Golden Gate Park, located in San Francisco, California, is a large urban park consisting of 1017 acres (4.1 km², 1.6 mi²) of public grounds. Configured as a rectangle, it is similar in shape but 174 acres (0.7 km², 0.27 mi²) larger than Central Park in New York, to which it is often compared. With 13 million visitors annually, Golden Gate is the fifth most visited city park in The United States after Central Park in New York City, Lincoln Park in Chicago, and Balboa Park and Mission Bay Park in San Diego.[7] It is not adjacent to the Golden Gate strait.")
Picture.create(visitedplace_id: 1,
               picture_name: "https://s3-us-west-1.amazonaws.com/traveljournal1/Ggb_by_night.jpg")
Picture.create(visitedplace_id: 2,
               picture_name: "https://s3-us-west-1.amazonaws.com/traveljournal1/FishermansWharf_650x370.jpg")
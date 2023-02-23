//
//  Look.swift
//  lookbook-app
//
//  Created by Angela Slinker on 2/23/23..
//

import Foundation

struct Look: Identifiable, Codable, Hashable {
    var id: Int
    var name: String
    var location: String
    var lookArtString: String
    var publishDate: String
    var Description: String
}


let looklist: [Look] = [
    .init(id: 1, name: "Fall 2022", location: "New York City", lookArtString: "NYCFall", publishDate:"Nov, 2022", Description: "Alexander Wang leather jacket, Dior knit sweater"),
    .init(id: 2, name: "Winter 2022", location: "Los Angeles", lookArtString: "LAWinter", publishDate: "December, 2022", Description: "Balmain Paris black tube top, Vintage pleated pants, Vintage Dior purse"),
    .init(id: 3, name:"Spring 2023", location: "Los Angeles", lookArtString: "LASpring", publishDate: "Mar 25, 2023", Description: "With Jean white top and skirt set, Marc Jacobs purse"),
    .init(id: 4, name: "Summer 2023", location: "New York City", lookArtString: "NYCSummer", publishDate: "June, 2023", Description: "Vintage Dior sweater vest, Djerf Avenue skirt, Dior purse")
]

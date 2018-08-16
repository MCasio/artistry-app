//
//  Artist.swift
//  Artisty
//
//  Created by Mahmoud Mohammed on 8/16/18.
//  Copyright © 2018 Mahmoud Mohammed. All rights reserved.
//

import Foundation
import UIKit

    // MARK: - Artist Model
struct Artist: Decodable {
    let name: String?
    let bio: String?
    let image: String?
    let works: [Work]
}

struct Work: Decodable {
    let title: String?
    let image: String?
    let info: String?
}

//     MARK: - Parsing JSON
func parsingJSONFromBundel() -> [Artist] {
    var artists = [Artist]()
    
    guard let url = Bundle.main.url(forResource: "artists", withExtension: "json") else { return artists }
        do {
            let data = try! Data(contentsOf: url)
            artists = try JSONDecoder().decode([Artist].self, from: data)
        } catch {
            debugPrint("Couldn`t parse JSON:", error.localizedDescription)
        }
    return artists
}





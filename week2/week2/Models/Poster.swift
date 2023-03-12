//
//  Poster.swift
//  week2
//
//  Created by Ruramaimunashe Mutefura on 3/11/23.
//

import Foundation

struct PosterSearchResponse: Decodable {
    let results: [Poster]
}

struct Poster: Decodable {
    let backdrop_path: String
}

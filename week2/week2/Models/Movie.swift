//
//  ViewController.swift
//  week2
//
//  Created by Ruramaimunashe Mutefura on 3/2/23.
//

import Foundation

//  Pt 1 - Create a Track model struct
struct Movie: Decodable{
    let original_title: String
    let overview: String
    let backdrop_path: String
    let vote_average: Double
    let vote_count: Int
    let popularity: Double
}

struct MoviesResponse: Decodable{
    let results: [Movie]
}
//  Pt 1 - Create an extension with a mock tracks static var
//extension Movie {
//
//    /// An array of mock tracks
//    static var mockMovies: [Movie]  = [
//        Movie(title: "Knock at the Cabin",
//              description: "While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost.",
//              artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w500//hegMHNsxYGlGgVgaGz9FqxPqImr.jpg")!,
//              voteAverage: 6.5,
//             voteCount: 639,
//              popularity: 4083.809),
//        Movie(title: "Black Panther: Wakanda Forever",
//              description: "Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death. As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda.",
//              artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w500//xDMIl84Qo5Tsu62c9DGWhmPI67A.jpg")!,
//              voteAverage: 7.4,
//             voteCount: 3684,
//              popularity: 2782.773),
//        Movie(title: "Puss in Boots: The Last Wish",
//              description: "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.",
//              artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w500//b1Y8SUb12gPHCSSSNlbX4nB3IKy.jpg")!,
//              voteAverage: 8.5,
//             voteCount: 4128,
//              popularity: 2378.726),
//        Movie(title: "Plane",
//              description: "After a heroic job of successfully landing his storm-damaged aircraft in a war zone, a fearless pilot finds himself between the agendas of multiple militias planning to take the plane and its passengers hostage.",
//              artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w500//irwQcdjwtjLnaA0iErabab9PrmG.jpg")!,
//              voteAverage: 6.9,
//             voteCount: 707,
//              popularity: 2266.231),
//        Movie(title: "Little Dixie",
//              description: "Erstwhile Special Forces operative Doc Alexander is asked to broker a truce with the Mexican drug cartel in secrecy. When Oklahoma Governor Richard Jeffs celebrates the execution of a high-ranking cartel member on TV, his Chief of Staff and Doc inform him about the peace he just ended. But it’s too late, as Cuco, the cartel’s hatchet man, has set his vengeful sights on Doc’s daughter Dixie.",
//              artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w500//cmWTZj9zzT9KFt3XyL0gssL7Ig8.jpg")!,
//              voteAverage: 6.3,
//             voteCount: 29,
//              popularity: 1565.914),
//        ]
//    // We can now access this array of mock tracks anywhere like this:
//    // let tracks = Tracks.mockTracks
//}

// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}

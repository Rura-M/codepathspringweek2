//
//  DetailViewController.swift
//  week2
//
//  Created by Ruramaimunashe Mutefura on 3/2/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    
    @IBOutlet weak var movieNameLabel: UILabel!
  
    @IBOutlet weak var movieImageLabel: UIImageView!
    
    @IBOutlet weak var movieVotesLabel: UILabel!
    @IBOutlet weak var movieVoteAverageLabel: UILabel!
    @IBOutlet weak var moviePopularityLabel: UILabel!
    @IBOutlet weak var movieOverviewLabel: UITextView!
    
    // A property to store the track object.
    // We can set this property by passing along the track object associated with the track the user tapped in the table view.
    var movie: Movie!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Load the image located at the `artworkUrl100` URL and set it on the image view.
//        Nuke.loadImage(with: movie.artworkUrl100, into: trackImageView)

        // Set labels with the associated track values.
        movieNameLabel.text = movie.title
        movieVotesLabel.text = String(movie.voteCount) + " Votes"
        movieOverviewLabel.text = movie.description
        moviePopularityLabel.text = String(movie.popularity) + " Popularity"
        movieVoteAverageLabel.text = String(movie.voteAverage) + " Vote Average"
        Nuke.loadImage(with: movie.artworkUrl100, into: movieImageLabel)
        
        // Create a date formatter to style our date and convert it to a string
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateStyle = .medium
//        releaseDateLabel.text = dateFormatter.string(from: track.releaseDate)
//
//        // Use helper method to convert milliseconds into `mm:ss` string format
//        durationLabel.text = formattedTrackDuration(with: track.trackTimeMillis)

    }

}

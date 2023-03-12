//
//  MovieCell.swift
//  week2
//
//  Created by Ruramaimunashe Mutefura on 3/2/23.
//

import UIKit
import Nuke

class MovieCell: UITableViewCell {


    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieOverviewLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    /// Configures the cell's UI for the given track.
    func configure(with movie: Movie) {
        movieNameLabel.text = movie.original_title
        movieOverviewLabel.text = movie.overview
        let backdropImage = URL(string: "https://image.tmdb.org/t/p/w500/" + movie.backdrop_path)
        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: backdropImage!, into: movieImageView)
        
    }

}

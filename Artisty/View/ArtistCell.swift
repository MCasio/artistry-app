//
//  ArtistCell.swift
//  Artisty
//
//  Created by Mahmoud Mohammed on 8/16/18.
//  Copyright © 2018 Mahmoud Mohammed. All rights reserved.
//

import UIKit

class ArtistCell: UITableViewCell {

    @IBOutlet weak var artistImage: UIImageView!
    @IBOutlet weak var artistName: UILabel!
    @IBOutlet weak var artistBio: UILabel!
    
    
    func configureCellFor(artist: Artist) {
        artistName.text = artist.name
        artistImage.image = UIImage(named: artist.image!)
        artistBio.text = artist.bio
        
    }
    
}

//
//  ArtistWorkCell.swift
//  Artisty
//
//  Created by Mahmoud Mohammed on 8/16/18.
//  Copyright © 2018 Mahmoud Mohammed. All rights reserved.
//

import UIKit

class ArtistWorkCell: UITableViewCell {

    @IBOutlet weak var workImage: UIImageView!
    @IBOutlet weak var workName: UILabel!

    @IBOutlet weak var workDescriotion: UILabel!
    
    
    
    func configureCell(artistWork: Work) {
            workImage.image = UIImage(named: artistWork.image!)
            workName.text = artistWork.title
            workDescriotion.text = artistWork.info
    }

}

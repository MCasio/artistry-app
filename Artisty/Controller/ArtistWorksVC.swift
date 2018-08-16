//
//  ArtistWorksVC.swift
//  Artisty
//
//  Created by Mahmoud Mohammed on 8/16/18.
//  Copyright © 2018 Mahmoud Mohammed. All rights reserved.
//

import UIKit

class ArtistWorksVC: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var artist: Artist!
    var works = [Work]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        works = artist.works
        navigationItem.title = artist.name
        
        tableView.delegate = self
        tableView.dataSource = self
       
    }
    
  
}

extension ArtistWorksVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return works.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "workCell") as? ArtistWorkCell else { return UITableViewCell() }
        cell.configureCell(artistWork: works[indexPath.row])
        return cell
    }
}

//
//  ViewController.swift
//  Artisty
//
//  Created by Mahmoud Mohammed on 8/16/18.
//  Copyright © 2018 Mahmoud Mohammed. All rights reserved.
//

import UIKit

class ArtistyVC: UIViewController, UITableViewDelegate {
    
    var artists = [Artist]()
    
    // MARK: - UI Outlets

    @IBOutlet weak var tableView: UITableView!
    
    
    
    // MARK: - life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        artists = parsingJSONFromBundel()        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toWorksVC" {
            let artistWorksVC = segue.destination as? ArtistWorksVC
            artistWorksVC?.artist = sender as? Artist
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedArtist = artists[indexPath.row]
        performSegue(withIdentifier: "toWorksVC", sender: selectedArtist)
    }
    
}

// MARK - Extension
extension ArtistyVC: UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return artists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "artistCell") as? ArtistCell else { return UITableViewCell() }
        cell.configureCellFor(artist: artists[indexPath.row])
        return cell
    }
}















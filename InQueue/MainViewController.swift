//
//  MainViewController.swift
//  InQueue
//
//  Created by Jesse Bartola on 7/9/17.
//  Copyright © 2017 queue. All rights reserved.
//

import UIKit

struct SongCell {
    var artist: String
    var title: String
    var upvotes: Int
    var downvotes: Int
    var artwork: UIImage
}

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var songTableView: UITableView!
    
    var songDataArray = [SongCell]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setNavigationBar()
        self.view.backgroundColor = COLOR_SCHEME[0]

        
        songTableView.delegate = self
        songTableView.dataSource = self
        
        songDataArray = [SongCell(artist: "Drake", title: "Headlines", upvotes: 34, downvotes: 12, artwork: #imageLiteral(resourceName: "drake_album")),
                         SongCell(artist: "Jay-Z", title: "Off That (feat. Drake)", upvotes: 23, downvotes: 18, artwork: #imageLiteral(resourceName: "jay_z_blueprint3")),
                         SongCell(artist: "Baby", title: "Justin Bieber", upvotes: 12, downvotes: 993, artwork: #imageLiteral(resourceName: "baby_bieber"))]
    }
    
    func setNavigationBar() {
        let screenSize: CGRect = UIScreen.main.bounds
        let navBar = UINavigationBar(frame: CGRect(x: 0, y: 18, width: screenSize.width, height: 44))
        let navItem = UINavigationItem(title: "Up Next")
        
        // Create bar button items
        let addSongItem = UIBarButtonItem(title: "Song+", style: .plain, target: nil, action: #selector(addSong))
        let exitItem = UIBarButtonItem(title: "Exit", style: .plain, target: nil, action: #selector(leaveSession))
        
        navItem.rightBarButtonItem = addSongItem
        navItem.leftBarButtonItem = exitItem
        
        navBar.setItems([navItem], animated: false)
        self.view.addSubview(navBar)
    }
    
    func addSong() {
        print("Adding song...")
    }
    
    func leaveSession() {
        print("Leaving session...")
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songDataArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Check which nib we want to population our tableview with
            
        let cell = Bundle.main.loadNibNamed("SongTableViewCell", owner: self, options: nil)?.first as! SongTableViewCell
        
        cell.songTitleLabel.text = songDataArray[indexPath.row].title
        cell.artistTitleLabel.text = songDataArray[indexPath.row].artist
        cell.albumArtImageView.image = songDataArray[indexPath.row].artwork
        cell.upvoteLabel.text = String(songDataArray[indexPath.row].upvotes)
        cell.downvoteLabel.text = String(songDataArray[indexPath.row].downvotes)
        
        return cell
        
    }
    
    // Set a fixed height on each table view row (cell)
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

    
    
    
    
    
}

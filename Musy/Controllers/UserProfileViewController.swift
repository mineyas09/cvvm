//
//  UserProfileViewController.swift
//  Musy
//
//  Created by Yasmine Naouar on 11/28/18.
//  Copyright © 2018 Yasmine Naouar. All rights reserved.
//

import UIKit

class UserProfileViewController: UIViewController, UITabBarDelegate, UITableViewDataSource {

    

    @IBOutlet weak var nbFollowing: UILabel!
    @IBOutlet weak var nbFollowers: UILabel!
    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var UserName: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBAction func btnLogout(_ sender: Any) {
    }
    
    let tabImg = ["like","like","lik","lik"]
    let tabTxt = ["Favorite Tracks", "Playlists","Videos", "Settings"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "musicCell")
        
        let contentView = cell?.viewWithTag(0)
        let img = contentView?.viewWithTag(1) as! UIImageView
        let txt = contentView?.viewWithTag(2) as! UILabel
        img.image = UIImage(named: tabImg[indexPath.row])
        txt.text = tabTxt[indexPath.row]
        
        return cell!
    }

}

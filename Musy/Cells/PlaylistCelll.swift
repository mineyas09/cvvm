//
//  PlaylistCellCollectionViewCell.swift
//  Musy
//
//  Created by Yasmine Naouar on 11/28/18.
//  Copyright © 2018 Yasmine Naouar. All rights reserved.
//

import UIKit

class PlaylistCell: CollectionViewCell {
 
    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var playlistNameLabel: UILabel!
    
    @IBOutlet weak var nbtacksLabel: UILabel!
    
    override var bounds: CGRect {
        didSet {
            self.layoutIfNeeded()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.playlistNameLabel.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        self.playlistNameLabel.textColor = .black
        self.playlistNameLabel.textAlignment = .center
        
        self.imageView.layer.masksToBounds = true
    }
    
    override func reset() {
        super.reset()
        
        self.playlistNameLabel.text = nil
        self.imageView.image = nil
        self.nbtacksLabel = nil
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
       // self.setCircularImageView()
    }
    
   func setCircularImageView() {
        self.imageView.layer.cornerRadius = CGFloat(roundf(Float(self.imageView.frame.size.width / 2.0)))
    }
}

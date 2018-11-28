//
//  HomeCollectionViewController.swift
//  Musy
//
//  Created by Yasmine Naouar on 11/27/18.
//  Copyright © 2018 Yasmine Naouar. All rights reserved.
//

import UIKit



class HomeViewController: CollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "HOME"
        
        
        let grid = Grid(columns: 4, margin: UIEdgeInsets(all: 8))
        
        let artistSection = CollectionViewSection(items: [self.createHorizontal()])
        artistSection.header = HeaderViewModel("Top metal artists")

        self.source  = CollectionViewSource(grid: grid, sections: [artistSection])
        self.collectionView.reloadData()

  
    }
    func createHorizontal() -> CollectionViewModel {
        let artists = [
            Artist(name: "August Burns Red", picture: "a01"),
            Artist(name: "Breakdown of Sanity", picture:"a02"),
            Artist(name: "Currents", picture: "a03"),
            Artist(name: "Make Them Suffer", picture:"a04"),
            Artist(name: "Parkway Drive", picture: "a05"),
            Artist(name: "The Haunted", picture: "a06"),
            Artist(name: "Upon a Burning Body", picture:"a07"),
            Artist(name: "Whitechapel", picture:"a08"),
            ]
        
        let items = artists.map { artist -> HorizontalArtistViewModel in
            let viewModel = HorizontalArtistViewModel(artist)
            viewModel.delegate = self as? ArtistViewModelDelegate
            return viewModel
        }
        
        let grid = Grid(columns: 4, margin: UIEdgeInsets(all: 8))
        let section = CollectionViewSection(items: items)
        let source  = CollectionViewSource(grid: grid, sections: [section])
        
        return CollectionViewModel(source)
        
        
    }
}

    



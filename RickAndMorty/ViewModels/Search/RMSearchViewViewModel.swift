//
//  RMSearchViewViewModel.swift
//  RickAndMorty
//
//  Created by mohamed rafik on 16/11/2024.
//

import Foundation

// Responsibilities
// - show search results
// - show no results view
// - kick off API requests

final class RMSearchViewViewModel {
    let config: RMSearchViewController.Config
    
    //MARK: - Init
    
    init(config: RMSearchViewController.Config) {
        self.config = config
    }
    
}

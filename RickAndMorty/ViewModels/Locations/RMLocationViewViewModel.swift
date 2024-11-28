//
//  RMLocationViewViewModel.swift
//  RickAndMorty
//
//  Created by mohamed rafik on 15/11/2024.
//

import Foundation

protocol RMLocationViewViewModelDelegate: AnyObject {
    func didFetchInialLocation()
}

final class RMLocationViewViewModel {
    
    weak var delegate: RMLocationViewViewModelDelegate?
    
    private var locations: [RMLocation] = []
    
    private var apiInfo: RMGetAllLocationsResponse.Info?
    
    private var cellViewModels: [String] = []
    
// MARK: - Init
    
    init() {}
    
    public func fetchLocation() {
        RMService.shared.execute(.listLocationRequset,
                                 expecting: RMGetAllLocationsResponse.self) { result in
            switch result {
            case .success(let model):
                self.apiInfo = model.info
                self.locations = model.results
                DispatchQueue.main.async {
                    self.delegate?.didFetchInialLocation()
                }
            case .failure(let error):
                break
            }
        }
    }
    
    private var hasMoreResults: Bool {
        return false
    }
    
    
}

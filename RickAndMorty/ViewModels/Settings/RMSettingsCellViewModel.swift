//
//  RMSettingsCellViewViewModel.swift
//  RickAndMorty
//
//  Created by mohamed rafik on 14/11/2024.
//

import Foundation
import UIKit

struct RMSettingsCellViewModel {
    public var image: UIImage? {
        return type.iconImage
    }
    
    public var title: String {
        return type.displayTitle
    }
    
    private let type: RMSettingsOption
    
    init(type: RMSettingsOption) {
        self.type = type
    }
}

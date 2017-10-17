//
//  MainViewModel.swift
//  ArchitectureTest
//
//  Created by Ross Mooney on 10/16/17.
//  Copyright © 2017 Comprendo. All rights reserved.
//

import Foundation

enum MainScreenError:Error {
    case noInternetConnection
    case unknownError
    case badData
}

enum MainState {
    case loading
    case complete
    case error(MainScreenError)
}

class MainViewModel {
    var state:MainState = .loading
    
    
}

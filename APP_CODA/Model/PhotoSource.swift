//
//  PhotoSource.swift
//  APP_CODA
//
//  Created by Manish  Sharma on 28/03/22.
//

import Foundation
import UIKit

enum PhotoSource: Identifiable {
    
    case photoLibrary
    case camera
    
    var id: Int {
        hashValue
    }
}

//
//  ThemeProtocol.swift
//  ThemeChange
//
//  Created by iApp on 12/07/21.
//

import Foundation
import UIKit

protocol ThemeProtocol {
    
    var backgroundColor: UIColor{get}
    var textColor: UIColor{get}
    var cellViewColor: UIColor{get}
    var navigationColor: UIColor{get}
    var isLightTheme: Bool{get}
    var navigationTitleColor: UIColor{get}
    
    
}

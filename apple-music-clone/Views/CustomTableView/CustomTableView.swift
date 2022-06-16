//
//  CustomTableView.swift
//  apple-music-clone
//
//  Created by Rogério Tavares on 13/06/22.
//

import UIKit

class CustomTableView: UITableView {

    init() {
        super.init(frame: .zero, style: .plain)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

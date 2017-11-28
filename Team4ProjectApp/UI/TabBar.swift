//
//  TabBar.swift
//  Team4ProjectApp
//
//  Created by Logan Harvell on 11/22/17.
//  Copyright © 2017 Logan Harvell. All rights reserved.
//

import UIKit

class TabBar: UITabBar {

  private func setup() {
    backgroundColor = UIColor.gray
  }

  override init(frame: CGRect) {
    super.init(frame: frame)
    setup()
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setup()
  }
}

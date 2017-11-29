//
//  MovieTVEntryView.swift
//  Team4ProjectApp
//
//  Created by Logan Harvell on 11/28/17.
//  Copyright © 2017 Logan Harvell. All rights reserved.
//

import UIKit

class MovieTVEntryView: UIView {
  
  var titleLabel: UILabel
  var toggleSwitch: UISwitch
  
  private func setup() {
    backgroundColor = UIColor.lightGray
    layer.borderWidth = 1
    layer.borderColor = UIColor.black.cgColor
    self.addSubview(titleLabel)
  }
  
  override init(frame: CGRect) {
    titleLabel = UILabel(frame: frame)
    titleLabel.text = "Title"
    toggleSwitch = UISwitch(frame: frame)
    toggleSwitch.isOn = false
    super.init(frame: frame)
    setup()
  }
  
  required init?(coder aDecoder: NSCoder) {
    titleLabel = UILabel(coder: aDecoder)!
    titleLabel.text = "Title"
    toggleSwitch = UISwitch(coder: aDecoder)!
    toggleSwitch.isOn = false
    super.init(coder: aDecoder)
    setup()
  }

}

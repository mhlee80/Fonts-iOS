//
//  ViewController.swift
//  Fonts
//
//  Created by mhlee on 2020/03/17.
//  Copyright © 2020 mhlee. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

  private lazy var systemFontLabel: UILabel = {
    let v = UILabel()
    v.backgroundColor = .white
    v.textColor = .black
    v.font = .systemFont(ofSize: 24)
    v.text = "System 안녕하세요 Hello 12345"
    return v
  }()
  
  private lazy var latoFontLabel: UILabel = {
    let v = UILabel()
    v.backgroundColor = .white
    v.textColor = .black
    v.font = .systemFont(ofSize: 24)
    v.text = "Lato 안녕하세요 Hello 12345"
    return v
  }()
  
  private lazy var notoSansFontLabel: UILabel = {
    let v = UILabel()
    v.backgroundColor = .white
    v.textColor = .black
    v.font = .systemFont(ofSize: 24)
    v.text = "Noto Sans 안녕하세요 Hello 12345"
    return v
  }()
  
  private lazy var tableView: UITableView = {
    let v = UITableView()
    return v
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    view.backgroundColor = .white
  
    view.addSubview(tableView)
//    view.addSubview(systemFontLabel)
//    view.addSubview(latoFontLabel)
//    view.addSubview(notoSansFontLabel)
  
    tableView.snp.makeConstraints { make in
      make.top.left.bottom.right.equalTo(view.safeAreaLayoutGuide)
    }
    
//    latoFontLabel.snp.makeConstraints { make in
//      make.top.equalTo(systemFontLabel.snp.bottom)
//    }

    tableView.dataSource = self
    tableView.delegate = self
    
    for family: String in UIFont.familyNames
    {
        print("\(family)")
        for names: String in UIFont.fontNames(forFamilyName: family)
        {
               print("== \(names)")
        }
    }
  }
}

extension ViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 3
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell()
    cell.textLabel?.textColor = .black
    
    switch indexPath.row {
    case 0:
      cell.textLabel?.font = .systemFont(ofSize: 30)
      cell.textLabel?.numberOfLines = 2
      cell.textLabel?.text = "System\n안녕하세요 Hello 12345"
    case 1:
      cell.textLabel?.font = UIFont(name: "Lato-Regular", size: 30)
      cell.textLabel?.numberOfLines = 2
      cell.textLabel?.text = "Lato\n안녕하세요 Hello 12345"
    case 2:
      cell.textLabel?.font = UIFont(name: "NotoSansCJKkr-Regular", size: 30)
      cell.textLabel?.numberOfLines = 2
      cell.textLabel?.text = "Noto Sans\n안녕하세요 Hello 12345"
      
    default:
      break
    }

    return cell
  }
}

extension ViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 120
  }
}

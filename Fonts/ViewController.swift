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
  private lazy var tableView: UITableView = {
    let v = UITableView()
    return v
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    view.backgroundColor = .white

    view.addSubview(tableView)
  
    tableView.snp.makeConstraints { make in
      make.top.left.bottom.right.equalTo(view.safeAreaLayoutGuide)
    }
    
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
    return 10
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
    case 3:
      cell.textLabel?.font = UIFont(name: "Lato-Bold", size: 30)
      cell.textLabel?.numberOfLines = 2
      cell.textLabel?.text = "Lato Bold\n안녕하세요 Hello 12345"
    case 4:
      cell.textLabel?.font = UIFont(name: "NotoSansKR-Black", size: 30)
      cell.textLabel?.numberOfLines = 2
      cell.textLabel?.text = "NotoSansKR-Black\n안녕하세요 Hello 12345"
    case 5:
      cell.textLabel?.font = UIFont(name: "NotoSansKR-Bold", size: 30)
      cell.textLabel?.numberOfLines = 2
      cell.textLabel?.text = "NotoSansKR-Bold\n안녕하세요 Hello 12345"
    case 6:
      cell.textLabel?.font = UIFont(name: "NotoSansKR-Light", size: 30)
      cell.textLabel?.numberOfLines = 2
      cell.textLabel?.text = "NotoSansKR-Light\n안녕하세요 Hello 12345"
    case 7:
      cell.textLabel?.font = UIFont(name: "NotoSansKR-Medium", size: 30)
      cell.textLabel?.numberOfLines = 2
      cell.textLabel?.text = "NotoSansKR-Medium\n안녕하세요 Hello 12345"
    case 8:
      cell.textLabel?.font = UIFont(name: "NotoSansKR-Regular", size: 30)
      cell.textLabel?.numberOfLines = 2
      cell.textLabel?.text = "NotoSansKR-Regular\n안녕하세요 Hello 12345"
    case 9:
      cell.textLabel?.font = UIFont(name: "NotoSansKR-Thin", size: 30)
      cell.textLabel?.numberOfLines = 2
      cell.textLabel?.text = "NotoSansKR-Thin\n안녕하세요 Hello 12345"
      
    default:
      break
    }

    return cell
  }
}

//== NotoSansKR-Bold
//== NotoSansKR-Thin
//== NotoSansKR-Black
//== NotoSansKR-Light
//== NotoSansKR-Medium
//== NotoSansKR-Regular

extension ViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 120
  }
}

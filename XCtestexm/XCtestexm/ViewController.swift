//
//  ViewController.swift
//  XCtestexm
//
//  Created by sreekanth reddy iragam reddy on 4/15/17.
//  Copyright © 2017 com.sree.objc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var secondTabView: UITableView!
    @IBOutlet weak var firstTabView: UITableView!
    var myData:[String] = []
    var myData1:[String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
           firstTabView.delegate=self
             firstTabView.dataSource=self
        
        secondTabView.delegate=self
        secondTabView.dataSource=self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var loadtheData: UIButton!

    @IBAction func SecondButton(_ sender: Any) {
        
        myData1=["sree1","sravani1","bhargav1","anusha1","aarav1","vivin1"]
        
      secondTabView.reloadData()
        
        
        
    }
    @IBAction func ServiceData(_ sender: Any) {
        
        myData=["sree","sravani","bhargav","anusha","aarav","vivin"]
        
        
        firstTabView.reloadData()
        

        
        
    }
    
    @IBAction func gotoSecondVC(_ sender: Any) {
        
        
        
        let storyBoard1=UIStoryboard(name: "Main", bundle: nil)
        let secondVC=storyBoard1.instantiateViewController(withIdentifier: "Second")
        present(secondVC, animated: true, completion: nil)
        
        
    }
    
}

extension ViewController: UITableViewDelegate,UITableViewDataSource
{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if(tableView.isEqual(firstTabView)){
            
            return myData.count
            
        }else{
            
            return myData1.count
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
         if(tableView.isEqual(firstTabView)){
            var cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
            
           cell.textLabel?.text = myData[indexPath.row]
             return cell
            
         }else{
            
            var cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell1")
            
            cell.textLabel?.text = myData1[indexPath.row]
             return cell
            
        }
        
       
        
    }
    
    
    
    
    
    
    
    
    
    
}


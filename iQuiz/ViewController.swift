//
//  ViewController.swift
//  iQuiz
//
//  Created by Rachel Kipps on 10/31/15.
//  Copyright © 2015 Rachel Kipps. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let subjects = ["Mathematics", "Marvel Super Heroes", "Science"]
    let imageNames = ["math.png", "marvel.png", "science.png"]
    let descriptions = ["Add, subtract, multiply and divide.", "Up, up and away!", "Test your scientific knowledge."]

    
    @IBOutlet weak var quizTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quizTable.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.subjects.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.quizTable.dequeueReusableCellWithIdentifier("CategoryCell")! as UITableViewCell
        let row = indexPath.row
        
        let subjectLabel = cell.viewWithTag(10) as! UILabel
        subjectLabel.text = subjects[row]
        
        let subjectDescription = cell.viewWithTag(20) as! UILabel
        subjectDescription.text = descriptions[row]
        
        let img = cell.viewWithTag(30) as! UIImageView
        img.image = UIImage(named: imageNames[row])
        
        return cell
    }
    
    @IBAction func pressSettings(sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: "Settings", message: "Settings go here", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }


}


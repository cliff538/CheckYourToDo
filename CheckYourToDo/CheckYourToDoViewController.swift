//
//  CheckYourToDoViewController.swift
//  CheckYourToDo
//
//  Created by Cliff Gurske on 1/12/15.
//  Copyright (c) 2015 Cliff Gurske. All rights reserved.
//

import UIKit

class CheckYourToDoViewController: UITableViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	// Data Source Method. It is called "tableView - numberOfRowsInSection"
	override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		
		return 100
	}

	// Data Source Method. It is called "tableView - cellForRowAtIndexPath"
	override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		
		let cell = tableView.dequeueReusableCellWithIdentifier("ChecklistItem") as UITableViewCell
		
		let label = cell.viewWithTag(1000) as UILabel
		
		if indexPath.row % 5 == 0 {
			label.text = "Walk the dog"
		} else if indexPath.row % 5 == 1 {
			label.text = "Brush my teeth"
		} else if indexPath.row % 5 == 2 {
			label.text = "Learn iOS Development"
		} else if indexPath.row % 5 == 3 {
			label.text = "Soccer Practice"
		} else if indexPath.row % 5 == 4 {
			label.text = "Date night"
		}
		
		return cell
	}
	
	override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
		
		if let cell = tableView.cellForRowAtIndexPath(indexPath) {
			if cell.accessoryType == .None {
				cell.accessoryType = .Checkmark
			} else {
				cell.accessoryType = .None
			}
		}
		
		tableView.deselectRowAtIndexPath(indexPath, animated: true)
	
	}
	
	func configureCheckmarkForCell(cell: UITableViewCell, indexPath: NSIndexPath) {
		
		var isChecked = false
		
		if indexPath.row == 0 {
			isChecked = row0checked
		} else if indexPath.row == 1 {
			isChecked = row1checked
		}
	}





}


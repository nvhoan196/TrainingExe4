//
//  ViewController.swift
//  TrainingExe4
//
//  Created by mac on 7/28/17.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var txtEdit: UIButton!
    
    @IBOutlet weak var txtMove: UIButton!
    
    var arr1 : [String] = ["2016.04.04  09:34","2016.04.04  09:36","2016.04.04  09:38","2016.04.04  09:40","2016.04.04  09:42","2016.04.04  09:44","2016.04.04  09:46"]
    var arr2 : [String] = ["AV 2.1","AV 2.3","AV 2.1","AV 2.2","AV 2.1","AV 2.1","AV 2.4"]
    var arr3 : [String] = ["Góc Độ 156","Góc Độ 146","Góc Độ 176","Góc Độ 169","Góc Độ 152","Góc Độ 163","Góc Độ 151"]
    var arr4 : [String] = ["01","02","03","04","05","06","07"]
    var canEdit = false
    var canMove = false
    @IBOutlet weak var tblView: UITableView!

    @IBAction func btnEdit(_ sender: Any) {
        if !canMove {
            if canEdit {
            canEdit = false
            txtEdit.setTitle("Edit", for: .normal)
        } else {
            canEdit = true
            txtEdit.setTitle("Done", for: .normal)        }
        
        }}
    @IBAction func btnMove(_ sender: Any) {
            if canMove {
            canMove = false
            canEdit = false
            tblView.setEditing(canMove, animated: false)
            txtMove.setTitle("Move", for: .normal)
            } else if !canEdit {
            canMove = true
            canEdit = true
            tblView.setEditing(canMove, animated: true)
            txtMove.setTitle("Done", for: .normal)        }
        
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr1.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        
        cell.txtTime.text = arr1[indexPath.row]
        cell.txtAV.text = arr2[indexPath.row]
        cell.txtGocDo.text = arr3[indexPath.row]
        cell.imgView.image = UIImage(named: arr4[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return canEdit
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            arr1.remove(at: indexPath.row)
            arr2.remove(at: indexPath.row)
            arr3.remove(at: indexPath.row)
            arr4.remove(at: indexPath.row)
            tableView.reloadData()
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return canMove
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let todo1 = arr1.remove(at: sourceIndexPath.row)
        arr1.insert(todo1, at: destinationIndexPath.row)
        let todo2 = arr2.remove(at: sourceIndexPath.row)
        arr2.insert(todo2, at: destinationIndexPath.row)
        let todo3 = arr3.remove(at: sourceIndexPath.row)
        arr3.insert(todo3, at: destinationIndexPath.row)
        let todo4 = arr4.remove(at: sourceIndexPath.row)
        arr4.insert(todo4, at: destinationIndexPath.row)
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let newScr : ViewController1 = storyboard?.instantiateViewController(withIdentifier: "mh1") as! ViewController1
        newScr.name = arr4[indexPath.row]
        self.navigationController?.pushViewController(newScr, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.dataSource = self
        tblView.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


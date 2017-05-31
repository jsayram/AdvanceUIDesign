//
//  ViewController.swift
//  AdvanceUI
//
//  Created by jose ramirez on 5/31/17.
//  Copyright © 2017 Jose Ramirez. All rights reserved.
//

import UIKit
/* UIPickerViewDataSource: Handels how many rows and columns are inside of the picker view,the two methods needed to support for datasource is number of rows and components AND number of components in picker view.
   UIPickerViewDelegate: what is going to be inside those row and columns && what happens when those rows and columns are selected
 */
class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    /*array of rows for picker  view, and you can addd or delete items 
     and the picker view will update acordingly. YOU CAN MAKE IT A 2D ARRAY ASWELL.
    */
    /*1.) let items:[String] = ["Item 1", "Item 2", "Item 3", "Item 4"]   // Example for 1D array*/
    
    //2.) below is a 2D Array example
    let items:[[String]] = [
             ["A1","A2","A3"],
             ["B1","B2","B3"],
             ["C1"]
        ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // the components are the columns in the picker view
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
      /*1.)  return 1 /// this returns the number of columns you want the picker view to be*/
    
      //2.) below is 2D Array return
        return items.count
       
    }
    //this is how many rows you want in the component, these should be the same number of items in the array
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
      /*1.) return items.count // this is the count of the array created items[]*/
    
      // 2D array example below
        return items[component].count
      
    }
    /* this returns the string that is going to be in the row, this will corresponds to the index of the items array;
       Example: row zero, is item index 0
                row one , is item index 1 etc...
    */
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
     /*1.) return items[row] //this is tiems index row ie: 0 , 1 , 2 etc..*/
    
    //2.) below is 2D Array return
        return items[component][row]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


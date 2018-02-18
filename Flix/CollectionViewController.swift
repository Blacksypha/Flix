//
//  CollectionViewController.swift
//  Flix
//
//  Created by Tevin Lewis on 2/18/18.
//
//

import UIKit

class CollectionViewController: UIViewController {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        
        extension ViewController: UICollectionViewDataSource {
            func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
                return totalColors
            }
            
            func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
                let cell = collectionView.dequeueReusableCellWithReuseIdentifier("com.codepath.ColorCell", forIndexPath: indexPath) as! ColorCell
                let cellColor = colorForIndexPath(indexPath)
                cell.backgroundColor = cellColor
                
                if CGColorGetNumberOfComponents(cellColor.CGColor) == 4 {
                    let redComponent = CGColorGetComponents(cellColor.CGColor)[0] * 255
                    let greenComponent = CGColorGetComponents(cellColor.CGColor)[1] * 255
                    let blueComponent = CGColorGetComponents(cellColor.CGColor)[2] * 255
                    cell.colorLabel.text = String(format: "%.0f, %.0f, %.0f", redComponent, greenComponent, blueComponent)
                }
                
                return cell
            }
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    let totalColors: Int = 100
    func colorForIndexPath(indexPath: NSIndexPath) -> UIColor {
        if indexPath.row >= totalColors {
            return UIColor.blackColor()	// return black if we get an unexpected row index
        }
        
        var hueValue: CGFloat = CGFloat(indexPath.row) / CGFloat(totalColors)
        return UIColor(hue: hueValue, saturation: 1.0, brightness: 1.0, alpha: 1.0)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

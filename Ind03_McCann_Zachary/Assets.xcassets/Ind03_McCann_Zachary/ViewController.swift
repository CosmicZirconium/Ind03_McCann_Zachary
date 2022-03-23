//
//  ViewController.swift
//  Ind03_McCann_Zachary
//
//  Created by zacharymccann on 3/22/22.
//

import UIKit
public var check: Int = 0

class ViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    
    let states = ["Alabama" , "Alaska" , "Arizona" , "Arkansas" , "California" , "Colorado" , "Connecticut" , "Delaware" , "Florida" , "Georgia" , "Hawaii" , "Idaho" , "Illinois" , "Indiana" , "Iowa" , "Kansas" , "Kentucky" , "Louisiana" , "Maine" , "Maryland" , "Massachusetts" , "Michigan" , "Minnesota" , "Mississippi" , "Missouri" , "Montana" , "Nebraska" , "Nevada" , "New Hampshire" , "New Jersey" , "New Mexico" , "New York" , "North Carolina" , "North Dakota" , "Ohio" , "Oklahoma" , "Oregon" , " Pennsylvania" , "Rhode Island" , "South Carolina" , "South Dakota" , "Tennessee" , "Texas" , "Utah" , "Vermont" , "Virginia" , "Washington" , "WestVirginia" , "Wisconsin" , "Wyoming"]
    
    let nicknames = ["Yellowhammer State" , "The Last Frontier" , "The Grand Canyon State" , "The Natural State" , "The Golden State" , "The Centennial State" , "The Constitution State", "The First State" , "The Sunshine State" ,  "The Peach State" , "The Aloha State" , "The Gem State" , "Praire State" , "The Hoosier State" , "The Hawkeye State" , "The Sunflower State" , "The Bluegrass State", "The Pelican State" , "The Pine Tree State" , "The Old Line State" , "The Bay State" , "The Great Lakes State" , "The North Star State" , "The Magnolia State" , "The Show Me State" , "The Treasure State" , "The Cornhusker State" , "The Silver State" , "The Granite State" , "The Garden State" , "The Land of Enchantment" , "The Empire State" , "The Tar Heel State" , "The Peace Garden State" , "The Buckeye State" , "The Sooner State" , "The Beaver State" , "The Keystone State" , "The Ocean State" , "The Palmetto State" , "Mount Rushmore State" , "The Volunteer State" , "The Lone Star State" , "The Beehive State" , "The Green Mountain State" , "The Old Dominion State" , "The Evergreen State" , "The Mountain State" , "The Badger State" , "The Cowboy State"]
    
    let sqmile = ["50,744" , "571,951" ,"113,635", "52,068", "155,959", "103,718" , "4,845" , "1,954", "53,927" , "57,906" , "6,423" , "82,747" , "55,584" , "35,867" , "55,869" ,"81,815" , "39,728" , "43,562", "30,862", "9,774", "7,840", "56,804", "79,610" , "46,907" , "68,886" , "145,552", "76,872" , "109,826", "9,968" , "7,417" , "121,356", "47,214" , "48,711" , "68,976" , "40,948" , "68,667" , "95,997" , "44,817" , "1,045" , "30,109" , "75,885" , "41,217" , "261,797" , "82,144" , "9,250", "39,594" , "66,544" , "24,078" , "54,310" , "97,100"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }




    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        check = indexPath.row
        /*
        let vc = ViewController2(rownum: indexPath.row)
        self.navigationController?.pushViewController(vc, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
         */
    }

}

//Creats the table
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return states.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Ala", for: indexPath)
        
        cell.textLabel?.text = states[indexPath.row]
        cell.detailTextLabel?.text = nicknames[indexPath.row]
        
        return cell
    }
    
    
    
}

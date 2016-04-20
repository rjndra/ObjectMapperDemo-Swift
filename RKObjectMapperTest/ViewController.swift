//
//  ViewController.swift
//  RKObjectMapperTest
//
//  Created by Rajendra on 4/19/16.
// No copyright. Demo for Helping use with  AlamofireObject from https://github.com/tristanhimmelman/AlamofireObjectMapper  ObjectMapper and https://github.com/Hearst-DD/ObjectMapper
//

import UIKit

/* Uncomment below if using Object Mapper Implementation */
// import ObjectMapper
import Alamofire
import AlamofireObjectMapper

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var fullNameLbl: UILabel!
    @IBOutlet weak var ownerLoginLbl: UILabel!
    @IBOutlet weak var ownerIdLbl: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "https://api.github.com/users/mralexgray/repos")!
        alamofireObjectMapper(url)
        //        objectMapper(url)
        
    }
    
    //MARK:  AlamofireObjectMapper Implementation
    
    func alamofireObjectMapper(url: NSURL) {
        
        Alamofire.request(.GET, url).responseArray { (response: Response<[UserRecord], NSError>) in
            
            let userRecords = response.result.value!
            let i = 1
            let userRecord = userRecords[i]
            
            self.nameLbl.text = userRecord.name
            self.fullNameLbl.text = userRecord.fullname
            self.ownerLoginLbl.text = userRecord.ownerLogin
            self.ownerIdLbl.text = String(userRecord.ownerId)
        }
    }
    
    /* Uncomment below if using Object Mapper Implementation */
    /*
    // MARK: Object Mapper Implementation
     
   
    func objectMapper(url : NSURL) {
        Alamofire.request(.GET, url).responseJSON {  response in
            
            switch response.result {
            case .Success(let json):
                
                let userRecord = Mapper<UserRecord>().map(json[1])
                
                self.nameLbl.text = userRecord?.name
                self.fullNameLbl.text = userRecord?.fullname
                self.ownerLoginLbl.text = userRecord?.ownerLogin
                self.ownerIdLbl.text = String(userRecord!.ownerId)
                
            case .Failure(let error):
                print(error)
                
            }
        }
    }
    */
    
}


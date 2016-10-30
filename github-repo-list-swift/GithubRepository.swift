//
//  FISGithubRepository.swift
//  github-repo-list-swift
//
//  Created by susan lovaglio on 10/23/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class GithubRepository {
    
    var fullName: String
    var htmlURL: URL
    var repositoryID: String
    
    
    init(dictionary: [String: Any]) {
        
        guard
        
            let fullNameString = dictionary["full_name"] as? String,
            let repositoryIDString = dictionary["id"] as? Int,
            
            let urlString = dictionary["html_url"] as? String,
            let theURL = URL(string: urlString)
            
            else {fatalError()}
        
        
        self.fullName = fullNameString
        self.repositoryID = String(repositoryIDString)
        self.htmlURL = theURL

    
    }
    
}

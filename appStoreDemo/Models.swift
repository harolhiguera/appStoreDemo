//
//  Models.swift
//  appStoreDemo
//
//  Created by Harol Higuera on 3/14/17.
//  Copyright © 2017 Harol Higuera. All rights reserved.
//

import UIKit

class AppCategory: NSObject{

    var name: String?
    var apps: [App]?
    
    static func sampleAppCategoriies() -> [AppCategory]{
    
    
        // Best Apps category
        
        let bestnewAppsCategory = AppCategory()
        bestnewAppsCategory.name = "Best New Apps"
        var apps = [App]()
        let marioApp = App()
        marioApp.name = "Mario App"
        marioApp.imageName = "img_villan"
        marioApp.category = "Entertaiment"
        marioApp.price = NSNumber(value: 3.99)
        apps.append(marioApp)
        bestnewAppsCategory.apps = apps
        
        // Best Games category
        
        let bestnewGamesCategory = AppCategory()
        bestnewGamesCategory.name = "Best New Games"
        var gamesApps = [App]()
        let marioGame = App()
        marioGame.name = "Mario Game"
        marioGame.imageName = "img_mario"
        marioGame.category = "Entertaiment"
        marioGame.price = NSNumber(value: 3.99)
        gamesApps.append(marioGame)
        bestnewGamesCategory.apps = gamesApps
        
        return [bestnewAppsCategory, bestnewGamesCategory]
        
    }
}

class App: NSObject{

    var id: NSNumber?
    var name: String?
    var category: String?
    var imageName: String?
    var price: NSNumber?
    
}

//
//  ConnectionViewController.swift
//  SeeU
//
//  Created by Thomas Fouan on 03/03/2018.
//  Copyright © 2018 SeeU. All rights reserved.
//

import UIKit

import FacebookLogin
import FacebookCore
import FBSDKLoginKit

class LoginViewController: UIViewController, LoginButtonDelegate {
    
    var dict : [String : AnyObject]!
    
    @IBOutlet weak var loginButton: FBSDKLoginButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // creating button
        //let loginButton = LoginButton(readPermissions: [ .publicProfile, .userPhotos ])
        //loginButton.center = view.center
        //loginButton.delegate = self
        
        self.loginButton.readPermissions = [ "public_profile", "user_photos" ]
        
        // adding it to view
        //view.addSubview(loginButton)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // if the user is already logged in
        if let accessToken = FBSDKAccessToken.current(){
            // getFBUserData()
            print(accessToken.tokenString)
            print("Already logged in !")
            // TODO: Go to next controller
            //goToTabbedView()
            performSegue(withIdentifier: "loginToTeamWall", sender: self)
        }
    }
    
    //function is fetching the user data
    func getFBUserData(){
        if((FBSDKAccessToken.current()) != nil){
            FBSDKGraphRequest(graphPath: "me", parameters: ["fields": "id, name, picture.type(large), email"]).start(completionHandler: { (connection, result, error) -> Void in
                if (error == nil){
                    self.dict = result as! [String : AnyObject]
                    print(result!)
                    print(self.dict)
                }
            })
        }
    }
    
    func loginButtonDidCompleteLogin(_ loginButton: LoginButton, result: LoginResult) {
        print("logged in")
        self.getFBUserData()
    }
    
    func loginButtonDidLogOut(_ loginButton: LoginButton) {
        print("logged out")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func goToTabbedView() {
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "teamWall")
        present(controller, animated: true, completion: nil)
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

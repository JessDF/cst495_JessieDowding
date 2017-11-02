# Demo 3

#### Description
Use the following list of features as your guide:
  - Dispatch to a method on a background queue that takes a closure as an argument
    - The method should make a call to a web service API
    - The web service API should both send and receive JSON
    - The web service API key should be stored in the keychain
    - In the closure, dispatch back to the main thread and update the UI
    - Show an indicator of when the app is connected to your web service and when it is not
  - Use a closure as a property on a table cell to get information while the UITableView is being constructed
  - Use app settings to store some configuration available to the user
    - Make sure all settings have defaults that are set (see my examples)
    - Make sure you have at least one piece of PII and store PII in the keychain.
    
#### Sources
  - https://github.com/kishikawakatsumi/KeychainAccess
  - https://developer.apple.com/documentation/coredata/nsmanagedobject
  - https://www.raywenderlich.com/143128/background-modes-tutorial-getting-started
  - https://www.raywenderlich.com/148513/grand-central-dispatch-tutorial-swift-3-part-1

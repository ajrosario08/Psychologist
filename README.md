# Psychologist.
This app was built by following along on the itunesU class Stanford cs193p lecture 7. The Psychologist app takes a previously build application and embeds it into a splitView controller as its detail view. This app demonstrates the use of multiple MVC and segues.  The MVC's are embedded in navigation controllers inside of split view controllers.  This will allow the  app to be able to run on both the iphone and the ipad.

![MasterView Screenshot](https://github.com/ajrosario08/Psychologist/blob/master/MasterView.png)
![DetailView Screenshot](https://github.com/ajrosario08/Psychologist/blob/master/DetailView.png)

## Topics covered

### Lecture 7
- Split view controllers 
  - Navigation controllers
  - pushes and pops MVCs off of a stack 
  - navigationItem property is used to control what is in the nav bar 
  - toolbarItems is used to draw buttons in the toolbar 
- Tab bar controllers 
- Segues
  - are how to transition from one view to another 
  - show segue (shows modally takes over the entire screen)
  - show Detail
  - Modal segue
  - Popover segue ( shows in a little popover over the entire screen)
  - segues always create a new MVC
  - create segue with control drag in storyboard
  - outlets are not set as the Viewcontoller gets create by a segue 
  - prepareForSegue(segue: UIStroboardSegue, sender: AnyObject?)
  - segue.identifer - identifies which segue was called
  - segue.destinationViewController - is the view controller that is going to be created
- Polymorphism 
- Popovers (time permitting) 
  - takes over the screen
  - inactive area is grayed out 
  - it is a UIPresentationController

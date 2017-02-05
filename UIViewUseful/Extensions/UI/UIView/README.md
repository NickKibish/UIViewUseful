# UIView Extensions

UIView contains nex extensions:

## Nib Instance
This extensions make the instantiation of UIView from XIBs easier. 

Now you can use new init method to create viewes from XIBs.

```swift
let v = View.init(nibName: "ViewNibName")
```

If you call XIBs the same name as classes, you can use `nibName` variable.

```swift
let v = View.init(nibName: View.nibName)
```

If you use view, created in XIB in storyboards, you can add designed view on your view with `addOutletView()` method.
(For more info see example)

```swift
class View: UIView {
    @IBOutlet var view: UIView!
    
    override var outletView: UIView {
        return view
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        addOutletView()
    }
}

```

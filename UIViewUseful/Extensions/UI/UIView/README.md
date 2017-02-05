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

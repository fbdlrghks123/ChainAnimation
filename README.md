# ChainAnimation

## Usage

`ChainableAnimations` is a single-file μ-framework which provides an alternate `UIView` api:
- Use `.prepareAnimation(...)` to define the first animation...
- ... and `.then(...)` any number of time afterwards to define a chain of linked animations, executed one after another.
- Animations will not be performed until you call `.animate(...)`.
- Parameters for all functions follow the existing `UIView.animate` conventions and will do what you expect them to.

### Before

```swift
UIView.animate(withDuration: 0.15, delay: 0.0, options: .curveEaseIn, animations: {
    self.titleImageView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
}, completion: { _ in
    UIView.animate(withDuration: 0.4, delay: 0.0, options: .curveEaseOut, animations: {
        self.titleImageView.transform = CGAffineTransform.identity
    }, completion: nil)
})
```

### After
```swift
UIView.prepareAnimation(withDuration: 0.15, options: .curveEaseIn) {
    self.titleImageView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
}.then(withDuration: 0.4, options: .curveEaseOut) {
    self.titleImageView.transform = CGAffineTransform.identity
}.animate()
```

# GCRespond

Make the block as call back from action of UIControl.

GCRespond is support iOS 7 and newer.

GCRespond was created by GarveyCalvin and is maintained by the former.



# Sample

UISteper, UIButton, UISlider …

```objective-c
[self.steper gc_addControlEvents:UIControlEventValueChanged action:^(UIStepper*  _Nonnull sender) {
    NSLog(@"steper value change: %f", sender.value);
}];

[self.myButton gc_addControlEvents:UIControlEventTouchUpInside action:^(id  _Nonnull sender) {
    NSLog(@"sender is %@", sender);
}];

[self.slider gc_addControlEvents:UIControlEventValueChanged action:^(UISlider*  _Nonnull sender) {
    NSLog(@"slider value change: %f", sender.value);
}];
```



# Installation

## manual

1. Drag GCRespond folder to your project using the Navigator.
2. add `import "UIControl+GCResponder.h"` code when you use.




# License

BlocksKit is maintained under the MIT license. The project itself is free for use in any and all projects. You can use BlocksKit in any project, public or private, with or without attribution - though we prefer attribution! It helps us.
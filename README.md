# README

This example code runs a transition effect between two NSViews in a MacOS app.
The important bits seem to be:

- Make sure all involved views (including the window's content view) have wantsLayer set
to true
- Make sure the parent view whose subviews should be animated when they change
override -animationForKey:.
- The example right now uses a CIFilter for the transition (there are more, some of them
probably need more complex setup than just an imput angle)
- You can also just use a CATransition, which has a handful of types and subtypes useful
for simple fades etc., see the commented-out lines.
- You'll usually have different parent and child views, but for this example, the subviews
are just WILDColorBoxViews too.
- Call [parentView.animator addSubview: subview] or [parentView.animator removeFromSuperview]
to actually add/remove the views to/from the parent views with animation.

One more detail: If you somehow can't reproduce this in your app, I also checked some
"wants layer" checkboxes in the XIB, but they didn't seem to do anything. Just wanted to
point out those exist and were toyed with.

Instead of the "subviews" keys, there may be others, which might work in other cases where
you aren't adding/removing views.

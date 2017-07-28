## Repro

Run: 

```
carthage update --platform ios
```

And then check the dependency error that you get (InstantSearch isn't linked to AlgoliaSearch)

If you change the Cartfile and remove the branch `carthage-support`, this will be the case where I don't have the Pods folder commited. Rerun carthage update and you will get

> error: The sandbox is not in sync with the Podfile.lock. Run 'pod install' or update your CocoaPods installation.

In the end, the issue is that for local development, we're using CocoaPods do download the dependencies, which is messing up the project's settings in some way. 

## Investigation

I made some research for cases similar to mine (supporting both CocoaPods and Carthage, and having 2 level dependencies), and I found interesting ones.

 1-  [RxSwiftExt](https://github.com/RxSwiftCommunity/RxSwiftExt). The way they do it is that they use carthage to do local dev, so that CocoaPods doesn't mess up with the settings. Check their [contributing.md](https://github.com/RxSwiftCommunity/RxSwiftExt/blob/master/CONTRIBUTING.md). So is this the only way to go to support both? Not quite sure, I could also find another example that seem to support both CocoaPods and Carthage, and use CocoaPods for local dev 
 
 2- [RxAlamofire](https://github.com/RxSwiftCommunity/RxAlamofire). They seem to apply some workaround by creating a `_.xcodeproj` proj, but I didn't quite get it...
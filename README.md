# Maintained Dash for iOS

Dash gives your iPad and iPhone instant offline access to 150+ API documentation sets.

For more information about Dash, check out https://kapeli.com/dash_ios.

[![Dash Logo](./Icon/256.png)](https://kapeli.com/dash_ios)

## Installation Instructions

You can use Xcode to install Dash on your iOS device using your Apple ID.

All you need to do is:

1. Install [Xcode](https://developer.apple.com/xcode/download/)
1. Download the [latest fork](https://github.com/Kapeli/Dash-iOS/network)
1. Open `Dash iOS.xcworkspace` in Xcode
1. Go to Xcode's **Preferences** > **Accounts** and add your Apple ID
1. In Xcode's sidebar select **Dash iOS** and go to **General** > **Identity**. Append a word at the end of the *Bundle Identifier* e.g. `com.kapeli.dash.ios`*`.name`* so it's unique
1. Select your Apple ID in **Signing** > **Team**
1. Connect your iPad or iPhone using USB and select it in Xcode's menu **Product** > **Destination**
1. Press **CMD+R** or **Product** > **Run** to install Dash
1. If you install using a free (non-developer) account, make sure to rebuild Dash every 7 days, otherwise it will quit at launch when your certificate expires

## Status
- [x] Replace UISearchDisplayController with UISearchController
- [x] Migrate from UIWebView to WKWebView (Basic support for viewing docsets)
- [ ] Dark Mode Support (Done for the native part, web content is working in progress, better if the original author can give a copy of css that supports dark mode)
- [ ] Download docsets from remote urls
- [ ] Add support for sharing docsets
- [ ] Improve support for keyboard and pointer
- [ ] Support Apple docset (Not in my current plan without help from the original author)

## Preview
<img width="800" alt="Documentation Screen Shot" src="https://user-images.githubusercontent.com/37500758/113025616-ba459900-91ba-11eb-89cd-5cc61f8d1ee9.PNG">
<img width="800" alt="Tar Instructions Screen Shot" src="https://user-images.githubusercontent.com/37500758/113025660-c92c4b80-91ba-11eb-8e2a-39a2da2c841b.PNG">
<img width="800" alt="Main Docsets Screen Shot" src="https://user-images.githubusercontent.com/37500758/113025634-bfa2e380-91ba-11eb-8720-2d0a63619fc1.PNG">
<img width="800" alt="General Settings Screen Shot" src="https://user-images.githubusercontent.com/37500758/113027716-fda10700-91bc-11eb-99f3-4783f938ba31.jpeg">

## Acknowledgement

Officially Dash for iOS was [discontinued](https://blog.kapeli.com/goodbye-dash-for-ios). This app is based on the great effort of the [original](https://github.com/Kapeli/Dash-iOS) author.

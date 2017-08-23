# TipCalculator
# Pre-work - *Tip Calculator*

**TipCalculator** is a tip calculator application for iOS.

Submitted by: **Feng Zou**

Time spent: **6** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [x] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] List anything else that you can get done to improve the app functionality!
-- Allow to change the percentage settings in both settings page and the main page

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='https://github.com/zoufengboy/TipCalculator/blob/master/TipCalculator_Demo.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Project Analysis

As part of your pre-work submission, please reflect on the app and answer the following questions below:

**Question 1**: "What are your reactions to the iOS app development platform so far? 
**Answer: It is a user friendly frontend development experience, which empowers developers to build an engaging and interative UI.**

How would you describe outlets and actions to another developer? 

**Outlet: it is a reference wired to certain UI to allow to display or dynamically display text or content
Actions: it is a reference wired to certain UI, which invokes certain business logic after certain action is made towards this UI (input the bill amount for example)**

Bonus: any idea how they are being implemented under the hood? (It might give you some ideas if you right-click on the Storyboard and click Open As->Source Code")

**They are implemented using XML language, where all the properties for outlet and action are specified in the K-V format**

Question 2: "Swift uses [Automatic Reference Counting](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID49) (ARC), which is not a garbage collector, to manage memory. Can you explain how you can get a strong reference cycle for closures? (There's a section explaining this concept in the link, how would you summarize as simply as possible?)"

**Answer:A strong reference cycle between a closure and a class instance can be resolved by defining a capture list as part of the closure’s definition. A capture list defines the rules to use when capturing one or more reference types within the closure’s body. As with strong reference cycles between two class instances, you can declare each captured reference to be a weak or unowned reference rather than a strong reference.**


## License

    Copyright [2017] [Feng Zou]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

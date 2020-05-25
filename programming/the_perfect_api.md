# The Perfect API

When looking for good programming techniques, it is sometimes beneficial to check the Christmastime "Hammacher Schlemmer" catalog. One may come across something as perfect as this:

![Robocall Blocker](images/the_perfect_api/robocall_blocker.jpg)
[Source [external link]](https://www.hammacher.com/product/robocall-blocker)

Look at this gadget... it's a thing of beauty!

I believe the image of the device communicates its purpose, but the "Robocall Blocker" enables users to build up a blacklist of unwanted calls. The device sits between a users phone "jack" and land line phone, and has a big red "BLOCK NOW" button to press when the user desires to block a number. That number gets added to a stored blacklist, and will be blocked for future calls.

Why can't APIs be like this? Far too many times when programming, especially when working in codebases that suffered from "copy/paste" functionality, the abstractions are leaky, haphazardly constructed, require a substantial amount of boilerplate code, and are, all around, hard to use.

**All APIs should be like the Robocall Blocker.**

We say, "this is not a fair comparison! The concepts for the Robocall blocker don't apply to programming!"

Sure they're the same!

* Some setup is involved, the user has to plug the device into the wall phone jack and the back of their land line (think API keys, registering DI container, importing library, etc)
* There is a uniform way to interact with the internals of the system by hitting the "BLOCK NOW" button (think OO or a big "heavy lifting" function)
* There are advanced options, where the user can browse and manage their block and call lists (think additional features, configuration, etc)

**How can we improve our APIs?**

Based off of what I've learned from experience and the "Robocall Blocker" we should:

* Allow for minimum viable usecase... I want to get something working! (think "BLOCK NOW", an email function "send" that takes a "to", "from", "subject", and "body", and an open modal function "open" that takes no arguments)
* Allow for extensible configuration (once I block a number I don't mean to, I need a way to undo it. In the same way, I need ways to set timeout duration, number of worker threads, and styling properties)
* Only know about the system they need to know about (don't give me the jungle with the banana)
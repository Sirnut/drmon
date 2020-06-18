
![](examples/2.jpg)
> *status*: currently stable, writing documentation


# drmon
monitor and failsafe automation for your draconic reactor

### what is this
this is a computercraft LUA script that monitors everything about a draconic reactor, with a couple features to automate it
NB: This is for Minecraft 1.12.2. You will need to edit references within the code for any version higher to reflect any changes made to Draconic Evolution past its 1.12.2 release.

--> Custom edits made by SirNut, for SirNut and friends. Thank you to original authors for creating this work that has allowed me to learn!

### tutorial
you can find a very well made youtube tutorial on how to set this up [here](https://www.youtube.com/watch?v=8rBhQP1xqEU) , thank you [The MindCrafters](https://www.youtube.com/channel/UCf2wEy4_BbYpAQcgvN26OaQ)

### features
* uses a 3x3 advanced computer touchscreen monitor to interact with your reactor
----> Increased screen size to 3x4 to include energycore info
* automated regulation of the input gate for the targeted field strength of 10%
  * adjustable
* immediate shutdown and charge upon your field strength going below 5%
  * adjustable
  * reactor will activate upon a successful charge
* immediate shutdown when your temperature goes above 8000C
  * adjustable
  * reactor will activate upon temperature cooling down to 6000C
    * adjustable
* automated output targeting a temperature of 7900C

* easily tweak your output flux gate via touchscreen buttons
  * +/-100k, 10k, and 1k increments

### requirements
* one fully setup draconic reactor with fuel
* 1 advanced computer
* 9 advanced monitors
* 3 wired modems, wireless will not work
* a bunch of network cable

### installation
* your reactor output flux gate must be setup so that one side of it and one of your stabilizers touches a side of the advanced computer
* by default, flux gate should touch the right side, stabilizer should touch the back of the computer
  * if you want to use different sides you need to modify `startup` after you have installed this and specify the sides
* connect a modem to your input flux gate (the one connected to your reactor energy injector)
* connect a modem to your advanced computer
* setup your monitors to be a 3x3 and connect a modem to anywhere but the front
* run network cable to all 3 modems
* connect a modem to an energy pylon (connected to the energy core [tier 2 or above recommended] used to inject energy into the reactor)
* install this code via running the install script using these commands :
(Reactor Monitoring)
```
> pastebin get q5Scm59e install
> install
```
* modify `startup` if you wish to configure/alter any variables mentioned in the feature list, you'll find them at the top of the file
```
> startup
```
* you should see stats in your term, and on your monitor

### upgrading to the latest version
* right click your computer
* hold ctrl+t until you get a `>`

```
> install
> startup
```
### Regulating Energy Core output
```
> pastebin get YvQXdkTa install
> install
```

```
> startup (on second advanced computer)
```

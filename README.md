# MC-Dungeons-Ancient-Tracker CLI
Repo for my MC-Dungeons-Ancient-Tracker personal project 

Ancient Tracker is a command-line–driven utility designed to query and analyze game data related to Ancients, Runes, Items, and Maps. The tool allows users to explore available content, retrieve item–map relationships, and generate recommendations based on rune requirements and user-defined constraints for preping for Ancient Hunts.

Built in C# and SQLite
- Created by Logan Larrondo
<br>
<br></br>

# Table of Contents
- [MC-Dungeons-Ancient-Tracker CLI](#mc-dungeons-ancient-tracker-cli)
- [Installation and Usage](#installation-and-usage)
- [Conventions](#conventions)
- [Command Syntax](#command-syntax)
- [Error Feedback](#error-feedback)
- [Rune Naming Notes](#rune-naming-notes)
- [Command Reference](#command-reference)
- [Command Flag Reference](#command-flag-reference)
<br>
<br></br>

# Installation and Usage

### Installation
- Navigate to the Releases section of this GitHub page
- Select the desired release and download the zip folder
  - ( Recommended that you use the most recent release )


### Running the Application
- Extract (unzip) the zip folder to a location of your choosing
- Inside that folder you will find a .exe file
  - Double click on that file to launch the console program

If running the application for the first time it may take a moment to greate the database

Once launched, the program will enter an interactive command prompt.


### Getting Help

At any time, type:

`help`

This will display available commands and usage hints.

Or type:

`exit`

To close the program
<br>
<br></br>

# Conventions

To ensure consistent parsing and predictable behavior, the application follows several strict conventions:

## Naming Conventions

### Ancient names

Capitalize the first and last name

Example: `Ancient King`

The phrase `of the` is always lowercase

Example: `Guardian of the Deep`

Apostrophes (`'`) are not allowed in names or commands

### Item names and rune names must be entered exactly as expected unless otherwise stated

Case Sensitivity

As a rule of thumb all commands are case sensitive
<br>
<br></br>

# Command Syntax

Commands are token-based and parsed left to right

In documentation, `{}` indicates a mandatory, user-supplied value

Do not type the braces themselves

Example:

`get map {item name}`

Should be entered as:

`get map Iron Sword`
<br>
<br></br>

# Error Feedback

Invalid commands provide precise feedback

If part of a command is valid, it will be acknowledged

Example:

`list usbdgjrgbj`

Output will indicate that:

`list` was valid

`usbdgjrgbj` was not a recognized subcommand
<br>
<br></br>

# Rune Naming Notes

Rune names have been simplified to be easier to remember and type.


### Original rune names: 

![alt text](https://github.com/LRLogan/MC-Dungeons-Ancient-Tracker/blob/main/Images/AncientRuneActualNames.png "Actual rune names")

### My rune names:

| Rune | Image | Rune | Image |
|-----:|:------|-----:|:------|
| **A** | ![A rune](https://github.com/LRLogan/MC-Dungeons-Ancient-Tracker/blob/main/Images/ARune.png) | **Anchor** | ![Anchor rune](https://github.com/LRLogan/MC-Dungeons-Ancient-Tracker/blob/main/Images/AnchorRune.png) |
| **Arch** | ![Arch rune](https://github.com/LRLogan/MC-Dungeons-Ancient-Tracker/blob/main/Images/ArchRune.png) | **Branch** | ![Branch rune](https://github.com/LRLogan/MC-Dungeons-Ancient-Tracker/blob/main/Images/BranchRune.png) |
| **L** | ![L rune](https://github.com/LRLogan/MC-Dungeons-Ancient-Tracker/blob/main/Images/LRune.png) | **Ring** | ![Ring rune](https://github.com/LRLogan/MC-Dungeons-Ancient-Tracker/blob/main/Images/RingRune.png) |
| **Shield** | ![Shield rune](https://github.com/LRLogan/MC-Dungeons-Ancient-Tracker/blob/main/Images/ShieldRune.png) | **T** | ![T rune](https://github.com/LRLogan/MC-Dungeons-Ancient-Tracker/blob/main/Images/TRune.png) |
| **Totem** | ![Totem rune](https://github.com/LRLogan/MC-Dungeons-Ancient-Tracker/blob/main/Images/TotemRune.png) |  |  |
<br>
<br></br>

# Command Reference

The following table summarizes all currently supported commands and their behavior.
The following commands are currently implemented and available:

| Command                       | Description                                                                         | Supported Flags |
| ----------------------------- | ----------------------------------------------------------------------------------- |-----------------|
| `help`                        | Displays a list of available commands along with basic usage guidance.              | *(none)*        |
| `list maps`                   | Lists all maps currently stored in the database.                                    | `-dlc`          | 
| `list ancients`               | Lists all known Ancients. Use the `-sd` flag to show loot dropped.                  | `-sd`           |
| `list items`                  | Lists all items that can be queried or used in recommendations.                     | `-dlc`, `-nu`, `-nei`, `-nbi`   |
| `list runes`                  | Lists all runes and their simplified names.                                         | *(none)*        |   
| `get map {Item Name}`         | Returns the map(s) associated with the specified item. Item name is case sensitive. | `-dlc`, `-nu`   |
| `get item {Item Name}`        | Returns a report for the given item. Item name is case sensitive.                   | *(none)*        | 
| `get rune {Rune Name}`        | Returns a report for the given rune. Rune name is case sensitive.                   | *(none)*        | 
| `get ancient {Ancient Name}`  | Returns a report for the given ancient. Ancient name is case sensitive. Flags effect the algorithm used to determine best items for the runes required by the ancient.      | `-dlc`, `-nu`, `-nei`   |


Each command outputs all known entries of the requested type.
<br>
<br></br>

# Command Flag Reference

Flags are optional modifiers that alter how certain commands behave. Flags must begin with - and apply only to commands that support them.

| Flag   | Parameters           | Description                                                                                          |
| ------ | -------------------- | ---------------------------------------------------------------------------------------------------- |
| `-dlc` | `{dlc name \| none}` | Filters results to items from specific DLCs. Use `none` to include only base-game (non-DLC) content. For multple values seperate them with a comma `,` and no space. |
| `-nu`  | *(none)*             | Excludes unique items from results (`No Unique`). Useful for generalized or repeatable solutions.    |
| `-sd`  | *(none)*             | Showes additional data for the command that may be useful. The data type may differ between commands.|
| `-nei` | *(none)*             | Excludes event items from results (`No Event Items`). Useful for generalized or repeatable solutions.|
| `-nbi` | *(none)*             | Excludes unique items from results (`No Base Items`). Useful for generalized or repeatable solutions.|


Examples of using flags:

As long as the command supports the flag you can use as many as you need.

The command: `list items -nei -nbi -nu` 

Will return nothing because it is excluding all types of items.
<br>

<br></br>
The command: `list items -dlc Hidden Depths,Howling Peaks -nbi`

Will only show the unique items in the Hidden Depths and Howling Peaks dlc.
<br>

<br></br>
The command: `get ancient The Swarm -nu -dlc Hidden Depths -nei`

Will show an ancient report for `The Swarm` while excluding unique and event items as well as only including items from base game and the Hidden Depths dlc in the reccomendation algorithm. 

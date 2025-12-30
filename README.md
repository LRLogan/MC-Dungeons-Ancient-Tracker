# MC-Dungeons-Ancient-Tracker 
Repo for my MC-Dungeons-Ancient-Tracker personal project 
- Created by Logan Larrondo

Ancient Tracker is a command-line–driven utility designed to query and analyze game data related to Ancients, Runes, Items, and Maps. The tool allows users to explore available content, retrieve item–map relationships, and generate recommendations based on rune requirements and user-defined constraints for preping for Ancient Hunts.

# Installation and Usage
### Installation
- Navigate to the Releases section of this GitHub page
- Select the desired release and download the zip folder
  - ( Recommended that you use the most recent release )

### Running the Application
- Extract the zip folder to a location of your choosing
- Inside that folder you will find a .exe file
  - Double click on that file to launch the console program

Once launched, the program will enter an interactive command prompt.

### Getting Help

At any time, type:

`help`


This will display available commands and usage hints.

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

# Command Syntax

Commands are token-based and parsed left to right

In documentation, `{}` indicates a mandatory, user-supplied value

Do not type the braces themselves

Example:

`get map {item name}`

Should be entered as:

`get map Iron Sword`

# Error Feedback

Invalid commands provide precise feedback

If part of a command is valid, it will be acknowledged

Example:

`list usbdgjrgbj`

Output will indicate that:

`list` was valid

`usbdgjrgbj` was not a recognized subcommand

# Rune Naming Notes

Rune names have been simplified to be easier to remember and type.

A reference image showing original rune names and their simplified equivalents will be provided in this repository.

# Command Reference

The following table summarizes all currently supported commands and their behavior.
The following commands are currently implemented and available:

| Command               | Description                                                                         |
| --------------------- | ----------------------------------------------------------------------------------- |
| `help`                | Displays a list of available commands along with basic usage guidance.              |
| `list maps`           | Lists all maps currently stored in the database.                                    |
| `list ancients`       | Lists all known Ancients.                                                           |
| `list items`          | Lists all items that can be queried or used in recommendations.                     |
| `list runes`          | Lists all runes and their simplified names.                                         |
| `get map {item name}` | Returns the map(s) associated with the specified item. Item name is case sensitive. |



Each command outputs all known entries of the requested type.

## Query Commands
get map {item name}


Returns the map(s) associated with the specified item.

Note: Item names for this command are case sensitive.

# Command Flag Reference

Flags are optional modifiers that alter how certain commands behave. Flags must begin with - and apply only to commands that support them.

| Flag   | Parameters           | Description                                                                                          |
| ------ | -------------------- | ---------------------------------------------------------------------------------------------------- |
| `-dlc` | `{dlc name \| none}` | Filters results to items from specific DLCs. Use `none` to include only base-game (non-DLC) content. |
| `-nu`  | *(none)*             | Excludes unique items from results (`Not Unique`). Useful for generalized or repeatable solutions.   |


# Roadmap (Planned)

Advanced rune optimization and item selection in core algorithm

Improved recommendation heuristics

Expanded command flag support

Enhanced validation and user feedback



# PSTello

Control your Tello drone using PowerShell Core and Azure Cognitive Services(to come)

- [PSTello](#pstello)
  - [Installation](#installation)
    - [Prerequisites](#prerequisites)
  - [Usage](#usage)
    - [Keybindings](#keybindings)
      - [Takeoff and landing](#takeoff-and-landing)
      - [Horizontal movement](#horizontal-movement)
      - [Vertical movement](#vertical-movement)
      - [Rotation](#rotation)
      - [Flips](#flips)
  - [Contributing](#contributing)

## Installation

Install the module from the powershellgallery (to come) using:

```powershell
Install-Module 'PSTello' -Scope CurrentUser
```

### Prerequisites

- [PowerShell Core](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-windows?view=powershell-6) (For building locally)

## Usage

Connect to your Tello drones WLan.

```powershell
Import-Module PSTello

$Socket = Connect-PSTello

Set-PSTelloKeyBindings -Socket $Socket
```

Using the snippet above you connect your Session to the drone and setup Keybindings to control it right within the console.

### Keybindings

#### Takeoff and landing

Keys | Function | Description
--- | --- | ---
Ctrl+Shift+UpArrow | TakeOff | "Start the drone"
Ctrl+Shift+DownArrow | Land | "Land the drone"
Escape | Emergency | "Emergency land the drone"

#### Horizontal movement

Keys | Function | Description
--- | --- | ---
LeftArrow | MoveLeft20cm | "Move the drone 20cm to the left"
RightArrow | MoveRight20cm | "Move the drone 20cm to the right"
UpArrow | MoveForward20cm | "Move the drone 20cm to the front"
DownArrow | MoveBackward20cm | "Move the drone 20cm to the back"

#### Vertical movement

Keys | Function | Description
--- | --- | ---
Ctrl+UpArrow | MoveHigher20cm | "Move the drone 20cm to higher"
Ctrl+DownArrow | MoveLower20cm | "Move the drone 20cm to lower"

#### Rotation

Keys | Function | Description
--- | --- | ---
Ctrl+LeftArrow | RotateCCW20cm | "Rotate the drone 90 degrees Counter-CockWise"
Ctrl+RightArrow | RotateCW20cm | "Rotate the drone 90 degrees CockWise"

#### Flips

Keys | Function | Description
--- | --- | ---
Shift+UpArrow | FlipForward | "Flip the drone forwards"
Shift+DownArrow | FlipBackward | "Flip the drone backwards"
Shift+LeftArrow | FlipLeft | "Flip the drone left"
Shift+RightArrow | FlipRight | "Flip the drone right"

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

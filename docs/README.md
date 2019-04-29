# PSTello

[![Azure DevOps coverage](https://img.shields.io/azure-devops/coverage/Oechiih/PSTello/5.svg?label=Pester&logo=azure-devops&logoColor=blue&style=popout-square)](https://dev.azure.com/oechiih/PSTello/_build?definitionId=5)
[![PowerShell Gallery](https://img.shields.io/powershellgallery/v/PSTello.svg?label=Version&logo=powershell&style=popout-square)](https://www.powershellgallery.com/packages/PSTello)
[![docs](https://img.shields.io/readthedocs/pstello.svg?logo=Read-the-Docs&style=popout-square)](https://pstello.readthedocs.io/en/latest/)
[![Blog](https://img.shields.io/badge/Blog-dftai.ch-orange.svg?style=popout-square&logo=data:image/png;base64,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)](https://www.dftai.ch)
[![Twitter Follow](https://img.shields.io/twitter/follow/oechiih.svg?logo=twitter&style=popout-square)](https://twitter.com/Oechiih)

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

Install the module from the powershellgallery using:

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

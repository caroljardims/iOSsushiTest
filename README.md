# 🍣 iOSsushiTest — Animation Stuff

An iOS app built in Swift to explore and demonstrate native UIKit animation techniques, including custom view transitions, interactive gestures, and animated UI elements.

## Overview

This project was created as a hands-on study of iOS animations. It covers a range of animation concepts — from simple background color transitions to custom segue effects and gesture-driven interactions.

## Features

- **Background color animation** — smooth fade from white to orange on screen appear using `UIView.animate`
- **Custom scale segue** — a "squeeze-in" transition between view controllers using `CGAffineTransform`, where the destination screen expands horizontally from 10% to full width
- **Modal presentation with animated buttons** — buttons fade in with different opacity levels when a modal appears
- **Interactive sushi pan gesture** — users drag a sushi logo; the gesture triggers a transition that hides the logo and reveals the next UI state, with a bouncing arrow guiding the interaction

## Screens

| Screen | Description |
|---|---|
| `ViewController` | Entry screen with animated orange background |
| `AskForSlideViewController` | Interactive screen — drag the sushi logo to proceed |
| `ModalViewController` | Modal with animated dismiss and action buttons |

## Animations Used

| Technique | Where |
|---|---|
| `UIView.animate` with ease-out | Background color transition |
| `CGAffineTransform(scaleX:y:)` | Custom segue scale effect |
| `UIPanGestureRecognizer` | Interactive sushi drag |
| Repeating alpha animation | Arrow bounce indicator |

## Requirements

- iOS 10+
- Xcode 8+
- Swift 3+

## Getting Started

```bash
git clone https://github.com/caroljardims/iOSsushiTest.git

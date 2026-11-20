
# CoordinatorPattern

A lightweight SwiftUI navigation architecture implementing the Coordinator Pattern.

## Overview

This project exposes a Base Coordinator as an ObservableObject to manage navigation state centrally. Child coordinators can build on top of this base layer to define and manage their own independent flows, including:
1. Screens (Push): Stack-based navigation using NavigationStack and NavigationPath.
2. Sheets: Modal sheet presentations.
3. Full-Screen Covers: Full-screen modal flows.

## Key Features

1. Decoupled Views: Views trigger navigation intents without knowing about destination views or their dependencies.
2. Modular Child Coordinators: Each feature or module can define its own Page, Sheet, and FullScreenCover routes independently.
3. Native SwiftUI Integration: Powered by ObservableObject, @Published, and @EnvironmentObject for seamless state-driven routing.

## Usage

1. Define Routes: Create enums conforming to Hashable (for push destinations) and Identifiable (for sheets and full-screen covers) in your child coordinator.
2. Inject via Environment: Attach the coordinator using .environmentObject(coordinator) at the root NavigationStack.
3. Trigger Navigation: Call .push(), .present(sheet:), or .present(fullScreenCover:) from any child view via @EnvironmentObject.

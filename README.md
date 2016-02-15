# Carousel
Week 2 CodePath Assignment

The purpose of this project is to leverage views, view properties and events to create a high fidelity prototype that is difficult to distinguish from a production app.

Time spent: #12 hours

#Project Requirements

- Static photo tiles on the initial screen
- Sign In
  - Tapping on email/password reveals the keyboard and shifts the scrollview and Sign In button up.
  - Upon tapping the Sign In button:
    - If the username or password fields are empty, user sees an error alert.
    - If credentials are incorrect, user sees a loading indicator for 2 seconds followed by an error alert.
    - If the credentials are correct, user sees a loading indicator for 2 seconds followed by a transition to the Sign In screens.
  - Optional: When the keyboard is visible, if the user pulls down on the scrollview, it will dismiss the keyboard.
  - Optional: On appear, scale the form up and fade it in.
 - Tutorial Screens
  - User can page between the screens
  - Optional: User can page between the screens with updated dots
  - Optional: Upon reaching the 4th page, hide the dots and show the "Take Carousel for a Spin" button.
- Image Timeline
  - Display a scrollable view of images.
  - User can tap on the conversations button to see the conversations screen (push).
  - User can tap on the profile image to see the settings view (modal from below).
- Conversations
  - User can dismiss the conversations screen
- Settings
  - User can dismiss the settings screen.
  - User can log out
  
#Demo GIFs

<img src='AssignmentWalkthrough.gif' title='Assignment Walkthrough' width='' alt='Walkthrough of the Carousel Project.'/>

#License
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License.

You may obtain a copy of the License at: http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.

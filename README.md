#  QuizApp - A Quiz App is written in Dart

## Features
** List of available Quiz Topics.
** At the end of each topic video, there will be a quiz round

## Requirements

### Flutter 1.20.1 • channel stable • https://github.com/flutter/flutter.git
### Tools • Dart 2.9.0
### VCode

 ## Architecture
 
 ** We have used Bloc Architecture. BLoC (Business Logic Component) is an architectural pattern based on separate components (BLoC components). BLoC components contain only business logic, which can easily be shared between different Dart apps. This architecture was introduced by Google at Google I/O 2019.

## Components
### Controllers
1. Topic List Page 
   Show's the list of the Topic details using the Data given from the local.
2. Topic Video Page 
   Play the Approriate video from the selected Topic.
3. Quiz Page
   This component is used to start the quiz. We are created dummy questions in this section.
4. Count Down Page
   This page is for small count down animation to start quiz. Time is set = > 10 seconds
   
### Custom Components
  This custom components is used for custom view for each section. The goal is it reuse the components where ever we need to use the same. It's a kind of Atomic Design
1. AnswerButton
2. AnswerText
3. HeadingText
4. QuestionText


### Models
1. Topic
    This model is for displaying the topics
2. Questions
   This model is for displaying all questions
   
### Utils
  Used for extensions and static strings
  
  1.Appconstants
  2.Extensions
   
     

## How To Install
1. Open VCode 
2. project directory
3. Open any simulator(ios/android)
4. run "flutter run"


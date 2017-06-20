# Methods of Asynchronous Exceptions

Asynchronous programming is an inescapable concept for mobile developers, and can be quite confusing for new developers. This blog attempts to list and explain methods for propogating exceptions asynchronously. Furthermore, the methods will be discussed with examples in Swift 3 and Java 7.
### Multiple Delegate Functions
Delegating functions to get the result of a network request is a common approached used in Android and iOS programming. For example, the ‘<URLSession>’ class supplies in Apple’s Foundation framework can use a delegate object to intercept network responses and failures. This approach keeps code logically grouped by following OOP design.
### Multi-parameter Delegate Functions
<Add introduction here>
### Throwing Delegate Functions 
<Add introduction here>

Summary:
Introduction
1. Multiple delegate callbacks
  - Use case, swift and java
  - Benefits
  - Detriments
    - Bloats code, unless dedicated to a defined object
2. Single multi-parameter callback
  - Use case, swift and java
  - Variants (enum, error pointer)
  - Benefits
  - Detriments
3. Single throwing callback
  - Use case, swift and java
  - Benefits
  - Detriments
Summary via compare and contrast





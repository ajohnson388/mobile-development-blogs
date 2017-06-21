# Methods of Asynchronous Exceptions

Asynchronous programming is an inescapable concept for mobile developers, and when you starting something new, it helps to understand the standard practices used in API design. Like standards, there is always more than one and this blog attempts to explain the design patterns for propogating exceptions asynchronously.

### Delegated Callbacks

Delegating functions to get the result of a network request is a common approached used in Android and iOS programming. For example, the `URLSession` class supplied in Apple’s Foundation framework can use a delegate object to intercept network responses, failures. This approach keeps code logically grouped by following OOP principles. However, us


### Multi-parameter Delegate Functions

### Throwing Delegate Functions 





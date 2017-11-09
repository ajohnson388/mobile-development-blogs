# Simple Builder Pattern

### Intro

The builder pattern, a type of creational pattern, is a solution to stabilizing the API for creating an immutable object. The API in this case would be a constructor that creates the immutable object. If an object is immutable, its parameters must be defined at the point of creation. The simple approach is to create a constructor that requires all of its initial parameters in a single method signature, explicitly. With simple immutable objects that cannot have default parameters, 
    this is the only approach. However, consider a complex immutable object that can have default parameters. If we were to take only simple approach,
    the method signature of the constructor would break everytime a new optional parameter is added (Since it must be explicitly defined). In most cases where there is a candidate default value, the client would not need to update its code, unless it explicitly wants to use the new features. The builder class stabilizes the API by wrapping up all of the parameters that can have default values, into a 'Builder' object.


### Example: Pizza Builder

A simple example of the builder pattern is to create a pizza order. For simplicity, 
pizzas in this example can only have or not have toppings. Using a builder for the pizza
allows us to add new toppings without breaking the API. This makes sense because there will always
be default value for a topping, its either there or not. Furthermore, making the pizza an immutable object
makes sense because the order should not be altered after its created.


Code Definition:

Java | Swift  // TODO: Integrate code


Code Example Use:

Jave | Swift  // TODO: Integrate code


### Conclusion (When to use)

So when should you use the builder pattern? 

Only, if you create an object that is immutable.
Definitely, if it contains an unpredicatable amount of optional properties. 
Optionally, if it surpasses the number of optional constructor parameters that makes you uncomfortable.

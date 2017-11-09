# Builder Pattern

### Intro

The builder pattern helps stabilize the API for creating an immutable object. The API in this case would be the constructor or factory method. If an object is immutable, its parameters must be defined at the point of creation. The naive approach would be to create a constructor that accepts and defines all of its initial parameters. With simple objects that cannot have default parameters, 
    this is the only approach. However, consider a complex immutable object that can have default parameters. If we were to take the naive approach,
    the method signature of the constructor would break everytime we add a new optional parameter. This can be cumbersome to the client, especially if
    they could just fall back on a default value. The builder class stabilizes the API by wrapping up all of the parameters that can have default values, into a 'Builder' object.

### Example: Pizza Builder

A simple example of the builder pattern is to create a pizza order. For simplicity, 
pizzas in this example can only have or not have toppings. Using a builder for the pizza
allows us to add new toppings without breaking the API. This makes sense because there will always
be default value for a topping, its either there or not. Furthermore, making the pizza an immutable object
makes sense because the order should not be altered after its created.

Java:

public final class Pizza {
    
    final boolean pepperoni;
    final boolean onions;
    final boolean spinach;
    final boolean olives;

    protected Pizza(final Pizza.Builder builder) {
        pepperoni = builder.pepperoni
        onions = builder.onions;
        spinach = builder.spinach;
    }

    public static final Builder {
        
    }
}

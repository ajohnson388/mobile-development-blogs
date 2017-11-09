/**
 * An immutable class that captures a pizza order. The class can only be constructed
 * from the inner Builder class.
 * */
public final class Pizza {
    
    public enum Size {
        case small, medium, large
    }
    
    /**
     * Fields are immutable, but still accessible
     * */
    let size: Size
    let pepperoni: Bool
    let onions: Bool
    let spinach: Bool
    let olives: Bool
    
    /**
     * Constructor is made fileprivate because it is only used by the inner builder class.
     * Objects following the builder pattern should only be constructed from a builder.
     * */
    fileprivate init(builder: Builder, size: Size) {
        pepperoni = builder.pepperoni
        onions = builder.onions
        spinach = builder.spinach
        olives = builder.olives
        self.size = size
    }
    
    func foo() {
        let pizza = Pizza.Builder(size: Pizza.Size.small)
            .olives(true)
            .onions(true)
            .build()
    }
    
    /**
     * Inner class so access modifiers can be used correctly and since
     * it is directly coupled with the object
     * */
    public final class Builder {
        
        /**
         * Field is immutable and defined when instantiating the builder. This field should be
         * fileprivate and immutable.
         * */
        fileprivate let size: Size
        
        /**
         * Fields are mutable and set with default values. Private access is optional, and is used
         * to steer users towards using method chaining as described below.
         * */
        var pepperoni: Bool = false
        var onions: Bool = false
        var spinach: Bool = false
        var olives: Bool = false
        
        /**
         * Parameters without default values need to be passed in explicitly to the builder.
         * The builder will use the defined values when the build method is called.
         * */
        public init(size: Size) {
            self.size = size;
        }
        
        /**
         * Setters should mimick the same name as the field, as it should be obvious all methods
         * are setters in a builder class.
         *
         * Optionally, every setter method should return the builder instance. This allows for method
         * chaining which is the typical approach taken with the builder pattern.
         * */
        public func pepperoni(_ pepperoni: Bool) -> Builder {
            self.pepperoni = pepperoni
            return self
        }
        
        public func onions(_ onions: Bool) -> Builder {
            self.onions = onions
            return self
        }
        
        public func spinach(_  spinach: Bool) -> Builder {
            self.spinach = spinach
            return self
        }
        
        public func olives(_ olives: Bool) -> Builder {
            self.olives = olives
            return self
        }
        
        /**
         * Every builder class should include a single void 'build' method. This method
         * should not take any parameters. If the immutable object requires non-optional
         * parameters, they should be passed in the constructor of the Builder class. This
         * is because the builder instance could be used more than once as a prototype and
         * the immutable parameters need to be consistent.
         * */
        public func build() -> Pizza {
            return Pizza(builder: self, size: size)
        }
    }
}

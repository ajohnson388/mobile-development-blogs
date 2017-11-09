/**
 * An immutable class that captures a pizza order. The class can only be constructed
 * from the inner Builder class.
 * */
public final class Pizza {
    
    public enum Size {
        small, medium, large
    }
    
    /**
     * Fields are immutable, but still accessible
     * */
    public final Size size;
    public final boolean pepperoni;
    public final boolean onions;
    public final boolean spinach;
    public final boolean olives;
    
    /**
     * Constructor is made private because it is only used by the inner builder class.
     * Objects following the builder pattern should only be constructed from a builder.
     * */
    private Pizza(final Builder builder, final Size size) {
        pepperoni = builder.pepperoni;
        onions = builder.onions;
        spinach = builder.spinach;
        olives = builder.olives;
        this.size = size;
    }
    
    void foo() {
        final Pizza pizza = new Pizza.Builder(Pizza.Size.small)
        .olives(true)
        .onions(true)
        .build();
    }
    
    /**
     * Static inner class so access modifiers can bes used correctly and since
     * it is directly coupled with the object
     * */
    public static final class Builder {
        
        /**
         * Field is immutable and defined when instantiating the builder. This field should be
         * private and immutable.
         * */
        private final Size size;
        
        /**
         * Fields are mutable and set with default values. Private access is optional, and is used
         * to steer users towards using method chaining as described below.
         * */
        private boolean pepperoni = false;
        private boolean onions = false;
        private boolean spinach = false;
        private boolean olives = false;
        
        /**
         * Parameters without default values need to be passed in explicitly to the builder.
         * The builder will use the defined values when the build method is called.
         * */
        public Builder(Size size) {
            this.size = size;
        }
        
        /**
         * Setters should mimick the same name as the field, as it should be obvious all methods
         * are setters in a builder class.
         *
         * Optionally, every setter method should return the builder instance. This allows for method
         * chaining which is the typical approach taken with the builder pattern.
         * */
        public Builder pepperoni(boolean pepperoni) {
            this.pepperoni = pepperoni;
            return this;
        }
        
        public Builder onions(boolean onions) {
            this.onions = onions;
            return this;
        }
        
        public Builder spinach(boolean spinach) {
            this.spinach = spinach;
            return this;
        }
        
        public Builder olives(boolean olives) {
            this.olives = olives;
            return this;
        }
        
        /**
         * Every builder class should include a single void 'build' method. This method
         * should not take any parameters. If the immutable object requires non-optional
         * parameters, they should be passed in the constructor of the Builder class. This
         * is because the builder instance could be used more than once as a prototype and
         * the immutable parameters need to be consistent.
         * */
        public Pizza build() {
            return new Pizza(this, size);
        }
    }
}

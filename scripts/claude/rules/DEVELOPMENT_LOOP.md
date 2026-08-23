# DEVELOPMENT LOOP

## Definitions

**Happyflow** → Logic as intended  
**Exception** → Logic branching from the happyflow (conditionals, try-catch statements)  
**Edge-case** → Predictable state in which logic cannot be executed by default

## Development Loop

For every **Happyflow**, **Exception**, and **Edge-case**, follow these steps:

### Step 1: Write Minimal RED Test
Create the smallest possible test that fails. Verify it fails before proceeding.

### Step 2: Write Production Code
Implement the feature to make the test pass. Keep implementation minimal and focused.

### Step 3: Validate & Turn GREEN
Run the test against production code. Test must pass (GREEN).

## Application

- **Happyflow**: Test the primary, intended path through the code
- **Exception**: Test conditional branches and error handling paths
- **Edge-case**: Test predictable failure scenarios and boundary conditions

Repeat this cycle for each case until all branches are covered and validated.

# Javascript coding guidelines


## Testing

- Write tests using the following structure (with a testing framework that supports it, such as [Mocha](http://visionmedia.github.com/mocha/)):
    - "**describe {component}**" for each tested component (one file per component)
        - "**describe {member}**" for each member (e.g. method) of that component
            - "**it {should do this when that}**" for each test case of that member
- Prefer "should"-style assertions to "expect" or "assert" (using e.g. [Should.js](https://github.com/visionmedia/should.js/))


## Code

### Naming

- General functions & variables: `camelCase`
- Constructor functions: `PascalCase`
- Enumeration objects: `PascalCase` (+ apply `Object.freeze()`)
- Properties used as constants (e.g. in enumeration objects, recommended): `PascalCase` or `ALL_CAPS`

### Code layout / style

- String delimiter = single quote
- Spacing:
    - Add a space after each of the following unless it's followed by a new line: comma, conditionals (`if`, `else`, `for`, etc.), closing parenthese, negation operator (`!`)
    - Add a space before and after binary and ternary operators (`+`, `&&`, `?` etc.)

### Comments

- Follow the [JSDoc format](http://en.wikipedia.org/wiki/JSDoc) for all non-inline comments

### Miscellaneous

- Always use strict equality: `===` or `!==`
- Use `.bind(this)` (or better, `thisArg` when available) instead of aliasing (`var self = this`)
- Keep functions short and operating within a single level of abstraction
- Prefer duck-typing to `instanceof` type testing
- Use [lodash](http://lodash.com) as a general-purpose utility library when core Javascript constructs are not sufficient (beware of over-using it especially on Node.js where there are no cross-browser compatibility issues)


## Packaging & dependencies

I.e. `package.json` / `component.json`

- List dependencies alphabetically
- Specify dependency version ranges using wildcards (e.g. `1.2.x`) rather than "approximate" syntax (e.g. `~1.2.3`)


## Node.js specifics

### Logging

- Do not use `console.log()` (except temporarily for tests and debugging)
- Logging in production code should use [winston](https://github.com/flatiron/winston) but be ready for quick replacement (by a custom wrapper or an alternative lib)
    - Put all winston-specific stuff (if any) in a single location
    - Use a generic name like `logger` for your logging objects (example: `var logger = require('winston')`, then `logger.info(message)`)
    - If you have multiple components issuing log messages (e.g. routes, sockets, storage), include context information with each message using format `[{context}] {message}` (could be done via a wrapper for convenience)
- Logging levels to use (order by severity): `debug`, `info`, `warn`, `error`


## JSHint settings

- [For browser code](code/javascript-browser.jshintrc) (assumes use of Underscore/Lodash and jQuery)
- [For Node.js code](code/javascript-node.jshintrc)

Those files serve as master JSHint settings in our JS repos.

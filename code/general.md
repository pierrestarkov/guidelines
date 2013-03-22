# General coding guidelines

Those guidelines apply to all applicable situations, except if mentioned otherwise in specific guidelines, or where there exists a standard usage that is overwhelmingly followed for a particular case.

Specific guidelines documents should follow the same sections order where applicable.


## Testing

Most of the implementation code should be covered by automated tests.

- Functional (or acceptance) tests are required; they are the only functional specifications we keep of completed work
- Unit tests are only needed if they provide clear value in addition to the functional tests
- Always work test-first if you can


## Files and folders

### General

- Naming: `lower-case-with-dashes.extension`
- One module/class per file, with matching names (e.g. file `groove-generator.js` contains one class named `GrooveGenerator`)

### Usual organization

- Source (i.e. implementation) code goes into folder `<repo root>/source`
- Test code goes into folder `<repo root>/test`
	- Unit tests structure should mirror implementation files structure: for example, test file for `/folder/module.js` is found in `/test/folder/module.test.js`
	- Integration tests are found in clearly named folders like `/test/acceptance`, `/test/load`, etc.


## Code

### Naming

- Functions should be named like verbs, e.g. `doSomething()`
- Booleans should be named like adjectives, e.g. `active`
- Use descriptive names that are self-explanatory in their context
	- Be explicit and precise: the priority is readable code, not short code (where short code matters there are usually minifying tools for that)—for example, you should generally prefer `responseStream` to `rs`, or `propertyName` to `prop`.
	- Keep very condensed names like `e` or `desc` for short local scopes

### Code layout / style

- Maximum line length: 100 characters
- Indentation:
	- Use spaces (soft-tabs), not tabs
	- 1 level = 2 spaces
- Order declarations for best readability: higher-level code first, then implementation details, in usage and reading order ("good code should read like a book")
- Spacing:
	- One instruction per line
	- Use blank lines to separate groups of related instructions ("paragraphs" of code)

### Comments

- Only use comments to describe non-obvious code behavior
- When applicable, comments should follow a standard format so that they can be processed by doc generators

### Miscellaneous

- Keep functions short and operating within a single level of abstraction
- Use duck-typing and rely on tests rather than testing for types of arguments
- Optimize for expressiveness and readability; only optimize for performance if there's a measurable problem
- Use core language constructs over library-specific constructs wherever possible


## Source control (i.e. Git)

- One change per commit
- Clear and explanatory commit messages, always mentioning the related feature or issue  if applicable (use GitHub commit messages integration)


## Documentation

### README

Every repo's `README.md` file should describe (where applicable):

- The repo's nature and purpose (usually very briefly)
- How to setup the development environment
- How to run the tests and debug (if not obvious)
- How to build and deploy
- The repo's file organization (if not obvious)
# Java coding guidelines

## Package organization

- Since maven is used to build the project, use the [maven project structure](http://maven.apache.org/guides/introduction/introduction-to-the-standard-directory-layout.html)
- need to define a package organization

## Code

### Naming

- PascalCase for classes, constructors
- camelCase for methods 
- ALL_CAPS for constants
- When extending a class, use (part of) superclass name as subclass name suffix (ex.: PollingThread, LoginActivity)

### Code layout / style

- Do not use inner classes, unless they are interfaces (ex.: ResponseHandler from httpcomponents library)
- Instance variables must be private and only accessed through getters
- JSON objects' field keys should be declared within the classes where they are used as final static String with the appropriate visibility modifier
- When returning collections or arrays, do not return nulls

### Exceptions

- Throw at a higher level when errors come from user interaction or if the user needs to be notified of this eror
- Manage internal errors locally

### Comments

- Provide brief Javadoc comment for each class and public method
- Method blocks should not be too long and their implementation should be self-explanatory, thus requiring no comments inside the block unless rare exception

### Implementation choices

- Execute I/O tasks (network, database) asynchronously
- Design patterns utilization is strongly encouraged for readability and Android/Java code reutilization

### Android specifics

- Execute asynchronous tasks by extending the AsyncTask\<T> class
- Views are specific (Activities, Views, xml definitions)
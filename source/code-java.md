# Java coding guidelines

## Package organization

- Since maven is used to build the project, use the [maven project structure](http://maven.apache.org/guides/introduction/introduction-to-the-standard-directory-layout.html)
- need to define a package organization guideline

## Code

### Naming

- ``PascalCase`` for classes and constructors
- ``camelCase`` for methods 
- ``ALL_CAPS`` for constants
- When extending a class, use (part of) superclass name as subclass name suffix (ex.: ``PollingThread``, ``LoginActivity``)
- avoid generic names such as ``Handler``, ``Processor``. If you really need to use it, extend it to make it self-explanatory, for example: ``LoginResponseHandler``. 

### Exceptions

- Throw at a higher level when errors come from user interaction or if the user needs to be notified
- Manage internal errors locally

### Comments

- Provide brief Javadoc comment for each ``class`` and ``public`` method
- Method blocks should not be too long and their implementation should be self-explanatory, thus requiring no comments inside the block unless rare exceptions

### Implementation choices

- Do not use inner classes, unless they are interfaces (ex.: ResponseHandler from httpcomponents library)
- Instance variables' visibility must be ``private`` and only accessed through getters
- JSON glossarys' field keys should be declared within the classes where they are used as ``final static String`` with the appropriate visibility modifier
- When returning collections or arrays, do not return nulls
- Execute I/O tasks (network, database) asynchronously
- Design patterns utilization is strongly encouraged for readability and Android/Java code reutilization

## Android specifics

- Execute asynchronous tasks by implementing a class that extends the ``AsyncTask<T>`` class
- Views are specific (``Activity``, ``View``, XML definitions)
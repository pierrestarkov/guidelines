# Pryv guidelines

Source content for our team guidelines, published on http://pryv.github.io/guidelines.


## Building

- `make setup` sets up the environment; relies on [nvm](https://github.com/creationix/nvm)
- `make server` runs a small server serving the generated website during development
- `make compile` generates the website from the source into the `build` folder
- `make publish` compiles the website (see `compile` target above) and publishes it to the repo's `gh-pages` branch

(Read the `makefile` for details.)


## License

(Revised BSD license, adapted.)

Copyright (c) 2013, Pryv S.A. All rights reserved.

Redistribution and use of this work, with or without modification, are permitted provided that the following conditions are met:

* Redistributions must retain the above copyright notice, this list of conditions and the following disclaimer.
* Neither the name of Pryv nor the names of its contributors may be used to endorse or promote products derived from this work without specific prior written permission.

THIS WORK IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL PRYV BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS WORK, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

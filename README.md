# Canvas

## Setup

### Application

```
;; Install deps
% rebar get-deps
% rebar compile
;; Create release
% cd rel
% rebar create-node nodeid=canvas
% rebar generate
```

### Assets

```
;; e.g. Setup Node.js via Python's virtualenv
% virtualenv venv
(venv) % pip install nodeenv
(venv) % nodeenv -p
```

```
;; Install npm packages
(venv) % npm install
;; Install gulp
(venv) % npm install gulp -g
;; Install asset packages via bower
(venv) % gulp bower
```

## Boot

```
;; Start
% ./bin/canvas start
```

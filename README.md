# .emacs.d/
Modularized Emacs Configuration.

Top-level files hold the logic to initialize the lower-level files.
- `README.md`: what you're currently reading.
- `init.el`: the initialization file.

The `config` folder contains all custom configurations.
- `external`: libraries that refer to external downloads.
- `global`: global configurations not pertaining to any specific library.
- `internal`: libraries that refer to site-lisp files.

```
~/.emacs.d $ tree
.
├── config
│   ├── external
│   ├── global
│   └── internal
├── init.el
└── README.md
```

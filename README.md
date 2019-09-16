# .emacs.d/
Modularized Emacs Config.

Top-level files hold the logic to initialize the lower-level files.
- `init.el': the initialization module.
- `jd:theme.el': customized theme.
- `README.md': what you're currently reading.

The `config' folder contains all custom configurations.
- `external': libraries consisting outside of stock Emacs.
- `global': global configurations not pertaining to any specific library.
- `internal': libraries consisting in stock Emacs.

```
.emacs.d/
├── config/
│   ├── external/
│   ├── global/
│   └── internal/
├── init.el
├── jd:theme.el
└── README.md
```

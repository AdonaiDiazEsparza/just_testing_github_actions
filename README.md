# Simple github action example
I created this example to understand the github actions for automative other repositories, is too simple that only uses a .c file with a "Hello World!" example.
You can find the worflows examples for C on the .github folder, the distribution of this repo is the following:
```
├── .github
│   └── workflows
│       ├── release.yml
│       └── stats.yml
├── .gitignore
├── main.c
├── Makefile
└── README.md
```
The **stats.yml** only handles the actions when you push a commit

The **release.yml** only handles the action when you do a release

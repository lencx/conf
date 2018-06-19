# Git Commit Message Conventions

## Format of the commit message

```bash
<type>(<scope>): <subject>
<BLANK LINE>
<body>
<BLANK LINE>
<footer>
```

> `commitizen`
<!-- https://docs.google.com/document/d/1QrDFcIiPjSLDn3EL15IJygNPiHORgU1_OOAqWjiDU5Y/edit# -->

```bash
npm install -g commitizen
npm install -g cz-conventional-changelog
echo '{ "path": "cz-conventional-changelog" }' > ~/.czrc
```

### type

* **feat**(feature)
* **fix**(bug fix)
* **docs**(documentation)
* **style**(formatting, missing semi colons, ...)
* **refactor**
* **test**(when adding missing tests)
* **chore**(maintain)

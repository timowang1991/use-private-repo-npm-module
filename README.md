# What is this?

* This is a demonstration of how we can add npm modules from an unpublished private github repo.

* In `package.json`
```json
{
    "...": "...",
    "dependencies": {
        "private-repo-npm-module": "git://github.com/timowang1991/private-repo-npm-module"
    }
}
```


<br/>

# How to run for dev
* Create `.env` from `.env.example` and add [personal access token](https://github.com/settings/tokens) into `.env`
```
cp .env.example .env
```

<br/>

# How to build a docker image
```
docker build . -t use-private-repo-npm-module --build-arg GITHUB_PERSONAL_ACCESS_TOKEN=<personal_access_token>
```

<br>

# References

* [StevenACoffman/goGetPrivate.md](https://gist.github.com/StevenACoffman/866b06ed943394fbacb60a45db5982f2)
* [npm install private github repositories by dependency in package.json](https://getridbug.com/node-js/npm-install-private-github-repositories-by-dependency-in-package-json/)
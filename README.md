# What is this?

* This is a demonstration of how we can add npm modules from an unpublished private github repo.

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
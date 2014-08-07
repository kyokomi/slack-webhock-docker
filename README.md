slack-webhock-docker
====================

slack-webhock webapp docker

## slack-webhock

https://github.com/kyokomi/slack-webhock

## Run

```console
$ docker run -e GITLAB_BASE_URL={gitlab_url} -e GITLAB_TOKEN={gitlab_token} -e SLACK_TOKEN={slack_token} -e SLACK_CHANNEL={slack_channel} -p 80:3000 {docker_image}
```


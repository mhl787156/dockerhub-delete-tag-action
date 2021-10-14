# dockerhub_delete_tag_action
Dockerhub Delete Tag Github Action

This action uses the dockerhub v2 api to look up and delete a tag in a given repository. 

> Note it goes: organisation.image:tag
> e.g. mickeyli789/another-app:tester

The api as of writing does not support personal access tokens, so it must have the actual account password unfortunately. 

## Inputs and Outputs

```
inputs:
  username:
    description: 'Dockerhub username'
    required: true
  password:
    description: 'Dockerhub password (actual password not token)'
    required: true
  organisation:
    description: 'Dockerhub organisation'
    required: true
  image:
    description: 'Image with tag to be deleted'
    required: true
  tag:
    description: 'Tag to be deleted'
    required: true
```

# README

1.) Create Beanstalk app
  - https://console.aws.amazon.com/elasticbeanstalk/home?region=us-east-1#/newApplication
    - create web server
    - select docker as the platform
    - environment name: vanilla-rails-with-docker
    - use defaults
      - assumptions:
        - you know about IAM roles and permissions

2.) Create ECS repo (where we host docker images)
  - https://console.aws.amazon.com/ecs/home?region=us-east-1#/repositories
  - Directions laid out will be accomplished later with the Dockerrun file

3.) Create docker test environment
  - Dockerfile-test
  - Add Makefile
  - Add scripts
  - Add any native DB depenedencies to Dockerfile
    IE:
    ```
    extconf failed, exit code 1

    Gem files will remain installed in /usr/local/bundle/gems/sqlite3-1.3.13 for
    inspection.
    Results logged to
    /usr/local/bundle/extensions/x86_64-linux/2.3.0/sqlite3-1.3.13/gem_make.out

    An error occurred while installing sqlite3 (1.3.13), and Bundler cannot
    continue.
    Make sure that `gem install sqlite3 -v '1.3.13'` succeeds before bundling.
    ```
    You can now run tests within a docker env! Try it out with: `make test`

4.) Create docker development environment

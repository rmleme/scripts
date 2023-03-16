# scripts
A few useful bash scripts.

- [aws](./aws) --> requires [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html).
  - [run_lambda.sh](./aws/run_lambda.sh): invokes a lambda at AWS with a given payload.
- [docker](./docker) --> requires [Docker Engine](https://docs.docker.com/engine/).
  - [hadolint.sh](./docker/hadolint.sh): analyzes a given `Dockerfile` with [Hadolint](https://github.com/hadolint/hadolint).
- [git](./git)
  - [github_clone_all_repos.sh](./git/github_clone_all_repos.sh): clones all repositories of a given GitHub user, page by page.
  - [merge_from_main_master.sh](./git/merge_from_main_master.sh): merges into your local [feature] branch the commit history from `main` (or `master`) branch.
  - [update_all_repos.sh](./git/update_all_repos.sh): sweeps accros all your local repositories pulling the latest (remote) changes from `main` (or `master`) branch.
- [mysql](./mysql) --> requires [MySQL Client](https://dev.mysql.com/doc/refman/8.0/en/programs-client.html).
  - [dump_mysql_defs.sh](./mysql/dump_mysql_defs.sh): generates a dump file containing the definitions of a given MySQL database.
  - [restore_mysql_defs.sh](./mysql/restore_mysql_defs.sh): restores the definitions of a MySQL database from a given dump file.
- [search_src.sh](./search_src.sh): performs a "smart" recursive `grep` from a base directory, excluding some standard build directories.
- [telnet_http.sh](./telnet_http.sh): verifies if there is connection to a given URL through ports 80 or 443. Requires [Nmap](https://nmap.org/).

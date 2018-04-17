# sisu-hugo-static-wordpress

## Get Started
1. Clone this repo using the `--recurse-submodules` flag like `git clone --recurse-submodules git@github.com:blakesisu/sisu-hugo-static-wordpress.git
`
1. Run `make` to build images and services.
1. Run `./wp-cli-init.sh` in another terminal window to initialize wordpress admin and install plugins.
1. Log into wordpress admin at [http://localhost:8000/wp-admin/](http://localhost:8000/wp-admin/), with user & pass 'wordpress'.
1. Active the Wordress Hugopress plugin
1. Navigate to Hugopress Plugin menu item, and set REST endpoint to `http://listener:3000/hugopress`. Save changes
1. Clicking the "submit" button should give you a list of the preconstructed endpoints to allow for preliminary hugo triggering on wordpress publish actions.

## Directory Structure
* The `wp-listener` directory is an example API that performs actions based on the endpoints and data sent to it from wordpress.
* The `hugo-builder` directory is an example hugo project that can take directions from another API (via `server.js` script).
* The `wp-hugopress` wordpress plugin is a git submodule that you can find in `wp-content/plugins`. This plugin has the PHP logic that drives actions and events to push data to the given URL and endpoint on wordpress 'publish' action.

## Commands
| Command | Description |
|---------|-------------|
| `make` | Build images and services ( runs `docker-compose up --build`) |
| `make stop` | Stop and clean up services ( runs `docker-compose down`) |
| `./wp-cli-init.sh` | initialize wordpress admin and install plugins |

## Ports

| Port | Description |
|---------|-------------|
| `localhost:3000` | The WordPress site |
| `localhost:3030` | The Node Express server that Build Hugo |

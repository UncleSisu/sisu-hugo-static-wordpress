# sisu-hugo-static-wordpress

## Get Started
1. Run `make` to build images and services.
1. Run `make stop` to stop and clean up services.
1. Run `./wp-cli-init.sh` to initialize wordpress admin and install plugins.
1. Log into wordpress admin, with user & pass 'wordpress'.
1. Navigate to Hugopress Plugin menu item, and set REST endpoint to `http://listener:3000/hugopress`. Save changes, and then submission should give you a list of the preconstructed endpoints to allow for preliminary hugo triggering on wordpress publish actions.
1. The `wp-listener` directory is an example API that performs actions based on the endpoints and data sent to it from wordpress.
1. The `hugo-builder` directory is an example hugo project that can take directions from another API (via `server.js` script).
1. The `wp-hugopress` wordpress plugin is a git submodule that you can find in `wp-content/plugins`. This plugin has the PHP logic that drives actions and events to push data to the given URL and endpoint on wordpress 'publish' action.

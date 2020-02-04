# Getting Started

This will guide through the steps to install the sail cli and pushing this repo to a new app

## Installing App Sail

To install the sail cli run in your Mac terminal:

    bash <(curl -s https://appsail.nyc3.digitaloceanspaces.com/install)

## Downloading the source code

To download the demo app run in your Mac or Linux terminal:

	git clone https://github.com/digitalocean-appsail/sample-tomcat
	cd sample-tomcat

## Deploying App

    sail push

It will ask for an auth key if you haven't used sail before. Retrieve it from [the auth page](https://cloud.digitalocean.com/appsail/auth).

Then it will ask how to configure the app.
Answer the questions as follows:

    ✓ Who does this app belong to: <your_account>
    ✓ Is this app already live (on App Sail)?: No
    ✓ Name this app : sample-tomcat
    ✓ Need to set any env variables: No

    Let's configure your app for deployment:
    ✓ Installing configuration generators
    ✓ Choose your configuration preference: Manual...
    ✓ Which Dockerfile: Dockerfile
    ✓ Port to forward requests to: 8080
    ✓ What command will run the app: <leave empty>
    ✓ Do you need any background workers: No
    ✓ Do you need a database: No

After that, it will go through a deploy process. Once it's done, you can open the live app by following these steps:

	1. Go back to the auth page in your browser
	2. Click the 'Apps' link in the top left corner
	3. Select the app you just deployed
	4. Click the 'Live App' button in the top right part of the screen

The app URL can be found at:
http://<your app URL>/hello
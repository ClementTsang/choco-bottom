# choco-bottom

Repository to house choco files for [bottom](https://github.com/ClementTsang/bottom). See [here](https://community.chocolatey.org/packages/bottom) for the chocolatey package.

Generally, unless something goes wrong, updates to this repo are done through an automated hook when a stable version of bottom releases. This creates a PR with the necessary changes, with a quick check to see if an install and version check work.

To test and deploy, see [here](https://chocolatey.org/courses/creating-chocolatey-packages/building-testing-and-pushing) for more info. For your conveneince, though, the gist is that in an admin/elevated terminal, run the following to test building the package and installing:

```bash
choco pack
choco uninstall bottom          # Just to avoid having to force
choco install bottom -dv -s .
```

Then open a new terminal (does not need to be admin) to reload PATH and test that things work (it may automatically update as well, but just to be safe):

```bash
btm --version                   # Just in case, check again - it should match the new version
btm                             # Test changes and general usage quickly
```

If this is all successful, you can deploy:

```bash
choco push <PACKAGE_NAME>.nupkg -s https://push.chocolatey.org/
```

Note this requires linking your account API key to your machine. You can easily do so by logging in to Chocolatey and going to [your account](https://community.chocolatey.org/account), and following the instructions there.

After that, wait for the automated checks and you're done!

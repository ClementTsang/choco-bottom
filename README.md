# choco-bottom

Repository to house choco files for [bottom](https://github.com/ClementTsang/bottom). See [here](https://community.chocolatey.org/packages/bottom) for the chocolatey package.

To test and deploy, see [here](https://chocolatey.org/courses/creating-chocolatey-packages/building-testing-and-pushing) for more info, but the gist is, in an admin/elevated terminal, run:

```bash
choco pack
choco uninstall bottom          # Just to avoid having to force
choco install bottom -dv -s .

# Open a new terminal
btm --version # Should match the new version
btm # Test general usage makes sense
```

If successful, deploy:
```bash
choco push <PACKAGE_NAME>.nupkg -s https://push.chocolatey.org/
```

This requires linking your account API key to your machine. You can easily do so by logging in to Chocolatey and going to your API keys section, and following the instructions there.

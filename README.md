# choco-bottom

Repository to house choco files for [bottom](https://github.com/ClementTsang/bottom). See [here](https://community.chocolatey.org/packages/bottom) for the chocolatey package.

To test and deploy, see [here](https://chocolatey.org/courses/creating-chocolatey-packages/building-testing-and-pushing) for more info but the gist is, in an admin terminal:

```bash
choco pack
choco uninstall bottom          # Just to avoid having to force
choco install bottom -dv -s .
```

If successful:
```bash
choco push <PACKAGE_NAME>.nupkg -s https://push.chocolatey.org/
```

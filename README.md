grimoire
---

## Desc:
Buncha scripts for building things. These are tuned to my system, however you may like to checkout the metadata (`config.toml`) to see where the script was inherited from which will be much more generic.
See [grimoire-foursquare](https://git.sr.ht/~lgflorentino/grimoire-foursquare) for a similar project targeting Powershell and Microsoft Windows.

## Dependencies
See `grimoire.toml` for dependency versions
```
zsh git 
```

## Instructions
Branches are named after the target operating systems. A script should exist in the branch if it targets that operating system. There may exist differences between scripts which are named the same but are populated in different branches

The following command will list operating systems for which one or more scripts are supported.
```
git branch
```

### Project layout
```
- root folder
 |-- installers: Scripts for installing onto the base filesystem
 |  |--
 |-- builders: scripts for building in a sandboxed environment
    |--

```

### Example script folder layout
```
- root
 |- installers
   |- example-script
     |- env
     |- example-script.sh
     |- ?

```

## LICENSE

MIT. See LICENSE


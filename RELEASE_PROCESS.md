Release process
===============

On your checkout
----------------

* Update the version number and changelog, commit locally, push
    vi CHANGELOG.md
    vi fb_bookworm.gemspec
    # create a pull request and merge it

On a checkout of the **UPSTREAM** repo
--------------------------------------

* Add and push a tag:
    git tag -a v0.0.X -m 'version 0.0.X'
    git push origin --tags

* Build and push a release:
    gem build fb_bookworm.gemspec
    gem push fb_bookworm-0.0.X.gem

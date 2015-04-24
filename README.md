# Redmine editor patch

Use backticks for `pre`.

## Installation

To install the plugin clone the repro from github and migrate the database:

```
cd /path/to/redmine/
git clone git://github.com/dkalachov/redmine_editor_pre_backtick.git plugins/redmine_editor_pre_backtick
rake db:migrate_plugins RAILS_ENV=production
```

To uninstall the plugin migrate the database back and remove the plugin:

```
cd /path/to/redmine/
rake db:migrate:plugin NAME=redmine_editor_pre_backtick VERSION=0 RAILS_ENV=production
rm -rf plugins/redmine_editor_pre_backtick
```

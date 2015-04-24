require 'redmine'

Redmine::Plugin.register :redmine_editor_pre_backtick do
  name 'Backtick for pre'
  author 'Dima Kalachov'
  description 'Use backticks for pre element in editor.'
  version '0.1.0'
  requires_redmine :version_or_higher => '2.3.0'
end

if Rails::VERSION::MAJOR >= 3
  ActionDispatch::Callbacks.to_prepare do
    require_dependency 'editor_pre_backtick/hooks'
  end
else
  Dispatcher.to_prepare :redmine_editor_pre_backtick do
    require_dependency 'editor_pre_backtick/hooks'
  end
end

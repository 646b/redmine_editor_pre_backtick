module TildaToBacktick
  class Hooks < Redmine::Hook::ViewListener
    render_on :view_issues_form_details_bottom,
      :partial => "editor_pre_backtick/headers"
  end
end


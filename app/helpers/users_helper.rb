module UsersHelper
  def submit_text
    if current_page?(:controller => 'users', :action => 'edit', :id => @user.id.to_s) 
      "Save"
    elsif current_page?(:controller => 'users', :action => 'new') 
      "Create"
    elsif current_page?(:controller => 'users', :action => 'show')
      "Edit"
    end
  end
end
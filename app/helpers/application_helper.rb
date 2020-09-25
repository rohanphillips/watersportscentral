module ApplicationHelper
  def submit_text(model)
    if current_page?(:controller => controller_name, :action => 'edit', :id => model.id.to_s) 
      "Save"
    elsif current_page?(:controller => controller_name, :action => 'new') 
      "Create"
    elsif current_page?(:controller => controller_name, :action => 'show')
      "Edit"
    end
  end

  def label_text_field(model, field)
    if current_page?(:controller => controller_name, :action => 'show')
      model.text_field field, :readonly => true
    else
      model.text_field field
    end
  end
end

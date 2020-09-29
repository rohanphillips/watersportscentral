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

  def label_text_field(record, model, field)
    if current_page?(:controller => controller_name, :action => 'show', :id => record.id == nil ? 0 : record.id)
      model.text_field field, style: 'border: none;', :readonly => true
    else
      model.text_field field
    end
  end

  def questions_comments(record)
    test = (current_page?(:controller => controller_name, :action => 'show', :id => record.id == nil ? 0 : record.id))
    # byebug
  end

  def owns_record(record)
    record.user_id == nil ? true : record.user_id == current_user.id
  end
end

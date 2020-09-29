module LocationsHelper
  def new_button_url
    params[:user_id] ? new_user_location_url : new_location_url
  end
end
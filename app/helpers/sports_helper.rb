module SportsHelper
  def new_sport_button_url
    params[:user_id] ? new_user_sport_url : new_sport_url
  end
end

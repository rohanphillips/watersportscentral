module EventsHelper

  def sport_id_field(event)
    if event.sport.nil?
      select_tag "event[sport_id]", options_from_collection_for_select(Sport.all, :id, :name)
    else
      # hidden_field_tag "event[sport_id]", event.sport_id
      select_tag "event[sport_id]", options_from_collection_for_select(Sport.all, :id, :name, event.sport.id)
    end
  end

  def location_id_field(event)
    if event.location.nil?
      select_tag "event[location_id]", options_from_collection_for_select(Location.all, :id, :name)
    else
      # hidden_field_tag "event[sport_id]", event.sport_id
      select_tag "event[location_id]", options_from_collection_for_select(Location.all, :id, :name, event.location.id)
    end
  end

end
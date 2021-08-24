module EstatesHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_estates_path
    elsif action_name == 'edit'
      estate_path
    end
  end
end

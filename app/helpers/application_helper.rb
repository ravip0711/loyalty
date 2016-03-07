module ApplicationHelper

	def employee_logged_in?
    if !session[:current_employee_id].nil?
    	true
    else
    	false
    end
  end

end

module ApplicationHelper

	def employee_logged_in?
    if !session[:current_employee_id].nil?
    	true
    else
    	false
    end
  end

  def employee_log_out
  	session[current_employee_id] = nil
  end

end

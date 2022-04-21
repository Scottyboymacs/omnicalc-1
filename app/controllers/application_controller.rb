class ApplicationController < ActionController::Base
  layout("application.html.erb")
  def homepage
    #Pull the page homepage
    render({ :template => "form_templates/homepage".html_safe })
  end

  def pay_me
    #Pull the page pay_me
    render({ :template => "form_templates/pay_me".html_safe })
  end

  def rando
    #Pull the page rando
    render({ :template => "form_templates/rando".html_safe })
  end

  def square_root
    #Pull the page square_root
    render({ :template => "form_templates/square_root".html_safe })
  end

  def square
    #Pull the page square
    render({ :template => "form_templates/square".html_safe })
  end


end

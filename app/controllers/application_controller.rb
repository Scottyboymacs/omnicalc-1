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

  def payment_result
    #Calculate the monthly payment
    @apr = params.fetch("apr").to_f
    @prcnt_apr = @apr/100
    @numyears = params.fetch("numyears").to_i
    @principal = params.fetch("principal").to_f
    @payment = (@prcnt_apr/12)*@principal/(1-(1+@prcnt_apr/12)**(-@numyears*12))
    render({ :template => "form_templates/payment_result".html_safe })
  end

  def rando
    #Pull the page rando
    render({ :template => "form_templates/rando".html_safe })
  end

  def rando_result
    #Pull the page rando
    @min = params.fetch("lower").to_f
    @max = params.fetch("upper").to_i
    @randnum = rand((@min..@max))
    render({ :template => "form_templates/rando_result".html_safe })
  end

  def square_root
    #Pull the page square_root
    render({ :template => "form_templates/square_root".html_safe })
  end

  def square_root_results
    #Produce the root
    @num = params.fetch("number").to_f
    @num_root = Math.sqrt(@num)   
    render({ :template => "form_templates/square_root_results".html_safe })
  end

  def square
    #Pull the page square
    render({ :template => "form_templates/square".html_safe })
  end

  def square_results
    #Produce square results
    @num = params.fetch("number").to_f
    @num_square = @num * @num
    render({ :template => "form_templates/square_results".html_safe })
  end


end

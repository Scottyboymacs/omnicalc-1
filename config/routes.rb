Rails.application.routes.draw do
  self.get("/square/new", { :controller => "application", :action => "square"})
  get("/square/results", {:controller => "application", :action => "square_results"})
  
  self.get("/square_root/new", { :controller => "application", :action => "square_root"})
  get("/square_root/results", {:controller => "application", :action => "square_root_results"})

  self.get("/payment/new", { :controller => "application", :action => "pay_me"})
  get("/payment/results", {:controller => "application", :action => "payment_result"})

  self.get("/random/new", { :controller => "application", :action => "rando"})
  get("/random/results", {:controller => "application", :action => "rando_result"})

  
  self.get("/", { :controller => "application", :action => "homepage"})


end

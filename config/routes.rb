Rails.application.routes.draw do
  self.get("/square/new", { :controller => "application", :action => "square"})
  self.get("/square_root/new", { :controller => "application", :action => "square_root"})
  self.get("/payment/new", { :controller => "application", :action => "pay_me"})
  self.get("/random/new", { :controller => "application", :action => "rando"})
  self.get("/", { :controller => "application", :action => "homepage"})
end

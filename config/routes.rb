Rails.application.routes.draw do
  get("/", {:controller => "omnicalc", :action => "backhome"})
  get("/square/new", {:controller => "omnicalc", :action => "newsquare"})
  get("/square/results", {:controller => "omnicalc", :action => "squareresult"})
  get("/square_root/new", {:controller => "omnicalc", :action => "newsquareroot"})
  get("/square_root/results", {:controller => "omnicalc", :action => "squarerootresult"})
  get("/payment/new", {:controller => "dice", :action => "newpayment"})
  get("/payment/results", {:controller => "dice", :action => "paymentresult"})
  get("/random/new", {:controller => "dice", :action => "newrandom"})
  get("/random/results", {:controller => "dice", :action => "randomresult"})
end

Rails.application.routes.draw do
  get("/", {:controller => "omnicalc", :action => "backhome"})
  get("/square/new", {:controller => "omnicalc", :action => "newsquare"})
  get("/square/results", {:controller => "omnicalc", :action => "squareresult"})
  get("/square_root/new", {:controller => "omnicalc", :action => "newsquareroot"})
  get("/square_root/results", {:controller => "omnicalc", :action => "squarerootresult"})
  get("/payment/new", {:controller => "omnicalc", :action => "newpayment"})
  get("/payment/results", {:controller => "omnicalc", :action => "paymentresult"})
  get("/random/new", {:controller => "omnicalc", :action => "newrandom"})
  get("/random/results", {:controller => "omnicalc", :action => "randomresult"})
end

class OmnicalcController < ApplicationController
  def backhome
    render({:template => "new_square_calc"})
  end

  def newsquare
    render({:template => "new_square_calc"})
  end

  def squareresult
    @user_num = params[:users_number]
    @square_user_num = params[:users_number].to_f**2
    render({:template => "square_results"})
  end

  def newsquareroot
    render({:template => "new_square_root_calc"})
  end

  def squarerootresult
    @user_num = params[:users_number]
    @square_root_user_num = Math.sqrt(@user_num.to_f)
    render({:template => "square_root_results"})
  end

  def newpayment
    render({:template => "new_payment"})
  end

  def paymentresult
    @apr = params[:user_apr].to_f
    @years = params[:user_years].to_f
    @principal = params[:user_pv].to_f.round(2)
  
    monthly_interest_rate = (@apr / 12) / 100
    total_payments = @years * 12
    @payment = (@principal * monthly_interest_rate * (1 + monthly_interest_rate)**total_payments) / ((1 + monthly_interest_rate)**total_payments - 1)
    @payment = @payment.round(2)
   
    render({:template => "payment_results"})
  end

  def newrandom
    render({:template => "new_random"})
  end

  def randomresult
    @min = params[:user_min].to_f
    @max = params[:user_max].to_f
    @random_number= rand(@min..@max)
    render({:template => "random_result"})
  end
end

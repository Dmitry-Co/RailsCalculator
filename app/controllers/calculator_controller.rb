class CalculatorController < ApplicationController
  def index
    num1 = params[:num1].to_f
    eq = params[:eq]
    num2 = params[:num2].to_f

    @result = case eq
              when '*'
                num1 * num2
              when '/'
                num1 / num2
              when '+'
                num1 + num2
              when '-'
                num1 - num2
              else
                "Sorry, wrong operator!"
              end
  end
end

require 'bundler/setup'
Bundler.require

require_relative '../app/application'

class Application
  def call
    resp = Rack::Response.new

    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)

    resp.write "#{num_1}\n"
    resp.write "#{num_2}\n"
    resp.write "#{num_3}\n"

    if num_1 == num_2 and num_2 == num_3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end
  end
end

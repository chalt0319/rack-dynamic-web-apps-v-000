class Application

  def call(env)
    resp = Rack::Response.new

    num_1 = Kernel.rand(1..5)

    if num_1 == 1
      resp.write "Yes"
    elsif num_1 == 2
      resp.write "Outlook is good"
    elsif num_1 == 3
      resp.write "Signs point to no"
    elsif num_1 == 4
      resp.write "Try again"
    elsif num_1 == 5
      resp.write "No"
    end

    resp.finish
  end

end

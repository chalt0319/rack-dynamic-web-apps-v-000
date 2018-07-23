class Application

  def call(env)
    resp = Rack::Response.new

    num_1 = Kernel.rand(1..2)

    if num_1.even?
      resp.write "Yes"
    else
      resp.write "No"
    end

    resp.finish
  end

end

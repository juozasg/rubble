class Rubble

  def call(env)
    [200, { 'Content-Type' => 'text/html' }, 'Hello World2']
  end

end

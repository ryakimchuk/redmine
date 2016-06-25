class Registration
  def generate_email
    time = Time.new
    $email = (time.min.to_s + time.sec.to_s) + '@example.com'
  end

  def generate_username
    time = Time.new
    $username = 'testproverkin' + (time.min.to_s + time.sec.to_s)
  end

  def generate_project_name
    time = Time.new
    $projectname = 'My Project' + (time.min.to_s + time.sec.to_s)
  end

  def generate_project_id
    time = Time.new
    $projectid = 'myproject' + (time.min.to_s + time.sec.to_s)
  end
end
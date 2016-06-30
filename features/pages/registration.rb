class Registration
  def email
    @email
  end

  def generate_email
    time = Time.new
    @email = (time.min.to_s + time.sec.to_s) + '@example.com'
  end

  def username
    @username
  end

  def generate_username
    time = Time.new
    @username = 'testproverkin' + (time.min.to_s + time.sec.to_s)
  end

  def project
    @project_name
  end

  def generate_project_name
    time = Time.new
    @project_name = 'My Project' + (time.min.to_s + time.sec.to_s)
  end

  def project_id
    @project_id
  end

  def generate_project_id
    time = Time.new
    @project_id = 'myproject' + (time.min.to_s + time.sec.to_s)
  end
end
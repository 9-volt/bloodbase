class Volunteer < Card
  def subject
    "Dăruiește viață, salvează un suflet"
  end

  def percent_complete
    0
  end

  def link
    "/case/#{shortlink.code}"
  end
end

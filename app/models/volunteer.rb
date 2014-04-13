class Volunteer < Card
  def subject
    "Dăruiește viață, salvează un suflet"
  end

  def percent_complete
    0
  end

  def link
    "/volunteers?#{person_name}"
  end
end

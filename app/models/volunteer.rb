class Volunteer < Card
  def subject
    "Dăruiește viață, salvează un suflet.\nMai e nevoie de #{persons_required - donated} din #{persons_required}"
  end

  def percent_complete
    a = donated
    b = persons_required

    return 0   if a.zero?
    return 100 if a > b
    (a.to_f / b) * 100
  end

  def link
    "/volunteers?#{person_name}"
  end
end

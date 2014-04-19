puts "Seeding admin"
user = User.find_or_create_by_email :name => "Admin",
       :email => "admin@9-vo.lt",
       :password => "123456",
       :password_confirmation => "123456"
puts "user: " << user.name << " created"
puts "Seeding blood requests"

Volunteer.find_or_create_by_person_name!(
  :person_name       => "Volunteer",
  :short_description => "Dăruiește viață, salvează un suflet. ",
  :description       => "Fii sigur, fiecare din noi poate contribui la salvarea unei vieți omenești. Vino la un punct de donare și dăruiește viață!",
  :photo             => File.open("#{Rails.root}/public/images/volunteer.png"))

Volunteer.find_or_create_by_person_name!(
  :person_name      => "O(I)Rh+",
  :short_description => "Dăruiește viață, salvează un suflet. ",
  :description      => "Vino la centru și donează sânge de grupa I cu rezus pozitiv.",
  :photo            => File.open("#{Rails.root}/public/images/O(I)Rh+.png"))

Volunteer.find_or_create_by_person_name!(
  :person_name      => "O(I)Rh-",
  :short_description => "Dăruiește viață, salvează un suflet. ",
  :description      => "Vino la centru și donează sânge de grupa I cu rezus negativ.",
  :photo            => File.open("#{Rails.root}/public/images/O(I)Rh-.png"))

Volunteer.find_or_create_by_person_name!(
  :person_name      => "A(II)Rh+",
  :short_description => "Dăruiește viață, salvează un suflet. ",
  :description      => "Vino la centru și donează sânge de grupa II cu rezus pozitiv.",
  :photo            => File.open("#{Rails.root}/public/images/A(II)Rh+.png"))

Volunteer.find_or_create_by_person_name!(
  :person_name      => "A(II)Rh-",
  :short_description => "Dăruiește viață, salvează un suflet. ",
  :description      => "Vino la centru și donează sânge de grupa II cu rezus negativ.",
  :photo            => File.open("#{Rails.root}/public/images/A(II)Rh-.png"))

Volunteer.find_or_create_by_person_name!(
  :person_name      => "B(III)Rh+",
  :short_description => "Dăruiește viață, salvează un suflet. ",
  :description      => "Vino la centru și donează sânge de grupa III cu rezus pozitiv.",
  :photo            => File.open("#{Rails.root}/public/images/B(III)Rh+.png"))

Volunteer.find_or_create_by_person_name!(
  :person_name      => "B(III)Rh-",
  :short_description => "Dăruiește viață, salvează un suflet. ",
  :description      => "Vino la centru și donează sânge de grupa III cu rezus negativ.",
  :photo            => File.open("#{Rails.root}/public/images/B(III)Rh-.png"))

Volunteer.find_or_create_by_person_name!(
  :person_name      => "AB(IV)Rh+",
  :short_description => "Dăruiește viață, salvează un suflet. ",
  :description      => "Vino la centru și donează sânge de grupa IV cu rezus pozitiv.",
  :photo            => File.open("#{Rails.root}/public/images/AB(IV)Rh+.png"))

Volunteer.find_or_create_by_person_name!(
  :person_name      => "AB(IV)Rh-",
  :short_description => "Dăruiește viață, salvează un suflet. ",
  :description      => "Vino la centru și donează sânge de grupa IV cu rezus negativ.",
  :photo            => File.open("#{Rails.root}/public/images/AB(IV)Rh-.png"))

BloodRequest.find_or_create_by_email!(
  :person_name      => "Maria Lucaci",
  :issuer_name      => "Cristina Lucaci",
  :contact_number   => "123456789",
  :hospital         => "Spitalul Nr5",
  :section          => "Traumatologie",
  :description      => "Tânăra Cristina Lucaci face un apel de ajutor pentru bunica sa Maria Lucaci care a suferit un accident rutier si are nevoie urgent de sange.",
  :email            => "c.lucaci@example.com",
  :photo            => File.open("#{Rails.root}/public/images/1.png"),
  :visible          => true,
  :persons_required => "7")

BloodRequest.find_or_create_by_email!(
  :person_name      => "Alexandru Ursachi",
  :issuer_name      => "Sergiu Ursachi",
  :contact_number   => "987654321",
  :hospital         => "Spitalul oncologic",
  :section          => "Oncologie",
  :description      => "Alexandru Ursachi la nici 7 ani suferă de o boală nemiloasă: LEUCEMIE ACUTĂ MIELOBLASTICĂ. In ianuarie, cu acordul medicilor de la Cimislia, baietelul se va afla internat la Chisinau si va avea nevoie de donatori de sange.",
  :email            => "s.ursachi@example.com",
  :photo            => File.open("#{Rails.root}/public/images/2.png"),
  :visible          => true,
  :persons_required => "11")

BloodRequest.find_or_create_by_email!(
  :person_name      => "Vitalie Mardare",
  :issuer_name      => "Anna Mardare",
  :contact_number   => "123123123",
  :hospital         => "Spitalul Nr5",
  :section          => "Traumatologie",
  :description      => "In septembrie 2013 proaspatul profesor universitar Vitalie Mardare a suferit un grav accident rutier si are nevoie urgent de donatori sange. Familia acestuia face un apel catre perosanele care il pot ajuta.",
  :email            => "a.mardare@example.com",
  :photo            => File.open("#{Rails.root}/public/images/3.png"),
  :visible          => true,
  :persons_required => "5")

BloodRequest.find_or_create_by_email!(
  :person_name      => "Ivan D",
  :issuer_name      => "Alex D",
  :contact_number   => "123153123",
  :hospital         => "Spitalul Nr1",
  :section          => "Chirurgie",
  :description      => "Se caută urgent donatori cu grupa sanguină A2-Rh negativ pentru un tânăr de 24 de ani, suferind de aplazie medulară şi căruia urmează să i se facă un transplant medular.",
  :email            => "alex.d@example.com",
  :photo            => File.open("#{Rails.root}/public/images/4.jpg"),
  :visible          => true,
  :persons_required => "5")

BloodRequest.find_or_create_by_email!(
  :person_name      => "Anastasia Condrat",
  :issuer_name      => "Elena Condrat",
  :contact_number   => "12323453243",
  :hospital         => "Spitalul Nr5",
  :section          => "Traumatologie",
  :description      => "Anastasia Condrat, studenta anul 3 la microbiologie a suferit un grav accident de parasutism. Anastasia acum se afla inafara oricarui pericol insa are nevoie urgent de cantitati mari sange pentru recuperare. Familia acestia face un apel catre toti oamenii de buna credinta ce o pot ajuta.",
  :email            => "elena.c@example.com",
  :photo            => File.open("#{Rails.root}/public/images/5.png"),
  :visible          => true,
  :persons_required => "5")

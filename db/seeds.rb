# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.new(email: "quentin@desportconseil.com", password:123456)
u1.first_name = "Quentin"
u1.last_name = "Ramnout"
u1.sexe = "H"
u1.photo_url = "http://res.cloudinary.com/dsczxfht7/image/upload/v1484832213/quentin_fmzesa.jpg"
u1.save

u2 = User.new(email: "buddha@desport.com", password: 123456)
u2.first_name = "Buddha"
u2.last_name = "Lover"
u2.sexe = "unknown"
u2.photo_url = "http://res.cloudinary.com/dsczxfht7/image/upload/c_scale,w_158/v1484846282/buddha.png"
u2.save

u3 = User.new(email: "laure@desport.com", password: 123456)
u3.first_name = "Laure"
u3.last_name = "Michtone"
u3.sexe = "F"
u3.photo_url = "http://res.cloudinary.com/dsczxfht7/image/upload/c_scale,w_234/v1484846370/Capture_d_e\%CC\%81cran_2017-01-19_a\%CC%80_18.19.17_faa9su.png"
u3.save

u4 = User.new(email: "usain@desport.com", password: 123456)
u4.first_name = "Usain"
u4.last_name = "Bolt"
u4.sexe = "M"
u4.photo_url = "http://res.cloudinary.com/dsczxfht7/image/upload/c_scale,w_165/v1484846639/usain.png"
u4.save

c1 = Course.new
c1.name = "Zumba"
c1.place = "Siege Sociale - Salle 521"
c1.day = Date.today
c1.start_hour = "15:30:00".to_time
c1.end_hour = "16:30:00".to_time
c1.save

coach1 = Coaching.new
coach1.user = u3
coach1.course = c1
coach1.save

c2 = Course.new
c2.name = "Course a pied"
c2.place = "Devant le local a velo"
c2.day = Date.today + 1
c2.start_hour = "12:30:00".to_time
c2.end_hour = "13:30:00".to_time
c2.save

coach2 = Coaching.new
coach2.user = u4
coach2.course = c2
coach2.save

c3 = Course.new
c3.name = "Yoga Zen"
c3.place = "Salle 455 B, 3e etage"
c3.day = Date.today + 10
c3.start_hour = "9:30:00".to_time
c3.end_hour = "10:30:00".to_time
c3.save

coach3 = Coaching.new
coach3.user = u2
coach3.course = c3
coach3.save

c4 = Course.new
c4.name = "Football Challenge"
c4.place = "Neuilly sur Seine"
c4.day = Date.today - 10
c4.start_hour = "19:30:00".to_time
c4.end_hour = "20:30:00".to_time
c4.save


m1 = Message.new
m1.user = u1
m1.title = "RDV aujourd'hui à 12h30 salle B pour le course de Yoga !"
m1.content = "Pret pour le cours de Yoga ? N'oubliez pas votre paire de chaussettes et votre serviette ! Claire la professeur de Yoga sera la 5 minutes avant pour se preparer"
m1.save

m2 = Message.new
m2.user = u1
m2.title = "Merci d'être venu !"
m2.content = "Juliette vous a trouvé en forme pour le cours de tennis et vous avez tous fait de grands progrès <br>! N'hésitez pas à nous faire de retours si vous voulez faire quelque chose de différent la prochaine fois. <br> Bonne journée :) <br> Quentin"
m2.read = true
m2.save

q1 = Questionnaire.new
q1.title = "Premier diagnostic"
q1.description = "blablab lbala blabla blabla"
q1.url = ""
q1.save

q2 = Questionnaire.new
q2.title = "Retour sur vos activités"
q2.description = "blablab lbala blabla blabla"
q2.url = ""
q2.save

conseil1 = Conseil.new
conseil1.title = "Grand froid et sport : on fait quoi ?"
conseil1.photo_url = "https://medias.lequipe.fr/img-photo-jpg/une-vague-de-froid-traverse-la-france-en-ce-mois-de-janvier-2017/1500000000778873/0:0,990:660-624-416-75/e13a7.jpg"
conseil1.description = "Tout le monde en parle... Une vague de froid exceptionnelle traverse la France. Peut-on faire du sport quand les températures sont aussi basses ? Nous avons posé la question au médecin du sport Walter Pagliano."
conseil1.content = "<p>La vague de froid exceptionnelle qui traverse notre pays appelle à la plus grande vigilance. L'agence nationale de santé publique multiplie d'ailleurs les messages de prévention : \"Si je fais des efforts physiques en plein air, je risque d'aggraver d'éventuels problèmes cardio-vasculaires\", \"Je limite les efforts physiques, comme courir\"... Alors, doit-on arrêter de faire du sport tant que les températures ne sont pas remontées ? « Dans ces conditions extrêmes, de froid ou de chaud d'ailleurs, avec la canicule, on conseille de ne pas faire de sport », explique Walter Pagliano, médecin du sport et coordinateur du centre médico-sportif de Clermont-Ferrand (Auvergne-Rhône-Alpes). ...<p>"
conseil1.save

conseil2 = Conseil.new
conseil2.title = "Le vélo n'a pas la cote : seulement 2\% des Français actifs l'utilisent pour aller au travail"
conseil2.photo_url = "https://medias.lequipe.fr/img-ilosport-jpg/v-lo-ville/1500000000549620/0-624-416-75/50ae3.jpg"
conseil2.description = "Distancé par la voiture, mais aussi par les transports en commun et par la marche à pied, le vélo est en queue de peloton des moyens de locomotion. Seuls 2\% des Français se rendent sur leur lieu de travail en pédalant, selon l'Insee."
conseil2.content = "<p>Qui dit vélo, dit Tour de France... Bernard Hinault, dernier vainqueur tricolore de la Grande Boucle en 1985, attend un successeur depuis plus de 30 ans. Et peu de ses compatriotes se donnent la chance de se découvrir une vocation en allant travailler.<br>En 2015, ils étaient 500 000 (soit 1.9% des actifs ayant un emploi) à se rendre au travail à vélo, d'après l'enquête annuelle de recensement de l'Insee. La bicyclette est aussi utilisée que les deux-roues motorisés, mais bien moins que les véhicules automobiles (70.6%), que les transports en commun (14.8%) et même que la marche à pied (6.3%).<br><b>3-4 kilomètres : la distance la plus parcourue à vélo</b></p>"
conseil2.save



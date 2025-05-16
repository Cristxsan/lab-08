u1 = User.create!(first_name: "Camila", last_name: "Pérez", email: "camila.perez@gmail.com")
u2 = User.create!(first_name: "Diego", last_name: "González", email: "diego.gonzalez@gmail.com")
u3 = User.create!(first_name: "Fernanda", last_name: "Rojas", email: "fernanda.rojas@gmail.com")
u4 = User.create!(first_name: "Matías", last_name: "López", email: "matias.lopez@gmail.com")
u5 = User.create!(first_name: "Valentina", last_name: "Muñoz", email: "valentina.munoz@gmail.com")
u6 = User.create!(first_name: "Sebastián", last_name: "Ramírez", email: "sebastian.ramirez@gmail.com")
u7 = User.create!(first_name: "Ignacia", last_name: "Torres", email: "ignacia.torres@gmail.com")
u8 = User.create!(first_name: "Benjamín", last_name: "Fuentes", email: "benjamin.fuentes@gmail.com")
u9 = User.create!(first_name: "Antonia", last_name: "Castillo", email: "antonia.castillo@gmail.com")
u10 = User.create!(first_name: "Joaquín", last_name: "Vera", email: "joaquin.vera@gmail.com")

c1 = Chat.create!(sender_id: u1.id, receiver_id: u2.id)
c2 = Chat.create!(sender_id: u3.id, receiver_id: u4.id)
c3 = Chat.create!(sender_id: u5.id, receiver_id: u6.id)
c4 = Chat.create!(sender_id: u7.id, receiver_id: u8.id)
c5 = Chat.create!(sender_id: u9.id, receiver_id: u10.id)

Message.create!(chat_id: c1.id, user_id: u1.id, body: "Hola Diego, ¿cómo estás?")
Message.create!(chat_id: c1.id, user_id: u2.id, body: "Hola Camila, ¿cómo estás?")

Message.create!(chat_id: c2.id, user_id: u3.id, body: "Hola Matías, ¿cómo estás?")
Message.create!(chat_id: c2.id, user_id: u4.id, body: "Hola Fernanda, ¿cómo estás?")

Message.create!(chat_id: c3.id, user_id: u5.id, body: "Hola Sebastián, ¿cómo estás?")
Message.create!(chat_id: c3.id, user_id: u6.id, body: "Hola Valentina, ¿cómo estás?")

Message.create!(chat_id: c4.id, user_id: u7.id, body: "Hola Benjamín, ¿cómo estás?")
Message.create!(chat_id: c4.id, user_id: u8.id, body: "Hola Ignacia, ¿cómo estás?")

Message.create!(chat_id: c5.id, user_id: u9.id, body: "Hola Joaquín, ¿cómo estás?")
Message.create!(chat_id: c5.id, user_id: u10.id, body: "Hola Antonia, ¿cómo estás?")


namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "GG0sha",
                 email: "gg0sha@ya.ru",
                 password: "09051945",
                 password_confirmation: "09051945",
                 admin: true)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end

  desc "Create admin user"
  task create_admin: :environment do
    User.create!(name: "admin",
                 email: "admin@admin.ru",
                 password: "admin1234",
                 password_confirmation: "admin1234",
                 admin: true)
  end

  desc "Create Group"
  task create_group: :environment do
    group = ["IP-камеры видеонаблюдения", "IP-видеорегистраторы",
             "Сетевые коммутаторы", "IP-видеосерверы",
             "Цифровые видеорегистраторы", "Аналоговые камеры наблюдения",
             "Мониторы видеонаблюдения", "Термокожухи"]
    group.each {|name| Group.create!(name: name)}
  end

  desc "Create Subgroup"
  task create_subgroup: :environment do
    subgroup = ["В стандартном исполнении (без объектива)", "Купольные",
            "Антивандальные ", "Уличные", "Скоростные купольные (уличное исполнение)",
            "Фиксированные малогабаритные", "Дополнительные аксессуары",
            "До 4-х видео потоков", "До 8-х видео потоков", "До 16-х видео потоков",
            "Сетевые коммутаторы","IP-видеосерверы","4-х канальные, Формат сжатия Н.264",
            "8-х канальные, Формат сжатия Н.264", "12-х канальные, Формат сжатия Н.264",
            "16-х канальные, Формат сжатия Н.264", "32-х канальные, Формат сжатия Н.264",
            "Автомобильные", "Автомобильные (гибридные)", "Миниатюрные",
            "Уличные (с ИК-подсветкой)", "Уличные (без ИК-подсветки)",
            "Миницилиндр", "Муляжи", "Соотношение сторон 4:3",
            "Соотношение сторон 16:9", "220 вольт с блоком питания DC 12 В",
            "12-ти вольтовый"]
    subgroup.each {|name| Subgroup.create!(name: name)}
  end
end

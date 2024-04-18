# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  # 社員デフォルト
  Employee.find_or_create_by!(email: "111@example.com") do |employee|
    employee.password = "1111111"
    employee.last_name = "YDOMS"
    employee.first_name = "一郎"
    employee.last_name_kana = "YDOMS"
    employee.first_name_kana = "イチロウ"
    employee.employee_number = "1"
    employee.phone_number = "11111111111"
    employee.car_number = "1111"
  end

    Employee.find_or_create_by!(email: "222@example.com") do |employee|
    employee.password = "2222222"
    employee.last_name = "YDOMS"
    employee.first_name = "二郎"
    employee.last_name_kana = "YDOMS"
    employee.first_name_kana = "ジロウ"
    employee.employee_number = "2"
    employee.phone_number = "22222222222"
    employee.car_number = "2222"
  end

  Employee.find_or_create_by!(email: "333@example.com") do |employee|
    employee.password = "3333333"
    employee.last_name = "YDOMS"
    employee.first_name = "三子"
    employee.last_name_kana = "YDOMS"
    employee.first_name_kana = "サンコ"
    employee.employee_number = "3"
    employee.phone_number = "33333333333"
    employee.car_number = "3333"
  end

  # 管理者デフォルト
  Admin.find_or_create_by!(email: "555@example.com") do |admin|
    admin.password = ENV['SECRET_KEY']
    admin.last_name = "YDOMS"
    admin.first_name = "管理者"
    admin.last_name_kana = "YDOMS"
    admin.first_name_kana = "カンリシャ"
    admin.employee_number = "5"
  end

  # ジャンルデフォルト
  Genre.find_or_create_by!(name: "A社") do |genre|
    genre.color = "salmon"
  end

  Genre.find_or_create_by!(name: "B社") do |genre|
    genre.color = "deepskyblue"
  end

  Genre.find_or_create_by!(name: "C社") do |genre|
    genre.color = "yellow"
  end

  Genre.find_or_create_by!(name: "D社") do |genre|
    genre.color = "greenyellow"
  end

  Genre.find_or_create_by!(name: "E社") do |genre|
    genre.color = "violet"
  end

  Genre.find_or_create_by!(name: "F社") do |genre|
    genre.color = "coral"
  end

  # 配送先デフォルト
  Address.find_or_create_by!(name: "池袋") do |address|
    address.genre_id = "1"
    address.phone_number = "11111111111"
    address.postal_code = "1111111"
    address.address = "東京都池袋"
  end

  Address.find_or_create_by!(name: "新宿") do |address|
    address.genre_id = "2"
    address.phone_number = "22222222222"
    address.postal_code = "2222222"
    address.address = "東京都新宿"
  end

  Address.find_or_create_by!(name: "八王子") do |address|
    address.genre_id = "3"
    address.phone_number = "33333333333"
    address.postal_code = "3333333"
    address.address = "東京都八王子"
  end

  # 商品デフォルト
  Item.find_or_create_by!(name: "食料品") do |item|
  end

  Item.find_or_create_by!(name: "日用品") do |item|
  end

  Item.find_or_create_by!(name: "精密機器") do |item|
  end

  # 仕事デフォルト
   Work.find_or_create_by!(date: "2024-03-27") do |work|
     work.item_id = "1"
     work.admin_id = "1"
     work.address_id = "1"
     work.employee_id = "2"
     work.start_time = "09:00"
     work.end_time = " 10:00 "
     work.amount = "1"
     work.status = "true"
   end

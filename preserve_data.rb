require 'json'
require_relative './book'
require_relative './student'
require_relative './teacher'
module PreserveData
  PERSON_FILE_NAME = './person.json'.freeze
  RENTALS_FILE_NAME = './rentals.json'.freeze
  BOOKS_FILE_NAME = './books.json'.freeze
  def save_to_file(file_name, data)
    File.write(file_name, JSON.pretty_generate(data))
  end
namespace :dev do
  desc 'Creates sample data for local development'
  task prime: ['db:setup'] do
    unless Rails.env.development?
      raise 'This task can only be run in the development environment'
    end

    create_talks
  end

  def create_talks
    puts 'Generating talks'

    talks = [
      { name: 'De PHP à Ruby', description: 'Sans les mains' },
      { name: 'De Ruby à PHP', description: 'Sans les dents'}
    ]

    talks.each do |talk|
      Talk.create(talk)
    end
  end
end

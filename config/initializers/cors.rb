Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:8080' # Replace with prod URL

    resource '*',
      headers: :any,
      methods: [:get]
  end
end

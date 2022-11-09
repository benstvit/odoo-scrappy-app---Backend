Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://benstvit.github.io/odoo-front/' # Replace with prod URL

    resource '*',
      headers: :any,
      methods: [:get]
  end
end

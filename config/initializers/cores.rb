Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:3005'  # Replace with your frontend application's URL
    resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options]
  end
end


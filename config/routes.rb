Rails.application.routes.draw do
  resources :universities do
    scope module: 'universities' do
    	resources :courses
      resources :alimentations
      resources :student_entities
      resources :teachers
      resources :campus
    end
  end
end

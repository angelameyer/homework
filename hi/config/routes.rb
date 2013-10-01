Hi::Application.routes.draw do
    root "cats#index"
    get "cats" => "cats#index"
end

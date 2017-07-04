class WelcomeController < ApplicationController
    def index
        @intro = Intro.first
        @ads = Ad.limit(3)
      end
end

class WelcomeController < ApplicationController
    def index
        @intro = Intro.first
      end
end

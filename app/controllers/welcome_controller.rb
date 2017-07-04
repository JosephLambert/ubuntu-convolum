class WelcomeController < ApplicationController
    def index
        @intro1 = Intro.first
        @intro2 = Intro.second
          # @intro3 = Intro.find(3)
          # @intro4 = Intro.find(4)
      end
end

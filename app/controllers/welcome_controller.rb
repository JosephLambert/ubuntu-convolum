class WelcomeController < ApplicationController
    def index
        @intro1 = Intro.find(1)
        @intro2 = Intro.find(2)
        @intro3 = Intro.find(3)
        @intro4 = Intro.find(4)
      end
end

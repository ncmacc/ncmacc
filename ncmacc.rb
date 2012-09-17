class Ncmacc < Sinatra::Base
  get '/' do
    @show_large_icons = true
    erb :index
  end

  get '/:controller/:page' do
    erb ("#{params[:controller]}/#{params[:page]}").to_sym
  end

  get '/:page' do
    erb params[:page].to_sym
  end
end

MUSIC_PROGRAMS = [["Studio Program", "studio_program"],
                  ["Chamber Music", "chamber_music"]]

PERFORMING_ARTS_PROGRAMS = [["Korean-American Youth Musical Group", "korean_american_youth_musical_group"],
                            ["Fillmore Youth, Drum and Dance", "fillmore_youth_drum_and_dance"]]     

WREACH_OUT_PROGRAMS = [["Children's Chorus", "childrens_chorus"],
                       ["Group Art Lessons", "group_art_lessons"],
                       ["Group Piano Lessons", "group_piano_lessons"],
                       ["Taekwondo", "taekwondo"],
                       ["Youth Development", "youth_development"]]


PROGRAMS = [["Music", MUSIC_PROGRAMS, "For musicians of all ages."],
            ["Performing Arts", PERFORMING_ARTS_PROGRAMS, "For young performers."],
            ["WREACH OUT", WREACH_OUT_PROGRAMS, "Free programs for community youths."]]

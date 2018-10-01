t = PryTheme.create :name => 'dark-plus' do
  author :name => 'Clay Dunston', :email => 'dunstontc@gmail.com'

  define_theme do
    class_ 'turquoise'
    class_variable 'sky02'
    comment 'fern_green'
    constant 'light_blue02'
    error :bg => 'white'
    float 'dark_tea_green'
    global_variable 'sky02'
    inline_delimiter 'orchid02'
    instance_variable 'sky02'
    integer 'dark_tea_green'
    keyword 'violaceous01'
    method 'gray_tea_green'
    predefined_constant 'light_blue02'
    symbol 'brass02'

    regexp do
      self_ 'amethyst01'
      char 'orchid02'
      content 'gray_tea_green'
      delimiter 'amethyst01'
      modifier 'amethyst01'
      escape 'brass02'
    end

    shell do
      self_ 'orchid02'
      char 'orchid02'
      content 'brass02'
      delimiter 'orchid02'
      escape 'orchid02'
    end

    string do
      self_ 'dark_salmon'
      char 'brass02'
      content 'dark_salmon'
      delimiter 'dark_salmon'
      escape 'brass02'
    end
  end
end

PryTheme::ThemeList.add_theme(t)

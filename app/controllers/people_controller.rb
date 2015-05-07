class PeopleController < ApplicationController
  def index
    @people = Person.all
    @hash = { name: 'josef', surname: 'zacek' }
    @array = [1, 2, 3, 4, 5]
    @hash_inside_array = [{ name: 'josef', surname: 'zacek' }, { name: 'mike', surname: 'smyth' }]
  end
end

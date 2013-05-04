module Goodreads
  module Series
    # Get series details
    # Annoyingly, there is random whitespace in the values returned by Series
    #
    def series(id, params={})
      params[:id] = id
      data = request('/series/show', params)
        
      Hashie::Mash.new(data['series'])
    end
  end
end



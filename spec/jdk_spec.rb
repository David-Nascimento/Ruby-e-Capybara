describe 'Meu primeiro projeto' do
    it 'Visitar site' do
        visit 'https://training-wheels-protocol.herokuapp.com'
        puts page.title
    end
end
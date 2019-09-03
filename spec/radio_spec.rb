describe 'Botões de Radio', :radio do
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/radios'
    end

    it 'Selecionar pelo ID' do
        choose('thor')
    end
    it 'Selecionar pelo ID' do
        choose('cap')
    end

    it 'Selecionar pelo Find CSS selector' do
        find('input[value=iron-man]').click
    end

    it 'Selecionar pelo Find CSS selector' do
        find('input[value=the-avengers]').click
    end

    it 'Selecionar pelo Find CSS selector' do
        find('input[value=guardians]').click
    end

    it 'Selecionar pelo Find CSS selector' do
        find('input[value=ant-man]').click
    end

    it 'Selecionar pelo Find CSS selector' do
        find('input[value=black-panther]').click
    end
    
    after(:each) do
        sleep 3
    end
end
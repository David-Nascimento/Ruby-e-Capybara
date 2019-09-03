describe 'Caixa de Opções', :dropdown do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
    end

    it 'Selecionar item especifico simples' do
        select('Bucky', from: 'dropdown')
    end


    it 'Busca sem ID' do
        drop = find('.avenger-list')
        drop.find('option', text: 'Loki').select_option
    end

    it 'Busca com All + Sample', :sample do
        drop = find('.avenger-list')
        drop.all('option').sample.select_option
    end

    after(:each) do
        sleep 3
    end
end
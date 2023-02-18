describe 'Caixa de Opções', :dropdown do
    before(:each) do
      visit '/dropdown'
    end
  
    context 'quando seleciona um item específico' do
      it 'deve selecionar o item correto' do
        select('Bucky', from: 'dropdown')
        expect(find('#dropdown').value).to eq 'option1'
      end
    end
  
    context 'quando busca um item sem ID' do
      it 'deve selecionar o item correto' do
        drop = find('.avenger-list')
        drop.find('option', text: 'Loki').select_option
        expect(find('#dropdown').value).to eq 'option2'
      end
    end
  
    context 'quando busca um item aleatório' do
      it 'deve selecionar um item aleatório' do
        drop = find('.avenger-list')
        drop.all('option').sample.select_option
        expect(find('#dropdown').value).not_to eq 'Selecione uma opção'
      end
    end
  
    after(:each) do
      sleep 3
    end
  end
  
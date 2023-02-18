describe 'Mouse Hover', :hovers do
    before(:each) do
      visit '/hovers'
    end
  
    it 'exibe a descrição quando passo o mouse no blade' do
      blade_card = find('img[alt=Blade]')
      blade_card.hover
      card_desc = find('div.figcaption h5')
      expect(card_desc.text).to eq 'Nome: Blade'
    end
  
    after(:each) do
      sleep(3)
    end
  end
  
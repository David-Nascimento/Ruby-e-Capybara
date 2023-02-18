describe 'Controles Dinâmicos', :dynamic do
    before(:each) do
      visit '/dynamic_controls'
    end
  
    it 'habilita o campo' do
      # verifica se o campo está desabilitado
      expect(page).to have_field('movie', disabled: true)
  
      # clica no botão para habilitar o campo
      click_button 'Habilita'
  
      # verifica se o campo foi habilitado
      expect(page).to have_field('movie', disabled: true)
    end
  
    after(:each) do
      sleep 3
    end
  end
  
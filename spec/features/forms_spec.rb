describe 'Forms', :forms do
    before(:each) do
      visit '/login'
    end
  
    it 'login com sucesso' do
      preencher_login('stark', 'jarvis!')
  
      click_button 'Login'
  
      expect(find('#flash').visible?).to be true
      expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
      expect(current_path).to eq '/secure'
    end
  
    it 'senha incorreta' do
      preencher_login('stark', 'jarvis')
  
      click_button 'Login'
  
      expect(find('#flash').visible?).to be true
      expect(find('#flash')).to have_content 'Senha é invalida!'
      expect(current_path).to eq '/login'
    end
  
    it 'usuário não cadastrado' do
      preencher_login('jarvis', 'stark')
  
      click_button 'Login'
  
      expect(find('#flash').visible?).to be true
      expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'
      expect(current_path).to eq '/login'
    end
  
    def preencher_login(usuario, senha)
      fill_in 'userId', with: usuario
      fill_in 'passId', with: senha
    end
  end
  
describe 'Forms', :forms do
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/login'
    end


    it 'Login com sucesso' do
        fill_in 'userId', with: 'stark'
        fill_in 'passId', with: 'jarvis!'

        click_button 'Login'

        expect(find('#flash').visible?).to eql true

        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

    end

    it 'senha incorreta' do
        fill_in 'userId', with: 'stark'
        fill_in 'passId', with: 'jarvis'

        click_button 'Login'
        
        expect(find('#flash').visible?).to eql true
        expect(find('#flash')).to have_content 'Senha é invalida!'

    end

    it 'usuário não cadastrado' do
        fill_in 'userId', with: 'jarvis'
        fill_in 'passId', with: 'stark'

        click_button 'Login'

        expect(find('#flash').visible?).to eql true
        expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'
    end
end
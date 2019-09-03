describe 'Marcação com Checkbox', :checkbox do
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/checkboxes'
    end

    it 'Marca um input' do
        check('thor')
    end

    it 'Desmarcar um input' do
        uncheck('antman')
    end

    it 'Marcando com Find set True' do
        find('input[value=cap]').set(true)
    end

    it 'Desmarcando com find set false' do
        find('input[value=guardians]').set(false)
    end


    after(:each) do
        sleep 3
    end
end
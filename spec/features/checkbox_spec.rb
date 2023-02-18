describe 'Marcação com Checkbox', :checkbox do
  before(:each) do
    visit '/checkboxes'
  end

  context 'quando marca um input' do
    it 'marca o checkbox correspondente' do
      check('thor')
      expect(find('input[value=thor]')).to be_checked
    end
  end

  context 'quando desmarca um input', :ant_man do
    it 'desmarca o checkbox correspondente' do
      uncheck('antman')
      expect(find('input[value=ant-man]')).not_to be_checked
    end
  end

  context 'usando find para marcar um input' do
    it 'marca o checkbox correspondente' do
      find('input[value=cap]').set(true)
      expect(find('input[value=cap]')).to be_checked
    end
  end

  context 'usando find para desmarcar um input' do
    it 'desmarca o checkbox correspondente' do
      find('input[value=guardians]').set(false)
      expect(find('input[value=guardians]')).not_to be_checked
    end
  end

  after(:each) do
    sleep 3
  end
end

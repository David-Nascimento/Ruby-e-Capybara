describe 'Upload', :upload do
    before(:each) do
        visit('/upload')
        @imagem = Dir.pwd + '/img/capybara_img.jpeg'
        @arquivo = Dir.pwd + '/img/arquivo.txt'
    end

    it 'Upload com arquivo texto' do
        attach_file('file-upload', @arquivo)
        click_button 'file-submit'

        expect(find('#uploaded-file').text).to eql 'arquivo.txt'
    end
    it 'Upload de imagem' do
        attach_file('file-upload', @imagem)
        click_button 'file-submit'

        div_img = find('#uploaded-file')
        expect(div_img.text).to eql 'capybara_img.jpeg'
    end
    after(:each) do
        sleep 3
    end
end
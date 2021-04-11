describe 'Mouse Hover', :hovers do
    before(:each) do
        visit '/hovers'
    end

    it 'quando passo o mouse no blade' do
        card = find('img[alt=Blade]')
        card.hover

        expect(page).to have_content 'Nome: Blade'
    end

    after(:each) do
        sleep 3
    end
end
# encoding: utf-8
# language: ja


step 'tfae サイトにアクセスする' do
  Capybara.app_host = "https://aeweb.tradefront.ne.jp"
  Capybara.current_driver = :poltergeist_debug
  #page.driver.save_screenshot('/tmp/tfae001.png')
end

step 'トップページを表示する' do
  visit 'https://aeweb.tradefront.ne.jp/tfae/login/LoginPage/open.do'
  Capybara.current_driver = :poltergeist_debug
  #page.driver.save_screenshot('/tmp/tfae001.png')
end


step '画面に:contextと表示されていること' do |context|
  expect(page).to have_content(context)
  Capybara.current_driver = :poltergeist_debug
  #page.driver.save_screenshot('/tmp/context.png')
end


#step 'ユーザIDとパスワードを入力する' do
step ':uidと:pwdを入力する' do |uid, pwd|
#  fill_in 'props.userId', :with => 'tomonaga'
#  fill_in 'props.password', :with => '1203mazx1'
  fill_in 'props.userId', :with => uid
  fill_in 'props.password', :with => pwd
  Capybara.current_driver = :poltergeist_debug
  #page.driver.save_screenshot('/tmp/tfae002.png')
end

step 'ログインボタンをクリックする' do
  click_button 'ログイン'
end


step '検索ボタンをクリックする' do
  #click_button 'search'
  #find_button('search').click
  find(:xpath, ".//*[@id='jouken']/table[2]/tbody/tr/td/input[1]").click()
end

step "画面にユーザ名 :user が表示されること" do |user|
  expect(page).to have_content(user)
end


step ':linksリンクをクリックする' do |links|
  #click_link links
  find_link(links).click
end

step '主催企業コード:shusaiKigyoCodeを入力する' do |shusaiKigyoCode|
  click_button 'closeB'
  fill_in 'props.shusaiKigyoCode', :with => shusaiKigyoCode
end

step 'ＡＥ取引先コード:aeTorihikisakiCodeを入力する' do |aeTorihikisakiCode|
  fill_in 'props.aeTorihikisakiCode', :with => aeTorihikisakiCode
  Capybara.current_driver = :poltergeist_debug
  #page.driver.save_screenshot('/tmp/tfae0.png')
end


step 'スクリーンショットを撮る' do
 # page.save_screenshot("/tmp/tfae.png")
 # visit 'https://aeweb.tradefront.ne.jp/tfae/login/LoginPage/open.do'
  Capybara.current_driver = :poltergeist_debug
  page.driver.save_screenshot('/tmp/tfae1.png')
end

step 'もう一枚スクリーンショットを撮る' do
 # page.save_screenshot("/tmp/tfae.png")
#  visit 'https://aeweb.tradefront.ne.jp/tfae/login/LoginPage/open.do'
  #Capybara.current_driver = :poltergeist_debug
  Capybara.current_session.driver.browser.resize(1200, 2500)
  page.driver.save_screenshot('/tmp/tfae2.png')
  Capybara.current_driver = :poltergeist_debug
end


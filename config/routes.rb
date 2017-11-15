Rails.application.routes.draw do
	mount Ckeditor::Engine => '/ckeditor'
  
	get '/admin' => 'admin#index'
  
	namespace :admin do
 		resources :materyals #, except: :index
    resources :konuanlatimis
    resources :duyurus
    resources :fotogaleris
    resources :videos
    resources :projes
    resources :unites
    resources :digersayfas
  end
	
	get '/admin/ogrencicalisma'	=> 'admin#ogrencicalisma'
	get '/admin/yapraktest' => 'admin/materyals#index', materyaltur: 1, title: 'Yaprak Test'
	get '/admin/denemesinavlari' => 'admin/materyals#index', materyaltur: 2, title: 'Deneme Sınavları'
	get '/admin/yazililar' => 'admin/materyals#index', materyaltur: 3, title: 'Yazılılar'
	get '/admin/calismakagitlari' => 'admin/materyals#index', materyaltur: 4, title: 'Çalışma Kağıtları'
	get '/admin/cikmissinavsorulari' => 'admin/materyals#index', materyaltur: 5, title: 'Çıkmış Sınav Soruları'
	get '/admin/kazanimlar' => 'admin/materyals#index', materyaltur: 6, title: 'Kazanımlar'
	get '/admin/yillikplan' => 'admin/materyals#index', materyaltur: 7, title: 'Yıllık Plan'
	get '/admin/gunlukplan' => 'admin/materyals#index', materyaltur: 8, title: 'Günlük Plan'
	get '/admin/bep' => 'admin/materyals#index', materyaltur: 9, title: 'BEP'

	# Anasayfa
  root to: 'ogrenci#index'
	
	# Konu Anlatimi 5-6-7-8 sinif
	get '/sinif5/konuanlatimi' => 'ogrenci#uniteler', sinif: 5	
	get '/sinif5/konuanlatimi/:unite_id' => 'ogrenci#unite_konu', sinif: 5
	get '/sinif5/konuanlatimi/konu/:unite_id' => 'ogrenci#konuanlatimi_incele', sinif: 5
 	
	get '/sinif6/konuanlatimi' => 'ogrenci#uniteler', sinif: 6	
	get '/sinif6/konuanlatimi/:unite_id' => 'ogrenci#unite_konu', sinif: 6
	get '/sinif6/konuanlatimi/konu/:unite_id' => 'ogrenci#konuanlatimi_incele', sinif:6
		
	get '/sinif7/konuanlatimi' => 'ogrenci#uniteler', sinif: 7	
	get '/sinif7/konuanlatimi/:unite_id' => 'ogrenci#unite_konu', sinif: 7
	get '/sinif7/konuanlatimi/konu/:unite_id' => 'ogrenci#konuanlatimi_incele', sinif:7
	
	get '/sinif8/konuanlatimi' => 'ogrenci#uniteler', sinif: 8	
	get '/sinif8/konuanlatimi/:unite_id' => 'ogrenci#unite_konu', sinif: 8
	get '/sinif8/konuanlatimi/konu/:unite_id' => 'ogrenci#konuanlatimi_incele', sinif:8

	# Yaprak Testler 5-6-7-8 sinif
	get '/sinif5/yapraktest' => 'ogrenci#yapraktest', sinif: 5, materyaltur: 1
	get '/sinif6/yapraktest' => 'ogrenci#yapraktest', sinif: 6, materyaltur: 1	
	get '/sinif7/yapraktest' => 'ogrenci#yapraktest', sinif: 7, materyaltur: 1
	get '/sinif8/yapraktest' => 'ogrenci#yapraktest', sinif: 8, materyaltur: 1	
	
	# Deneme 5-6-7-8 sinif
	get '/sinif5/deneme' => 'ogrenci#deneme', sinif: 5, materyaltur: 2
	get '/sinif5/deneme/:unite_id' => 'ogrenci#deneme_goruntule', sinif: 5, materyaltur: 2
	get '/sinif5/deneme/:unite_id/:id' => 'ogrenci#deneme_incele', sinif: 5, materyaltur: 2
	
  get '/sinif6/deneme' => 'ogrenci#deneme', sinif: 6, materyaltur: 2
  get '/sinif6/deneme/:unite_id' => 'ogrenci#deneme_goruntule', sinif: 6, materyaltur: 2
  get '/sinif6/deneme/:unite_id/:id' => 'ogrenci#deneme_incele', sinif: 6, materyaltur: 2
	
  get '/sinif7/deneme' => 'ogrenci#deneme', sinif: 7, materyaltur: 2	
  get '/sinif7/deneme/:unite_id' => 'ogrenci#deneme_goruntule', sinif: 7, materyaltur: 2	
  get '/sinif7/deneme/:unite_id/:id' => 'ogrenci#deneme_incele', sinif: 7, materyaltur: 2	
	
  get '/sinif8/deneme' => 'ogrenci#deneme', sinif: 8, materyaltur: 2	
  get '/sinif8/deneme/:unite_id' => 'ogrenci#deneme_goruntule', sinif: 8, materyaltur: 2	
  get '/sinif8/deneme/:unite_id/:id' => 'ogrenci#deneme_incele', sinif: 8, materyaltur: 2	

	# Yazililar 5-6-7-8 sinif
	get '/sinif5/yazili' => 'ogrenci#yazili', sinif: 5, materyaltur: 3
	get '/sinif6/yazili' => 'ogrenci#yazili', sinif: 6, materyaltur: 3	
	get '/sinif7/yazili' => 'ogrenci#yazili', sinif: 7, materyaltur: 3
	get '/sinif8/yazili' => 'ogrenci#yazili', sinif: 8, materyaltur: 3	
	
	# Calisma Kagitlari 5-6-7-8 sinif
	get '/sinif5/calismakagitlari' => 'ogrenci#calismakagitlari', sinif: 5, materyaltur: 4
	get '/sinif6/calismakagitlari' => 'ogrenci#calismakagitlari', sinif: 6, materyaltur: 4	
	get '/sinif7/calismakagitlari' => 'ogrenci#calismakagitlari', sinif: 7, materyaltur: 4
	get '/sinif8/calismakagitlari' => 'ogrenci#calismakagitlari', sinif: 8, materyaltur: 4	
	
	# Cikmis Sinav Sorulari 5-6-7-8 sinif
	get '/sinif5/cikmissinavsorulari' => 'ogrenci#cikmissinavsorulari', sinif: 5, materyaltur: 5
	get '/sinif6/cikmissinavsorulari' => 'ogrenci#cikmissinavsorulari', sinif: 6, materyaltur: 5	
	get '/sinif7/cikmissinavsorulari' => 'ogrenci#cikmissinavsorulari', sinif: 7, materyaltur: 5
	get '/sinif8/cikmissinavsorulari' => 'ogrenci#cikmissinavsorulari', sinif: 8, materyaltur: 5	
	
	# Kazanimlar 5-6-7-8 sinif
	get '/sinif5/kazanimlar' => 'ogrenci#kazanimlar', sinif: 5, materyaltur: 6
	get '/sinif6/kazanimlar' => 'ogrenci#kazanimlar', sinif: 6, materyaltur: 6	
	get '/sinif7/kazanimlar' => 'ogrenci#kazanimlar', sinif: 7, materyaltur: 6
	get '/sinif8/kazanimlar' => 'ogrenci#kazanimlar', sinif: 8, materyaltur: 6	
	
	# Yillik Plan 5-6-7-8 sinif
	get '/sinif5/yillikplan' => 'ogrenci#yillikplan', sinif: 5, materyaltur: 7
	get '/sinif6/yillikplan' => 'ogrenci#yillikplan', sinif: 6, materyaltur: 7	
	get '/sinif7/yillikplan' => 'ogrenci#yillikplan', sinif: 7, materyaltur: 7
	get '/sinif8/yillikplan' => 'ogrenci#yillikplan', sinif: 8, materyaltur: 7	
	
	# Gunluk Plan 5-6-7-8 sinif
	get '/sinif5/gunlukplan' => 'ogrenci#gunlukplan', sinif: 5, materyaltur: 8
	get '/sinif6/gunlukplan' => 'ogrenci#gunlukplan', sinif: 6, materyaltur: 8	
	get '/sinif7/gunlukplan' => 'ogrenci#gunlukplan', sinif: 7, materyaltur: 8
	get '/sinif8/gunlukplan' => 'ogrenci#gunlukplan', sinif: 8, materyaltur: 8	
	
	# BEP 5-6-7-8 sinif
	get '/sinif5/BEP' => 'ogrenci#bep', sinif: 5, materyaltur: 9
	get '/sinif6/BEP' => 'ogrenci#bep', sinif: 6, materyaltur: 9	
	get '/sinif7/BEP' => 'ogrenci#bep', sinif: 7, materyaltur: 9
	get '/sinif8/BEP' => 'ogrenci#bep', sinif: 8, materyaltur: 9	
	
	# Bilim Fuari
	get '/bilimfuari' => 'ogrenci#bilimfuari'
	get '/bilimfuari/proje/:id' => 'ogrenci#proje_show'	

	# Fotogaleri
	get '/fotogaleri' => 'ogrenci#fotogaleri'

	# Video
	get '/deneyvideolari' => 'ogrenci#video', tur: 0
	get '/digervideolar' => 'ogrenci#video', tur: 1
	
	# Diger Sayfalar
	match '/gonderinyayinlayalim' => 'ogrenci#ogrencicalisma', via: :post
	get '/gonderinyayinlayalim' => 'ogrenci#gonderinyayinlayalim'
	
	get '/onerivesikayet' => 'ogrenci#onerivesikayet'
	get '/biliminsanlari' => 'ogrenci#biliminsanlari'
	get '/resmievraklar' => 'ogrenci#resmievraklar'
	get '/ilgincbilgiler' => 'ogrenci#ilgincbilgiler'
	get '/motivasyon' => 'ogrenci#motivasyon'
	get '/sinavsistemi' => 'ogrenci#sinavsistemi'

	devise_for :users 
end

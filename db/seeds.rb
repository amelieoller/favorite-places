rick = User.create(name: "Rick Sanchez", password: "getschwifty")
jon = User.create(name: "Jon Snow", password: "knowsnothing")

usa = Country.create(name: "USA")
germany = Country.create(name: "Germany")

Place.create(
	name: "Fisherman's Warf", 
	city: "San Francisco", 
	country: usa, 
	user: rick, 
	image_url: "https://redtricom.files.wordpress.com/2018/09/fishermans-wharf_main_flickr.jpg?w=605&h=404"
	)

Place.create(
	name: "Space Needle", 
	city: "Seattle", 
	country: usa, 
	user: jon, 
	image_url: "https://www.gannett-cdn.com/-mm-/daf3abd6a0bc7d4182ef759ca62ae0c717584a50/c=434-0-5414-3744/local/-/media/2018/05/24/USATODAY/USATODAY/636627632108569817-1-Space-Needle-on-the-Seattle-skyline---looking-south-with-Mt.-Rainier-in-the-background---courtesy-Space-Needle-LLC.jpg?width=520&height=390&fit=crop"
	)

Place.create(
	name: "Mauerpark", 
	city: "Berlin", 
	country: germany, 
	user: jon, 
	image_url: "https://www.tripsavvy.com/thmb/mf2jsbgkm-9uVVa0b_TapYDbOSs=/960x0/filters:no_upscale():max_bytes(150000):strip_icc()/BerlinmauerparkbearpitkaraokeGettyImages-664447186hanohiki-5b5a2d4dc9e77c007bd6906c.jpg"
	)
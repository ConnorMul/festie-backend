Favorite.destroy_all
User.destroy_all

Review.destroy_all
Festival.destroy_all


connor = User.create(username: "Connor", password_digest: "111", email: "mulhollandconnor@icloud.com")

coachella = Festival.create(name: "Coachella", dates: ["04/10/2020", "04/12/2020"], image: "/imgs/coachella.jpeg", city: "Indio, CA")
bonnaroo = Festival.create(name: "Bonnaroo", dates: ["06/11/2020", "06/14/2020"], image: "/imgs/bonnaroo.jpg", city: "Manchester, TN")
splash_house = Festival.create(name: "Splash House", dates: ["08/09/2020", "08/11/2020"], image: "/imgs/splash.jpg", city: "Indio, CA")
lollapalooza = Festival.create(name: "Lollapalooza", dates: ["07/30/2020", "08/02/2020"], image: "/imgs/lolla.png", city: "Chicago, IL")
governors_ball = Festival.create(name: "Governors Ball", dates: ["06/05/2020", "06/07/2020"], image: "/imgs/governors.png", city: "New York, NY")
outside_lands = Festival.create(name: "Outside Lands", dates: ["08/06/2020", "08/08/2020"], image: "/imgs/outside.jpg", city: "San Francisco, CA")
edc_vegas = Festival.create(name: "EDC Las Vegas", dates: ["05/15/2020", "05/17/2020"], image: "/imgs/edc.jpg", city: "Las Vegas, NV")
sxsw = Festival.create(name: "SXSW", dates: ["03/13/2020", "03/22/2020"], image: "/imgs/SXSW.png", city: "Austin, TX")
pitchfork = Festival.create(name: "Pitchfork", dates: ["07/17/2020", "07/19/2020"], image: "/imgs/pitchfork.jpeg", city: "Los Angeles, CA")
acl = Festival.create(name: "Austin City Limits", dates: ["10/04/2019", "10/06/2019"], image: "/imgs/acl.jpg", city: "Ausin, TX")
ultra = Festival.create(name: "Ultra Music Festival", dates: ["03/20/2020", "03/22/2020"], image: "/imgs/ultra.jpg", city: "Miami, FL")
new_orleans_jazz = Festival.create(name: "New Orleans Jazz & Heritage Festival", dates: ["04/23/2020", "05/03/2020"], image: "/imgs/orleans.jpeg", city: "New Orleans, MY")
electric_zoo = Festival.create(name: "Electric Zoo", dates: ["08/30/2019", "09/01/2020"], image: "/imgs/ezoo.jpg", city: "New York, NY")
electric_forest = Festival.create(name: "Electric Forest", dates: ["06/25/2020", "06/28/2020"], image: "/imgs/forest.jpg", city: "Rothbury, MI")
burning_man = Festival.create(name: "Burning Man", dates: ["08/30/2020" "09/06/2020"], image: "/imgs/burning.jpg", city: "Black Rock Desert, NV")
iii_points = Festival.create(name: "III points", dates: ["05/01/2020", "05/02/2020"], image: "/imgs/iii.jpg", city: "Miami, FL")
firefly = Festival.create(name: "Firefly", dates: ["06/18/2020", "06/21/2020"], image: "/imgs/firefly.jpeg", city: "Dover, DE")
desert_daze = Festival.create(name: "Desert Daze", dates: ["10/08/2020", "10/11/2020"], image: "/imgs/desert.png", city: "Moreno Beach, CA")
rolling_loud = Festival.create(name: "Rolling Loud", dates: ["05/08/2020", "05/10/2020"], image: "/imgs/rolling.jpg", city: "Miami, FL")
stagecoach = Festival.create(name: "Stagecoach", dates: ["04/24/2020", "04/26/2020"], image: "/imgs/stagecoach.jpg", city: "Indio, CA")
bottlerock = Festival.create(name: "BottleRock", dates: ["05/22/2020", "05/24/2020"], image: "/imgs/bottlerock.jpg", city: "Napa, CA")
cma_music_fest = Festival.create(name: "CMA Festival", dates: ["06/04/2020", "06/07/2020"], image: "/imgs/cma.jpg", city: "Nashville, TN")
glastonbury = Festival.create(name: "Glastonbury", dates: ["06/24/2020", "06/28/2020"], image: "/imgs/glasto.png", city: "Worthy Farm, Pilton, Somerset")
shaky_knees = Festival.create(name: "Shaky Knees", dates: ["05/01/2020", "05/03/2020"], image: "/imgs/shaky.jpg", city: "Atlanta, GA")
life_is_beautiful = Festival.create(name: "Life Is Beautiful", dates: ["09/20/2020", "09/22/2020"], image: "/imgs/lib.jpg", city: "Las Vegas, NV")
lightning_in_a_bottle = Festival.create(name: "Lightning In A Bottle", dates: ["05/20/2020", "05/25/2020"], image: "/imgs/lightning.jpg", city: "Buena Vista Lake, CA")
boston_calling = Festival.create(name: "Boston Calling", dates: ["05/22/2020", "05/24/2020"], image: "/imgs/boston.jpg", city: "Boston, MA")
spring_awakening = Festival.create(name: "Spring Awakening", dates: ["06/07/2019", "06/09/2019"], image: "/imgs/spring.jpg", city: "Chicago, IL")
sonic_bloom = Festival.create(name: "Sonic Bloom", dates: ["06/18/2020", "6/21/2020"], image: "/imgs/sonic.jpg", city: "Hummingbird Ranch, CO")
wonderstruck = Festival.create(name: "Wonderstruck", dates: ["06/06/2020", "06/07/2020"], image: "/imgs/wonderstruck.jpg", city: "Cleveland, OH")
beyond_wonderland = Festival.create(name: "Beyond Wonderland", dates: ["03/20/2020", "03/21/2020"], image: "/imgs/beyond.jpg", city: "San Bernadino, CA")
summerfest = Festival.create(name: "Summerfest", dates: ["06/26/2020", "06/30/2020"], image: "/imgs/summerfest.png", city: "Milwaukee, WI")
camp_bisco = Festival.create(name: "Camp Bisco", dates: ["07/09/2020", "07/11/2020"], image: "/imgs/bisco.jpg", city: "Scranton, PA")
okeechobee = Festival.create(name: "Okeechobee", dates: ["03/05/2020", "03/08/2020"], image: "/imgs/okee.png", city: "Sunshine Grove, FL")

r1 = Review.create(stars: 5, content: "Coachella changed my life!", user: connor, festival: coachella)
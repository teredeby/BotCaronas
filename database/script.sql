create table caroneiros(
	id bigserial UNIQUE PRIMARY KEY,
	chat_id int8 NOT NULL,
	user_id int8 NOT NULL,
	username varchar(256),
	spots varchar(256),
	location varchar(256),
	travel_hour time,
	route bit not null,
	expiration int8 NULL,
	CONSTRAINT caroneiros_pkey PRIMARY KEY (id)
);

create table livro (

	livro_id bigserial  UNIQUE PRIMARY KEY, 
	titulo text not null,
	ofensivo boolean not null default false

);

create table fortune (

	frase_id bigserial  UNIQUE PRIMARY KEY,
	livro_id int not null,
	frase character varying(1000) not null
	
);

alter table fortune add foreign key (livro_id) references livro(livro_id);


insert into livro (titulo, ofensivo) values 
('Star Trek',false),
('Star Trek',true),
('Murphy',false),
('Murphy',true);

insert into fortune (livro_id,frase) values 
(2,'<BR>
(1)	Anyone can make a decision given enough facts.<BR>
(2)	A good manager can make a decision without enough<BR>
	facts.<BR>
(3)	A perfect manager can operate in perfect ignorance.<BR>
'),(2,'<BR>
(1)	Everything depends.<BR>
(2)	Nothing is always.<BR>
(3)	Everything is sometimes.<BR>
'),(2,'<BR>
(1)	Everything is a system.<BR>
(2)	Everything is part of a larger system.<BR>
(3)	The universe is infinitely systematized both upward<BR>
	(larger systems) and downward (smaller systems).<BR>
(4)	All systems are infinitely complex.  (The illusion<BR>
	of simplicity comes from focusing attention on<BR>
	one or a few variables).<BR>
'),(2,'<BR>
(1)	If it''s green or it wiggles, it''s biology.<BR>
(2)	If it stinks, it''s chemistry.<BR>
(3)	If it doesn''t work, it''s physics.<BR>
'),(2,'<BR>
(1)	If the weather is extremely bad, church<BR>
	attendance will be down.<BR>
(2)	If the weather is extremely good, church<BR>
	attendance will be down.<BR>
(3)	If the bulletin covers are in short supply<BR>
	church attendance will exceed all expectations.<BR>
'),(2,'<BR>
(1)	If you like it, they don''t have it in your size.<BR>
(2)	If you like it and it''s in your size, it doesn''t<BR>
	fit anyway.<BR>
(4)	If you like it and it fits, you can''t afford it.<BR>
(5)	If you like it, it fits and you can afford it, it<BR>
	falls apart the first time you wear it.<BR>
'),(2,'<BR>
(1)	Never draw what you can copy.<BR>
(2)	Never copy what you can trace.<BR>
(3)	Never trace what you can cut out and paste down.<BR>
'),(2,'<BR>
(1)	The telephone will ring when you are outside the<BR>
	door, fumbling for your keys.<BR>
<BR>
(2)	You will reach it just in time to hear the click<BR>
	of the caller hanging up.<BR>
'),(2,'<BR>
1) Things will get worse before they get better.<BR>
2) Who said things would get better?<BR>
'),(2,'<BR>
80 percent of the final exam will be based on the one lecture<BR>
you missed about the one book you didn''t read.<BR>
'),(2,'<BR>
90 percent of everything is crud.<BR>
'),(2,'<BR>
A $300.00 picture tube will protect a 10c fuse by blowing<BR>
first.<BR>
'),(2,'<BR>
A 60-day warranty guarantees that the product will<BR>
self-destruct on the 61st day.<BR>
'),(2,'<BR>
A bird in hand is safer than one overhead.<BR>
'),(2,'<BR>
A bird in the hand is dead.<BR>
'),(2,'<BR>
A budget is a plan that falls apart when the plumber<BR>
has to make an emergency visit.<BR>
'),(2,'<BR>
A budget is buying a dress two sizes too small because<BR>
it was marked down.<BR>
'),(2,'<BR>
A budget is saving quarters in a mason jar for<BR>
Christmas and spending them by Easter.<BR>
'),(2,'<BR>
A budget is spending $15.00 on gas to drive to a<BR>
shopping mall to save $4.30 on a 20 pound turkey.<BR>
'),(2,'<BR>
A budget is trying to figure out how the family next<BR>
door is doing it.<BR>
'),(2,'<BR>
A budget is trying to make $25.00 go as far today as<BR>
it did when you were first married.<BR>
'),(2,'<BR>
A budget is wondering why you should balance yours<BR>
if the government can not balance theirs.<BR>
'),(2,'<BR>
A car and a truck approaching each other on an otherwise<BR>
deserted road will meet at the narrow bridge.<BR>
'),(2,'<BR>
A carelessly planned project will take three times<BR>
longer than expected; a carefully planned project will<BR>
take only twice as long.<BR>
'),(2,'<BR>
A child will not spill on a dirty floor.<BR>
'),(2,'<BR>
A closed mouth gathers no foot.<BR>
'),(2,'<BR>
A complex system designed from scratch never works and<BR>
cannot be patched up to make it work.  You have to start<BR>
over, beginning with a working simple system.<BR>
'),(2,'<BR>
A complex system that works is invariably found to have<BR>
evolved from a simple system that works.<BR>
'),(2,'<BR>
A conclusion is the place where you got tired of thinking.<BR>
'),(2,'<BR>
A consultant is an ordinary person a long way from home.<BR>
'),(2,'<BR>
A coup that is known in advance is a coup that does not<BR>
take place.<BR>
'),(2,'<BR>
A crisis is when you can''t say ''let''s forget the<BR>
whole thing''.<BR>
'),(2,'<BR>
A day without sunshine ....<BR>
is like ... night!<BR>
'),(2,'<BR>
A disagreeable task is its own reward.<BR>
'),(2,'<BR>
A drug is that substance which, when injected into a<BR>
rat, will produce a scientific report.<BR>
'),(2,'<BR>
A fail-safe circuit will destroy others.<BR>
		-- Klipstein<BR>
'),(2,'<BR>
A fool and his money are invited places.<BR>
'),(2,'<BR>
A fool and his money soon go partying.<BR>
'),(2,'<BR>
A fool and your money are soon partners.<BR>
'),(2,'<BR>
A free agent is anything but.<BR>
'),(2,'<BR>
A hug is the perfect gift - one size fits all, and<BR>
nobody minds if you exchange it.<BR>
'),(2,'<BR>
A large system, produced by expanding the dimensions of<BR>
a smaller system, does not behave like the smaller system.<BR>
'),(2,'<BR>
A little ambiguity never hurt anyone.<BR>
'),(2,'<BR>
A little humility is arrogance.<BR>
'),(2,'<BR>
A little ignorance can go a long way.<BR>
'),(2,'<BR>
A lot of what appears to be progress is just so much<BR>
technological roccoco.<BR>
'),(2,'<BR>
A man of quality does not fear a woman seeking equality.<BR>
'),(2,'<BR>
A man should be greater than some of his parts.<BR>
'),(2,'<BR>
A mediocre player will sink to the level of his or<BR>
her opposition.<BR>
'),(2,'<BR>
A meeting is an event at which the minutes are kept<BR>
and the hours are lost.<BR>
'),(2,'<BR>
A pat on the back is only a few inches from a kick<BR>
in the pants.<BR>
'),(2,'<BR>
A penny saved is ... not much.<BR>
'),(2,'<BR>
A pessimist is an optimist with experience.<BR>
'),(2,'<BR>
A physicians ability is inversely proportional<BR>
to his availability.<BR>
'),(2,'<BR>
A prerequisite for a desired course will be offered<BR>
only during the semester following the desired course.<BR>
'),(2,'<BR>
A president of a democracy is a man who is always ready,<BR>
willing, and able to lay down your life for his country.<BR>
'),(2,'<BR>
A RACF protected dataset is inaccessible.<BR>
'),(2,'<BR>
A short cut is the longest distance between two points.<BR>
'),(2,'<BR>
A shy, introverted child will choose a crowded public<BR>
area to loudly demonstrate newly acquired vocabulary.<BR>
'),(2,'<BR>
A stagnant science is at a standstill.<BR>
'),(2,'<BR>
A theory is better than its explanation.<BR>
'),(2,'<BR>
A work project expands to fill the space available.<BR>
'),(2,'<BR>
Absolutely nothing in the world is friendlier than<BR>
a wet dog.<BR>
'),(2,'<BR>
Access holes will be 1/2 too small.<BR>
Holes that are the right size will be in the wrong place.<BR>
'),(2,'<BR>
ACF2 is a four letter word.<BR>
'),(2,'<BR>
Adding manpower to a late software product makes it later.<BR>
'),(2,'<BR>
After all is said and done, a hell of a lot more is said<BR>
than done<BR>
'),(2,'<BR>
After things have gone from bad to worse, the cycle<BR>
will repeat itself.<BR>
'),(2,'<BR>
After winning an argument with his wife,<BR>
the wisest thing a man can do is apologize.<BR>
'),(2,'<BR>
All American cars are basically Chevrolets.<BR>
'),(2,'<BR>
All breakdowns occur on the plumber''s day off.<BR>
'),(2,'<BR>
All general statements are false.  (Think about it.)<BR>
'),(2,'<BR>
All good things must come to an end.<BR>
I want to know when they start!<BR>
'),(2,'<BR>
All things being equal, all things are never equal.<BR>
'),(2,'<BR>
All things being equal, you lose.<BR>
<BR>
All things being in your favor, you still lose.<BR>
<BR>
Win or lose, you lose.<BR>
'),(2,'<BR>
All things come to him whose name is on a mailing list.<BR>
'),(2,'<BR>
All trails have more uphill sections than they have<BR>
level or downhill sections.<BR>
'),(2,'<BR>
All warranties expire upon payment of invoice.<BR>
'),(2,'<BR>
Almost anything is easier to get into than out of.<BR>
'),(2,'<BR>
Among economists, the real world is often a special case.<BR>
'),(2,'<BR>
An alcoholic is a person who drinks more than his<BR>
own physician.<BR>
'),(2,'<BR>
An auditor enters the battlefield after the war is over,<BR>
and attacks the wounded.<BR>
'),(2,'<BR>
An easily-understood, workable falsehood is more useful<BR>
than a complex, incomprehensible truth.<BR>
'),(2,'<BR>
An expert doesn''t know any more than you do.  He or she is<BR>
merely better organized and uses slides.<BR>
'),(2,'<BR>
An expert is anyone from out of town.<BR>
'),(2,'<BR>
An expert is one who knows more and more about less<BR>
and less until he knows absolutely everything<BR>
about nothing.<BR>
'),(2,'<BR>
An optimist believes we live in the best of all<BR>
possible worlds.<BR>
A pessimist fears this is true.<BR>
'),(2,'<BR>
An optimist is a person who looks forward to marriage.<BR>
A pessimist is a married optimist!<BR>
'),(2,'<BR>
An original idea can never emerge from committee<BR>
in its original form.<BR>
'),(2,'<BR>
An ounce of application is worth a ton of abstraction.<BR>
'),(2,'<BR>
An unbreakable toy is useful for breaking other toys.<BR>
'),(2,'<BR>
Any child who chatters non-stop at home will adamantly<BR>
refuse to utter a word when requested to demonstrate<BR>
for an audience.<BR>
'),(2,'<BR>
Any circuit design must contain at least one part which<BR>
is obsolete, two parts which are unobtainable and three<BR>
parts which at still under development.<BR>
'),(2,'<BR>
Any cooking utensil placed in the dishwasher will be<BR>
needed immediately thereafter for something else.<BR>
'),(2,'<BR>
Any given program costs more and takes longer.<BR>
'),(2,'<BR>
Any given program, when running, is obsolete.<BR>
'),(2,'<BR>
Any given program will expand to fill all available memory.<BR>
'),(2,'<BR>
Any improbable event which would create maximum confusion<BR>
if it did occur, will occur.<BR>
'),(2,'<BR>
Any line, however short, is still too long.<BR>
'),(2,'<BR>
Any measuring utensil used for liquid ingredients will<BR>
be needed immediately thereafter for dry ingredients.<BR>
'),(2,'<BR>
Any task worth doing was worth doing yesterday.<BR>
'),(2,'<BR>
Any technical problem can be overcome given enough<BR>
time and money.<BR>
<BR>
You are never given enough time or money.<BR>
'),(2,'<BR>
Any theory can be made to fit any facts by means of<BR>
approximate, additional assumptions.<BR>
'),(2,'<BR>
Any time you wish to demonstrate something, the number of<BR>
faults is proportional to the number of viewers.<BR>
'),(2,'<BR>
Any tool dropped while repairing a car will roll underneath<BR>
to the exact center.<BR>
'),(2,'<BR>
Anybody can win - unless there happens to be a second entry.<BR>
'),(2,'<BR>
Anyone who follows a crowd will<BR>
never be followed by a crowd.<BR>
'),(2,'<BR>
Anything good in life either causes cancer in<BR>
laboratory mice or is taxed beyond reality.<BR>
'),(2,'<BR>
Anything hit with a big enough hammer will fall apart.<BR>
'),(2,'<BR>
Anything is possible, but nothing is easy.<BR>
'),(2,'<BR>
Anything is possible if you don''t know what you''re<BR>
talking about.<BR>
'),(2,'<BR>
Anything that can go wrong, will go wrong.<BR>
'),(2,'<BR>
Anything you try to fix will take longer and cost more than<BR>
you thought.<BR>
'),(2,'<BR>
As the economy gets better, everything else gets worse.<BR>
'),(2,'<BR>
Assumption is the mother of all foul-ups.<BR>
'),(2,'<BR>
Assumption is the mother of all screw-ups.<BR>
'),(2,'<BR>
At any event, the people whose seats are furthest from<BR>
the aisle arrive last.<BR>
'),(2,'<BR>
At any level of traffic, any delay is intolerable.<BR>
'),(2,'<BR>
At the end of the semester you will recall having<BR>
enrolled in a course at the beginning of the semester<BR>
-- and never attending.<BR>
'),(2,'<BR>
Authorization for a project will be granted only when<BR>
none of the authorizers can be blamed if the project<BR>
fails but when all of the authorizers can claim credit<BR>
if it succeeds.<BR>
'),(2,'<BR>
Automotive engine repairing law:<BR>
If you drop something, it will never reach the ground.<BR>
'),(2,'<BR>
Bad law is more likely to be supplemented than repealed.<BR>
'),(2,'<BR>
Bad news drives good news out of the media.<BR>
'),(2,'<BR>
Bare feet magnetize sharp metal objects so they always<BR>
point upward from the floor -- especially in the dark.<BR>
'),(2,'<BR>
Beauty is only skin deep, ugly goes clear to the bone.<BR>
'),(2,'<BR>
Before ordering a test decide what you will do if it is,<BR>
(1)	positive, or<BR>
(2)	negative.<BR>
If both answers are the same, don''t do the test.<BR>
'),(2,'<BR>
Beware of the physician who is great at getting<BR>
out of trouble.<BR>
'),(2,'<BR>
Blessed are those who go around in circles,<BR>
for they shall be known as wheels.<BR>
'),(2,'<BR>
Blessed is he who expects no gratitude,<BR>
for he shall not be disappointed.<BR>
'),(2,'<BR>
Blessed is he who has reached the point of no return and<BR>
knows it for he shall enjoy living.<BR>
'),(2,'<BR>
Build a system that even a fool can use,<BR>
and only a fool will use it.<BR>
'),(2,'<BR>
Calm down .... it is only ones and zeros.<BR>
'),(2,'<BR>
Can''t produces countercan''t.<BR>
'),(2,'<BR>
Capitalism can exist in one of only two states:<BR>
welfare or warfare.<BR>
'),(2,'<BR>
Celibacy is not hereditary.<BR>
'),(2,'<BR>
Class schedules are designed so that every student will<BR>
waste the maximum time between classes.<BR>
'),(2,'<BR>
Cleanliness is next to impossible.<BR>
'),(2,'<BR>
Clearly stated instructions will consistently produce<BR>
multiple interpretations.<BR>
'),(2,'<BR>
''Close'' only counts in horseshoes, hand grenades and<BR>
thermonuclear devices.<BR>
'),(2,'<BR>
Common sense is not so common.<BR>
'),(2,'<BR>
Complex problems have simple, easy-to-understand<BR>
wrong answers.<BR>
'),(2,'<BR>
Complex systems tend to oppose their own proper function.<BR>
'),(2,'<BR>
Complicated systems produce unexpected outcomes.<BR>
'),(2,'<BR>
Consultants are mystical people who ask a company for<BR>
a number and then give it back to them.<BR>
'),(2,'<BR>
Consumer assistance doesn''t.<BR>
'),(2,'<BR>
Cop-out number 1.<BR>
You should have seen it when I got it.<BR>
'),(2,'<BR>
Cost of repair can be determined by multiplying the<BR>
cost of your new coat by 1.75, or by multiplying the<BR>
cost of a new washer by .75.<BR>
'),(2,'<BR>
Create problems for which only you have the answer.<BR>
'),(2,'<BR>
Definition of an elephant:<BR>
A mouse built to government specifications.<BR>
'),(2,'<BR>
Democracy is that form of government where<BR>
everybody gets what the majority deserves.<BR>
'),(2,'<BR>
Despite the sign that says ''wet paint'',<BR>
please don''t.<BR>
'),(2,'<BR>
Do not believe in miracles -- rely on them.<BR>
'),(2,'<BR>
Do whatever your enemies don''t want you to do.<BR>
'),(2,'<BR>
Don''t ask the barber if you need a haircut.<BR>
'),(2,'<BR>
Don''t bite the hand that has your pay check in it.<BR>
'),(2,'<BR>
Don''t fight with a bear in his own cage.<BR>
'),(2,'<BR>
Don''t force it,<BR>
get a bigger hammer.<BR>
'),(2,'<BR>
Don''t let your superiors know you''re better than<BR>
they are.<BR>
'),(2,'<BR>
Don''t look back, something may be gaining on you.<BR>
'),(2,'<BR>
Don''t make your doctor your heir.<BR>
'),(2,'<BR>
Don''t mess with Mrs. Murphy!<BR>
'),(2,'<BR>
Don''t permit yourself to get between a dog and a lamppost.<BR>
'),(2,'<BR>
Don''t smoke in bed - the ashes on the floor might be your<BR>
own.<BR>
'),(2,'<BR>
Don''t stop to stomp on ants<BR>
when the elephants are stampeding.<BR>
'),(2,'<BR>
During the time an item is on back-order, it will be<BR>
available cheaper and quicker from many other sources.<BR>
'),(2,'<BR>
Each problem solved introduces a new unsolved problem.<BR>
'),(2,'<BR>
Easy doesn''t do it.<BR>
'),(2,'<BR>
Eat a live toad the first thing in the morning and nothing<BR>
worse will happen to you the rest of the day.<BR>
'),(2,'<BR>
Entropy has us outnumbered.<BR>
'),(2,'<BR>
Envelopes and stamps which don''t stick when you lick<BR>
them will stick to other things when you don''t want<BR>
them to.<BR>
'),(2,'<BR>
Even paranoids have enemies.<BR>
'),(2,'<BR>
Even water tastes bad when taken on doctors orders.<BR>
'),(2,'<BR>
Every great idea has a disadvantage equal to or<BR>
exceeding the greatness of the idea.<BR>
'),(2,'<BR>
Everybody is ignorant, only on different subjects.<BR>
'),(2,'<BR>
Everybody lies; but it doesn''t matter, since<BR>
nobody listens.<BR>
'),(2,'<BR>
Everybody wants a pain shot at the same time.<BR>
'),(2,'<BR>
Everybody who didn''t want a pain shot when you were<BR>
passing out pain shots wants one when you are passing<BR>
out sleeping pills.<BR>
'),(2,'<BR>
Everybody''s gotta be someplace.<BR>
'),(2,'<BR>
Everyone breaks more than the seven-year-bad-luck allotment<BR>
to cover rotten luck throughout an entire lifetime.<BR>
'),(2,'<BR>
Everyone gets away with something.<BR>
No one gets away with everything.<BR>
'),(2,'<BR>
Everyone has a scheme for getting rich that will not work.<BR>
'),(2,'<BR>
Everything east of the San Andreas fault will eventually<BR>
plunge into the Atlantic ocean.<BR>
'),(2,'<BR>
Everything happens at the same time with nothing in between.<BR>
'),(2,'<BR>
Everything is contagious.<BR>
'),(2,'<BR>
Everything is revealed to he who turns over enough stones.<BR>
(Including the snakes that he did not want to find.)<BR>
'),(2,'<BR>
Everything may be divided into as many parts as you please.<BR>
'),(2,'<BR>
Everything put together sooner or later falls apart.<BR>
'),(2,'<BR>
Everything takes longer than you expect.<BR>
'),(2,'<BR>
Exciting plays occur only while you are watching the<BR>
scoreboard or out buying a hot dog.<BR>
'),(2,'<BR>
Fact is solidified opinion.<BR>
'),(2,'<BR>
Facts may weaken under extreme heat and pressure.<BR>
'),(2,'<BR>
Far-away talent always seems better than home-developed<BR>
talent.<BR>
'),(2,'<BR>
Flynn is dead<BR>
Tron is dead<BR>
long live the MCP.<BR>
'),(2,'<BR>
Fools rush in -- and get the best seats.<BR>
'),(2,'<BR>
For every action, there is an equal and opposite<BR>
criticism.<BR>
'),(2,'<BR>
For every credibility gap there is a gullibility fill.<BR>
'),(2,'<BR>
For every credibility gap there is a gullibility gap.<BR>
'),(2,'<BR>
For every human problem, there is a neat, plain solution --<BR>
and it is always wrong.<BR>
'),(2,'<BR>
For every vision, there is an equal and opposite revision.<BR>
'),(2,'<BR>
Forgive and remember.<BR>
'),(2,'<BR>
Freud''s 23rd law: ideas endure and prosper in inverse<BR>
proportion to their soundness and validity.<BR>
'),(2,'<BR>
Friends come and go, but enemies accumulate.<BR>
'),(2,'<BR>
Fuzzy project objectives are used to avoid the<BR>
embarrassment of estimating the corresponding costs.<BR>
'),(2,'<BR>
Go where the money is.<BR>
'),(2,'<BR>
He who dies with the most toys wins.<BR>
'),(2,'<BR>
He who hesitates is not only lost, but several miles from<BR>
the next freeway exit.<BR>
'),(2,'<BR>
He who laughs last -- probably didn''t get the joke.<BR>
'),(2,'<BR>
He who marries for money ... better be nice to his wife.<BR>
'),(2,'<BR>
Hindsight is an exact science.<BR>
'),(2,'<BR>
History doesn''t repeat itself -- historians merely<BR>
repeat each other.<BR>
'),(2,'<BR>
History proves nothing.<BR>
'),(2,'<BR>
History repeats itself.<BR>
that''s one of the things wrong with history.<BR>
'),(2,'<BR>
Hockey is a game played by six good players and the<BR>
home team.<BR>
'),(2,'<BR>
Hollerith got us into this hole mess!<BR>
'),(2,'<BR>
Hot glass looks exactly the same as cold glass.<BR>
'),(2,'<BR>
How did they measure hail before the golf ball was invented?<BR>
'),(2,'<BR>
How do they know no two snowflakes are alike?<BR>
'),(2,'<BR>
How long a minute is depends on which side of the<BR>
bathroom door you''re on.<BR>
'),(2,'<BR>
I can only please one person per day.<BR>
Today is not your day.<BR>
(Tomorrow isn''t looking good either.)<BR>
'),(2,'<BR>
I finally got it all together...<BR>
but I forgot where I put it.<BR>
'),(2,'<BR>
I have not lost my mind, it is backed up on tape somewhere.<BR>
'),(2,'<BR>
I have yet to see any problem, however complicated, which,<BR>
when you looked at it in the right way, did not become<BR>
still more complicated.<BR>
		-- Poul Anderson<BR>
'),(2,'<BR>
I know you believe you understand<BR>
   what you think I said,<BR>
      however, I am not sure you realize,<BR>
         that what I think you heard<BR>
            is not what I meant<BR>
'),(2,'<BR>
I no longer get lost in the shuffle....<BR>
I shuffle along with the lost.<BR>
'),(2,'<BR>
I think ... therefore I am confused.<BR>
'),(2,'<BR>
If a program is useful, it will be changed.<BR>
'),(2,'<BR>
If a program is useless, it will be documented.<BR>
'),(2,'<BR>
If a scientist uncovers a publishable fact, it will<BR>
become central to his theory.<BR>
<BR>
His theory, in turn, will become central to all<BR>
scientific truth.<BR>
'),(2,'<BR>
If a series of events can go wrong, it will do so in<BR>
the worst possible sequence.<BR>
'),(2,'<BR>
If a situation requires undivided attention, it will<BR>
occur simultaneously with a compelling distraction.<BR>
'),(2,'<BR>
If a straight line fit is required, obtain only two<BR>
data points.<BR>
'),(2,'<BR>
If a thing is done wrong often enough<BR>
it becomes right.<BR>
'),(2,'<BR>
If an experiment works, you must be using the wrong<BR>
equipment.<BR>
'),(2,'<BR>
If an idea can survive a bureaucratic review and be<BR>
implemented, it wasn''t worth doing.<BR>
'),(2,'<BR>
If an item is advertised as ''under $50,'' you can bet<BR>
it''s not $19.95.<BR>
'),(2,'<BR>
If anything can go wrong, it will.<BR>
'),(2,'<BR>
If anything can''t go wrong it will.<BR>
'),(2,'<BR>
If at first you don''t succeed ... get new batteries.<BR>
'),(2,'<BR>
If at first you don''t succeed, transform your dataset.<BR>
'),(2,'<BR>
If at first you don''t succeed, try something else.<BR>
'),(2,'<BR>
If at first you don''t succeed,<BR>
blame it on your supervisor.<BR>
'),(2,'<BR>
If daily class attendance is mandatory, a scheduled<BR>
exam will produce increased absenteeism.  If attendance<BR>
is optional, a scheduled exam will produce persons you<BR>
have never seen before.<BR>
'),(2,'<BR>
If everybody doesn''t want it, nobody gets it.<BR>
'),(2,'<BR>
If everything is coming your way, you''re in the<BR>
wrong lane.<BR>
'),(2,'<BR>
If everything seems to be going well,<BR>
you obviously don''t know what the hell is going on.<BR>
'),(2,'<BR>
If facts do not conform to the theory,<BR>
they must be disposed of.<BR>
'),(2,'<BR>
If his IQ was any lower he''d be a plant.<BR>
'),(2,'<BR>
If it can be borrowed and it can be broken,<BR>
you will borrow it and<BR>
you will break it.<BR>
'),(2,'<BR>
If it happens, it must be possible.<BR>
'),(2,'<BR>
If it jams --- force it.  If it breaks,<BR>
it needed replacing anyway.<BR>
'),(2,'<BR>
If it sits on your desk for 15 minutes, you''ve just<BR>
become the expert.<BR>
'),(2,'<BR>
If it weren''t for the opinion polls we''d never know<BR>
what people are undecided about.<BR>
'),(2,'<BR>
If it would be cheaper to buy a new unit, the company<BR>
will insist upon repairing the old one.<BR>
'),(2,'<BR>
If it would be cheaper to repair the old one, the<BR>
company will insist on the latest model.<BR>
'),(2,'<BR>
If it''s clean, it isn''t laundry.<BR>
'),(2,'<BR>
If it''s good, they discontinue it.<BR>
'),(2,'<BR>
If it''s good they will stop making it.<BR>
'),(2,'<BR>
If it''s not in the computer, it doesn''t exist.<BR>
'),(2,'<BR>
If more than one person is responsible for a<BR>
miscalculation, no one will be at fault.<BR>
'),(2,'<BR>
If Murphy''s law can go wrong, it will.<BR>
'),(2,'<BR>
If not controlled, work will flow to the competent<BR>
man until he submerges.<BR>
'),(2,'<BR>
If on an actuarial basis there is a 50/50 chance that<BR>
something will go wrong,<BR>
It will actually go wrong nine times out of ten.<BR>
'),(2,'<BR>
If one views his problem closely enough he will<BR>
recognize himself as part of the problem.<BR>
'),(2,'<BR>
If only one price can be obtained for any quotation,<BR>
the price will be unreasonable.<BR>
'),(2,'<BR>
If opportunity came disguised as temptation,<BR>
one knock would be enough.<BR>
'),(2,'<BR>
If project content is allowed to change freely, the rate of<BR>
change will exceed the rate of progress.<BR>
'),(2,'<BR>
If reproducibility may be a problem conduct the<BR>
test only once.<BR>
'),(2,'<BR>
If several things that could have gone wrong have not<BR>
gone wrong, it would have been ultimately beneficial<BR>
for them to have gone wrong.<BR>
'),(2,'<BR>
If the assumptions are wrong,<BR>
the conclusions aren''t likely to be very good.<BR>
'),(2,'<BR>
If the course you wanted most has room for ''n'' students<BR>
you will be the ''n + 1'' to apply.<BR>
'),(2,'<BR>
If the faulty part is in stock, it didn''t need replacing<BR>
in the first place.<BR>
'),(2,'<BR>
If there are only two shows worth watching, they will<BR>
be on together.<BR>
'),(2,'<BR>
If there isn''t a law, there will be.<BR>
'),(2,'<BR>
If there was any justice in this world, people would<BR>
occasionally be permitted to fly over pigeons.<BR>
'),(2,'<BR>
If things were left to chance, they''d be better.<BR>
'),(2,'<BR>
If two wrongs don''t make a right, try three.<BR>
		-- Dr. Laurence J. Peter<BR>
'),(2,'<BR>
If we learn by our mistakes,<BR>
I''m getting one hell of an education!!<BR>
'),(2,'<BR>
If you allow someone to get in front of you either:<BR>
(1)	The car in front will be the last one over a<BR>
	railroad crossing, and you will be stuck waiting<BR>
	for a long, slow-moving train; or<BR>
(2)	you both will have the same destination and the<BR>
	other car will get the last parking space.<BR>
'),(2,'<BR>
If you are already in a hole, there''s no use to continue<BR>
digging.<BR>
'),(2,'<BR>
If you are given an open-book exam, you will forget<BR>
your book.<BR>
If you are given a take-home exam, you will forget<BR>
where you live.<BR>
'),(2,'<BR>
If you buy bananas or avocados before they are ripe,<BR>
there won''t be any left by the time they are ripe.  If<BR>
you buy them ripe, they rot before they are eaten.<BR>
'),(2,'<BR>
If you can get the faulty part off, the parts house<BR>
will have it back-ordered.<BR>
'),(2,'<BR>
If you can get to the faulty part, you don''t have the<BR>
tool to get it off.<BR>
'),(2,'<BR>
If you can keep your head when all about you are losing<BR>
theirs, then you just don''t understand the problem.<BR>
'),(2,'<BR>
If you can''t convince them, confuse them.<BR>
'),(2,'<BR>
If you can''t measure it, I''m not interested.<BR>
'),(2,'<BR>
If you can''t measure output then you measure input.<BR>
'),(2,'<BR>
If you change lines, the one you just left will start<BR>
to move faster than the one you are now in.<BR>
'),(2,'<BR>
If you do something right once, someone will ask<BR>
you to do it again.<BR>
'),(2,'<BR>
If you don''t care where you are, you ain''t lost.<BR>
'),(2,'<BR>
If you don''t like the answer,<BR>
you shouldn''t have asked the question.<BR>
'),(2,'<BR>
If you don''t say it, they can''t repeat it.<BR>
'),(2,'<BR>
If you don''t write to complain, you''ll never receive<BR>
your order.<BR>
If you do write, you''ll receive the merchandise before<BR>
your angry letter reaches its destination.<BR>
'),(2,'<BR>
If you fool around with a thing for very long you will<BR>
screw it up.<BR>
'),(2,'<BR>
If you have a difficult task give it to a lazy man, he<BR>
will find an easier way to do it.<BR>
'),(2,'<BR>
If you have always done it that way, it is probably wrong.<BR>
'),(2,'<BR>
If you have something to do, and you put it off long enough<BR>
chances are someone else will do it for you.<BR>
'),(2,'<BR>
If you have to ask, you are not entitled to know.<BR>
'),(2,'<BR>
If you have to park six blocks away, you will find two<BR>
new parking spaces right in front of the building<BR>
entrance.<BR>
'),(2,'<BR>
If you have watched a TV series only once, and you watch<BR>
it again, it will be a rerun of the same episode.<BR>
'),(2,'<BR>
If you help a friend in need, he is sure to remember<BR>
you - the next time he''s in need.<BR>
'),(2,'<BR>
If you just try long enough and hard enough, you can always<BR>
manage to boot yourself in the posterior.<BR>
'),(2,'<BR>
If you know, you can''t say.<BR>
'),(2,'<BR>
If you leave the room, you''re elected.<BR>
'),(2,'<BR>
If you lived here you''d be home now.<BR>
'),(2,'<BR>
If you plan to leave your mark in the sands of time,<BR>
you better wear work shoes.<BR>
'),(2,'<BR>
If you see a man approaching you with the obvious intent<BR>
of doing you good, you should run for your life.<BR>
'),(2,'<BR>
If you see that there are four possible ways in which a<BR>
procedure can go wrong, and circumvent these, then a<BR>
fifth way, unprepared for, will promptly develop.<BR>
'),(2,'<BR>
If you smile when everything goes wrong, you are<BR>
either a nitwit or a repairman.<BR>
'),(2,'<BR>
If you try to please everybody, nobody will like it.<BR>
'),(2,'<BR>
If you wait, it will go away<BR>
... having done it''s damage.<BR>
If it was bad, it''ll be back.<BR>
'),(2,'<BR>
If you want to get along, go along.<BR>
'),(2,'<BR>
If you want to make an enemy, do someone a favor.<BR>
'),(2,'<BR>
If your condition seems to be getting better, it''s<BR>
probably your doctor getting sick.<BR>
'),(2,'<BR>
If your next pot of chili tastes better, it probably is<BR>
because of something left out, rather than added.<BR>
'),(2,'<BR>
If you''re coasting, you''re going downhill.<BR>
'),(2,'<BR>
If you''re early, it''ll be canceled.<BR>
If you knock yourself out to be on time, you will<BR>
   have to wait.<BR>
If you''re late, you will be too late.<BR>
'),(2,'<BR>
If you''re feeling good, don''t worry,<BR>
you''ll get over it.<BR>
'),(2,'<BR>
If you''re wondering if you have enough money to take<BR>
the family out to eat tonight, you don''t.<BR>
'),(2,'<BR>
If you''re wondering if you left the coffee pot<BR>
plugged in, you did.<BR>
'),(2,'<BR>
If you''re wondering if you need to stop and pick up<BR>
bread and eggs on the way home, you do.<BR>
'),(2,'<BR>
If you''re wondering if you took the meat out to<BR>
thaw, you didn''t.<BR>
'),(2,'<BR>
If you''re worried about being crazy,<BR>
don''t be overly concerned:<BR>
If you were, you would think you were sane.<BR>
'),(2,'<BR>
If you''ve got them by the balls,<BR>
their hearts and minds will follow.<BR>
'),(2,'<BR>
Ignorance should be painful.<BR>
'),(2,'<BR>
Important letters which contain no errors will develop<BR>
errors in the mail.<BR>
'),(2,'<BR>
In a bureaucratic hierarchy, the higher up the<BR>
organization the less people appreciate Murphy''s law,<BR>
the Peter Principle, etc.<BR>
'),(2,'<BR>
In a family recipe you just discovered in an old book,<BR>
the most vital measurement will be illegible.<BR>
'),(2,'<BR>
In a hierarchical organization, the higher the level,<BR>
the greater the confusion.<BR>
'),(2,'<BR>
In a hierarchical system, the rate of pay varies<BR>
inversely with the unpleasantness and difficulty<BR>
of the task.<BR>
'),(2,'<BR>
In a three-story building served by one elevator, nine<BR>
times out of ten the elevator car will be on a floor<BR>
where you are not.<BR>
'),(2,'<BR>
In any bureaucracy, paperwork increases as you spend<BR>
more and more time reporting on the less and less you<BR>
are doing.  Stability is achieved when you spend all of<BR>
your time reporting on the nothing you are doing.<BR>
'),(2,'<BR>
In any dealings with a collective body of people, the<BR>
people will always be more tacky than originally expected.<BR>
'),(2,'<BR>
In any hierarchy, each individual rises to his own level<BR>
of incompetence, and then remains there.<BR>
'),(2,'<BR>
In any household, junk accumulates to the space<BR>
available for its storage.<BR>
'),(2,'<BR>
In any organization there will always be one person<BR>
who knows what is going on.<BR>
This person must be fired.<BR>
'),(2,'<BR>
In any series of calculations, errors tend to occur<BR>
at the opposite end to the end at which you begin<BR>
checking for errors.<BR>
'),(2,'<BR>
In case of doubt, make it sound convincing.<BR>
'),(2,'<BR>
In order for something to become clean, something<BR>
else must become dirty.<BR>
... but you can get everything dirty without getting<BR>
anything clean.<BR>
'),(2,'<BR>
In the fight between you and the world, back the world.<BR>
'),(2,'<BR>
Incompetence knows no barriers of time or place.<BR>
'),(2,'<BR>
Indecision is the basis for flexibility.<BR>
'),(2,'<BR>
Indifference is the only sure defense.<BR>
'),(2,'<BR>
Information deteriorates upward through the bureaucracies.<BR>
'),(2,'<BR>
Information travels more surely to those with a<BR>
lesser need to know.<BR>
'),(2,'<BR>
Inside every large program<BR>
is a small program struggling to get out.<BR>
'),(2,'<BR>
Interchangeable parts --- won''t.<BR>
'),(2,'<BR>
It always takes longer to get there than to get back.<BR>
'),(2,'<BR>
It does not matter if you fall down as long as you pick<BR>
up something from the floor while you get up.<BR>
'),(2,'<BR>
It is a simple task to make things complex, but a complex<BR>
task to make them simple.<BR>
'),(2,'<BR>
It is better for civilization to be going down the drain,<BR>
than to be coming up it.<BR>
'),(2,'<BR>
It is better to be part of the idle rich class<BR>
than be part of the idle poor class.<BR>
'),(2,'<BR>
It is better to solve a problem with a crude<BR>
approximation and know the truth, than to demand an<BR>
exact solution and not know the truth at all.<BR>
'),(2,'<BR>
It is easier to get forgiveness than permission.<BR>
'),(2,'<BR>
It is far better to do nothing than to do<BR>
something efficiently.<BR>
		-- Siezbo<BR>
'),(2,'<BR>
It is impossible for an optimist to be pleasantly<BR>
surprised.<BR>
'),(2,'<BR>
It is impossible to build a fool proof system;<BR>
because fools are so ingenious.<BR>
'),(2,'<BR>
It is ok to be ignorant in some areas,<BR>
but some people abuse the privilege.<BR>
'),(2,'<BR>
It takes longer to glue a vase together than to<BR>
break one.<BR>
'),(2,'<BR>
It takes longer to lose ''x'' number of pounds than<BR>
to gain ''x'' number of pounds.<BR>
'),(2,'<BR>
It the shoe fits, it''s ugly.<BR>
'),(2,'<BR>
It works better if you plug it in.<BR>
'),(2,'<BR>
It''s always darkest before ... daylight saving time.<BR>
'),(2,'<BR>
It''s always darkest just before the lights go out.<BR>
		-- Alex Clark<BR>
'),(2,'<BR>
It''s always easier to go down hill, but the view is<BR>
from the top.<BR>
'),(2,'<BR>
It''s better to retire too soon than too late.<BR>
'),(2,'<BR>
It''s tough to get reallocated when you''re the one<BR>
who''s redundant.<BR>
'),(2,'<BR>
Just about the time when you think you can make ends meet<BR>
somebody moves the ends!<BR>
'),(2,'<BR>
Just because you are paranoid<BR>
doesn''t mean ''they'' aren''t out to get you.<BR>
'),(2,'<BR>
Just because your doctor has a name for your condition<BR>
doesn''t mean he knows what it is.<BR>
'),(2,'<BR>
Just when you get really good at something,<BR>
you don''t need to do it anymore.<BR>
'),(2,'<BR>
Justice always prevails...<BR>
three times out of seven.<BR>
'),(2,'<BR>
Keep emotionally active,<BR>
cater to your favorite neurosis.<BR>
'),(2,'<BR>
King Arthur ran the first knight club.<BR>
'),(2,'<BR>
Laugh and the world laughs with you. cry and ...<BR>
you have to blow your nose.<BR>
'),(2,'<BR>
Law expands in proportion to the resources available<BR>
for its enforcement.<BR>
'),(2,'<BR>
Laziness is the mother of nine inventions out of ten.<BR>
'),(2,'<BR>
Lead, follow, or get the hell out of the way!!<BR>
'),(2,'<BR>
Leakproof seals --- will.<BR>
'),(2,'<BR>
Learn to be sincere.  Even if you have to fake it.<BR>
'),(2,'<BR>
Left to themselves, all things go from bad to worse.<BR>
'),(2,'<BR>
Leftover nuts never match leftover bolts.<BR>
'),(2,'<BR>
Life is like an ice-cream cone:  You have to learn to<BR>
lick it.<BR>
'),(2,'<BR>
Liquidity tends to run out.<BR>
'),(2,'<BR>
Live within your income,<BR>
even if you have to borrow to do so.<BR>
'),(2,'<BR>
Magellan was the first strait man.<BR>
'),(2,'<BR>
Make it possible for programmers to write programs<BR>
in English and you will find that programmers cannot<BR>
write in English.<BR>
'),(2,'<BR>
Make three correct guesses consecutively and you will<BR>
establish yourself as an expert.<BR>
'),(2,'<BR>
Management can''t.<BR>
'),(2,'<BR>
Mass man must be serviced by mass means.<BR>
'),(2,'<BR>
Misery no longer loves company<BR>
nowadays it insists on it.<BR>
'),(2,'<BR>
Most people want to be delivered from temptation but<BR>
would like it to keep in touch.<BR>
'),(2,'<BR>
Most projects require three hands.<BR>
'),(2,'<BR>
Multiple-function gadgets will not perform any<BR>
function adequately.<BR>
'),(2,'<BR>
Murphy''s rule for precision:<BR>
	Measure with a micrometer<BR>
	Mark with chalk<BR>
	Cut with an axe<BR>
'),(2,'<BR>
Nature always sides with the hidden flaw.<BR>
'),(2,'<BR>
Nature is a mother.<BR>
'),(2,'<BR>
Nature will tell you a direct lie if she can.<BR>
'),(2,'<BR>
Never admit anything.<BR>
Never regret anything<BR>
whatever it is, you''re not responsible.<BR>
'),(2,'<BR>
Never argue with a fool,<BR>
people might not know the difference.<BR>
'),(2,'<BR>
Never argue with an artist.<BR>
'),(2,'<BR>
Never be first to do anything.<BR>
'),(2,'<BR>
Never create a problem for which you do not have<BR>
the answer.<BR>
'),(2,'<BR>
Never eat prunes when you are famished.<BR>
'),(2,'<BR>
Never get excited about a blind date because of how<BR>
it sounds over the phone.<BR>
'),(2,'<BR>
Never go to a doctor whose office plants have died.<BR>
		-- Erma Bombeck<BR>
'),(2,'<BR>
Never insult an alligator<BR>
until after you have crossed the river.<BR>
'),(2,'<BR>
Never leave hold of what you''ve got until you''ve got hold<BR>
of something else.<BR>
'),(2,'<BR>
Never make a decision you can get someone else to make.<BR>
'),(2,'<BR>
Never needlessly disturb a thing at rest.<BR>
'),(2,'<BR>
Never offend people with style<BR>
when you can offend them with substance.<BR>
'),(2,'<BR>
Never play leapfrog with a photo enlarger.<BR>
'),(2,'<BR>
Never play leapfrog with a unicorn.<BR>
'),(2,'<BR>
Never put all your eggs in your pocket.<BR>
'),(2,'<BR>
Never say ''oops'' after you have submitted a job.<BR>
'),(2,'<BR>
Never tell them what you wouldn''t do.<BR>
'),(2,'<BR>
Never test for an error condition you don''t know<BR>
how to handle.<BR>
'),(2,'<BR>
Never wrestle with a pig; you both get dirty, and the pig<BR>
likes it!<BR>
'),(2,'<BR>
New systems generate new problems.<BR>
'),(2,'<BR>
No experiment is ever a complete failure.<BR>
It can always be used as a bad example.<BR>
'),(2,'<BR>
No good deed goes unpunished.<BR>
		-- Clare Boothe Luce<BR>
'),(2,'<BR>
No major project is ever installed on time, within budgets,<BR>
with the same staff that started it.  Yours will not be the<BR>
first.<BR>
'),(2,'<BR>
No man is lonely while eating spaghetti.<BR>
'),(2,'<BR>
No matter how large the work space, if two projects<BR>
must be done at the same time they will require the<BR>
same part of the work space.<BR>
'),(2,'<BR>
No matter how long or hard you shop for an item, after<BR>
you have bought it, it will be on sale somewhere cheaper.<BR>
'),(2,'<BR>
No matter how minor the task, you will inevitably end<BR>
up covered with grease and motor oil.<BR>
'),(2,'<BR>
No matter how strong the breeze when you leave the dock<BR>
once you have reached the furthest point from port<BR>
the wind will die.<BR>
'),(2,'<BR>
No matter what goes wrong, there is always somebody<BR>
who knew it would.<BR>
'),(2,'<BR>
No matter what happens, there is always somebody<BR>
who knew that it would.<BR>
'),(2,'<BR>
No matter what they''re talking about, they''re<BR>
talking about money.<BR>
'),(2,'<BR>
No matter what they''re telling you, they''re not<BR>
telling you the whole truth.<BR>
'),(2,'<BR>
No matter which direction you start,<BR>
it''s always against the wind coming back.<BR>
'),(2,'<BR>
No news is ... impossible.<BR>
'),(2,'<BR>
No one keeps a record of decisions you could have made<BR>
but didn''t.  Everyone keeps a records of your bad ones.<BR>
'),(2,'<BR>
No one''s life, liberty, or property are safe<BR>
while the legislature is in session.<BR>
'),(2,'<BR>
No system is ever completely debugged:  Attempts to debug<BR>
a system will inevitably introduce new bugs that are even<BR>
harder to find.<BR>
'),(2,'<BR>
Nobody notices when things go right.<BR>
'),(2,'<BR>
Nothing improves an innovation like lack of controls.<BR>
'),(2,'<BR>
Nothing is ever accomplished by a reasonable man.<BR>
'),(2,'<BR>
Nothing is ever as simple as it seems.<BR>
'),(2,'<BR>
Nothing is ever done for the right reasons.<BR>
'),(2,'<BR>
Nothing is ever so bad it can''t be made worse by<BR>
firing the coach.<BR>
'),(2,'<BR>
Nothing is ever so bad that it can''t get worse.<BR>
'),(2,'<BR>
Nothing is impossible for the person who doesn''t have<BR>
to do it himself/herself.<BR>
'),(2,'<BR>
Nothing is indestructible, with the possible exception<BR>
of discount-priced fruitcakes.<BR>
'),(2,'<BR>
Of two possible events,<BR>
only the undesired one will occur.<BR>
'),(2,'<BR>
Office machines which function perfectly during normal<BR>
business hours will break down when you return to the<BR>
office at night to use them for personal business.<BR>
'),(2,'<BR>
Old age is always fifteen years older than I am.<BR>
'),(2,'<BR>
Old programmers never die - they just abend.<BR>
'),(2,'<BR>
On a beautiful day like this it''s hard to believe anyone<BR>
can be unhappy -- but we will work on it.<BR>
'),(2,'<BR>
On a clear disk, you can seek forever.<BR>
'),(2,'<BR>
On successive charts of the same organization, the number of<BR>
boxes will never decrease.<BR>
'),(2,'<BR>
Once a dish is fouled up, anything added to save it<BR>
only makes it worse.<BR>
'),(2,'<BR>
One man''s error is another man''s data.<BR>
'),(2,'<BR>
One place where you''re sure to find the perfect<BR>
driver is in the back seat.<BR>
'),(2,'<BR>
Only a mediocre person is always at their best.<BR>
'),(2,'<BR>
Only adults have difficulty with child-proof bottles.<BR>
'),(2,'<BR>
Only errors exist.<BR>
'),(2,'<BR>
Opportunity always knocks at the least opportune<BR>
moment.<BR>
'),(2,'<BR>
Other people''s romantic gestures seem novel and exciting.<BR>
<BR>
Your own romantic gestures seem foolish and clumsy.<BR>
'),(2,'<BR>
Our customers'' paperwork is profit.<BR>
Our own paperwork is loss.<BR>
'),(2,'<BR>
People are promoted not by what they can do, but what<BR>
people think they can do.<BR>
'),(2,'<BR>
People can be divided into three groups:<BR>
Those who make things happen,<BR>
Those who watch things happen and<BR>
Those who wonder what happened.<BR>
'),(2,'<BR>
People don''t change; they only become more so.<BR>
'),(2,'<BR>
People in systems do not do what the systems say<BR>
they are doing.<BR>
'),(2,'<BR>
People to whom you are attracted invariably think you<BR>
remind them of someone else.<BR>
'),(2,'<BR>
People who love sausage and respect the law should<BR>
never watch either one being made.<BR>
'),(2,'<BR>
People will accept your idea much more readily if you tell<BR>
them Benjamin Franklin said it first.<BR>
'),(2,'<BR>
People will believe anything if you whisper it.<BR>
'),(2,'<BR>
People will buy anything that is one to a customer.<BR>
'),(2,'<BR>
Performance is directly affected by the perversity of<BR>
inanimate objects.<BR>
'),(2,'<BR>
Personnel recruiting is a triumph of hope over<BR>
experience.<BR>
'),(2,'<BR>
Persons disagreeing with your facts are always emotional<BR>
and employ faulty reasoning.<BR>
'),(2,'<BR>
Pills to be taken in twos always come<BR>
out of the bottle in threes.<BR>
'),(2,'<BR>
Please don''t steal, the IRS hates competition!<BR>
'),(2,'<BR>
Possessions increase to fill the space available for<BR>
their storage.<BR>
'),(2,'<BR>
Program complexity grows until it exceeds the capability<BR>
of the programmer who must maintain it.<BR>
'),(2,'<BR>
Program design philosophy:<BR>
<BR>
	Start at the beginning and continue until the end,<BR>
	then stop.<BR>
		-- Lewis Carroll<BR>
'),(2,'<BR>
Progress does not consist in replacing a theory that is<BR>
wrong with one that is right.  It consists in replacing<BR>
a theory that is wrong with one that is more subtly wrong.<BR>
'),(2,'<BR>
Progress is made on alternate Fridays.<BR>
'),(2,'<BR>
Pure drivel tends to drive ordinary<BR>
drivel off the TV screen.<BR>
'),(2,'<BR>
Quit while you''re still behind.<BR>
'),(2,'<BR>
RACF is a four letter word.<BR>
'),(2,'<BR>
Real programmers always have a better idea.<BR>
'),(2,'<BR>
Real programmers are kind to rookies.<BR>
'),(2,'<BR>
Real programmers are secure enough to write readable code,<BR>
which they then self-righteously refuse to explain.<BR>
'),(2,'<BR>
Real programmers argue with the systems analyst as a<BR>
matter of principle.<BR>
'),(2,'<BR>
Real programmers can do octal, hexadecimal and<BR>
binary math in their heads.<BR>
'),(2,'<BR>
Real programmers do not apply DP terminology to non-DP<BR>
situations.<BR>
'),(2,'<BR>
Real programmers do not document.<BR>
Documentation is for simps who can''t read listings or<BR>
object code.<BR>
'),(2,'<BR>
Real programmers do not eat breakfast from the<BR>
vending machines.<BR>
'),(2,'<BR>
Real programmers do not practice four-syllable words before<BR>
walkthroughs.<BR>
'),(2,'<BR>
Real programmers do not read books like<BR>
''effective listening'' and ''communication skills''.<BR>
'),(2,'<BR>
Real programmers do not utter profanities at an elevated<BR>
decibel level.<BR>
'),(2,'<BR>
Real programmers don''t advertise their hangovers.<BR>
'),(2,'<BR>
Real programmers don''t announce how many times the<BR>
operations department called them last night.<BR>
'),(2,'<BR>
Real programmers don''t comment their code. if it is hard<BR>
to write, it should be hard to understand.<BR>
'),(2,'<BR>
Real programmers don''t dress for success unless<BR>
they are trying to convince others that they are<BR>
going on interviews.<BR>
'),(2,'<BR>
Real programmers don''t eat muffins.<BR>
'),(2,'<BR>
Real programmers don''t eat quiche.  In fact, real<BR>
programmers don''t know how to spell quiche.  They eat<BR>
Twinkies and szechuan food.<BR>
'),(2,'<BR>
Real programmers don''t grumble about the disadvantages<BR>
of Cobol when they don''t know any other language.<BR>
'),(2,'<BR>
Real programmers don''t notch their desks for each<BR>
completed service request.<BR>
'),(2,'<BR>
Real programmers don''t number paragraph names<BR>
consecutively.<BR>
'),(2,'<BR>
Real programmers don''t play tennis or any other sport<BR>
that requires you to change clothes.  Mountain climbing is<BR>
O.K., and real programmers wear their climbing boots to work<BR>
in case a mountain should suddenly spring up in the middle<BR>
of the machine room.<BR>
'),(2,'<BR>
Real programmers don''t play video games, they write them.<BR>
'),(2,'<BR>
Real programmers don''t write applications programs; they<BR>
program right down on the bare metal.  Application<BR>
programming is for feebs who can''t do systems programming.<BR>
'),(2,'<BR>
Real programmers don''t write COBOL.<BR>
COBOL is for wimpy applications programmers.<BR>
'),(2,'<BR>
Real programmers don''t write in Basic.  Actually, no<BR>
programmers write in Basic after age 12.<BR>
'),(2,'<BR>
Real programmers don''t write in Pascal, Bliss, or Ada, or<BR>
any of those pinko computer science languages.  Strong<BR>
typing is for people with weak memories.<BR>
'),(2,'<BR>
Real programmers don''t write in PL/1.  PL/1 is for<BR>
programmers who can''t decide whether to write in<BR>
COBOL or Fortran.<BR>
'),(2,'<BR>
Real programmers don''t write memos.<BR>
'),(2,'<BR>
Real programmers don''t write specs -- users should<BR>
consider themselves lucky to get any programs at all and<BR>
take what they get.<BR>
'),(2,'<BR>
Real programmers drink too much coffee so that they will<BR>
always seem tense and overworked.<BR>
'),(2,'<BR>
Real programmers have read the standards manual<BR>
but won''t admit it.<BR>
'),(2,'<BR>
Real programmers know it''s not operations''<BR>
fault if their jobs go into ''hogs''.<BR>
'),(2,'<BR>
Real programmers know what saad means.<BR>
'),(2,'<BR>
Real programmers never work 9 to 5.  If any real<BR>
programmers are around at 9 a.m., it''s because they<BR>
were up all night.<BR>
'),(2,'<BR>
Real programmers print only clean compiles,<BR>
fixing all errors through the terminal.<BR>
'),(2,'<BR>
Real programmer''s programs never work the first time.  But<BR>
if you throw them on the machine, they can be patched into<BR>
working in ''only a few'' 30-hour debugging sessions.<BR>
'),(2,'<BR>
Real programmers punch up their own programs.<BR>
'),(2,'<BR>
Real programmers understand Pascal.<BR>
'),(2,'<BR>
Remain silent about your intentions until you are sure<BR>
'),(2,'<BR>
Return on investments won''t.<BR>
'),(2,'<BR>
Roses are red violets are blue<BR>
I am schizophrenic and so am I<BR>
'),(2,'<BR>
Sale promotions don''t.<BR>
'),(2,'<BR>
Sanity and insanity overlap a fine gray line.<BR>
'),(2,'<BR>
Science is true.  Don''t be misled by facts.<BR>
'),(2,'<BR>
Security isn''t.<BR>
'),(2,'<BR>
Self starters --- won''t.<BR>
'),(2,'<BR>
Show me a person who''s never made a mistake and I''ll<BR>
show you somebody who''s never achieved much.<BR>
'),(2,'<BR>
Simple jobs always get put off because there will be<BR>
time to do them later.<BR>
'),(2,'<BR>
Some come to the fountain of knowledge to drink,<BR>
some prefer to just gargle.<BR>
'),(2,'<BR>
Some errors will always go unnoticed until the book<BR>
is in print.<BR>
'),(2,'<BR>
Some of it plus the rest of it is all of it.<BR>
'),(2,'<BR>
Souffles rise and cream whips only for the family and<BR>
for guests you didn''t really want to invite anyway.<BR>
'),(2,'<BR>
Success can be insured only by devising a defense against<BR>
failure of the contingency plan.<BR>
'),(2,'<BR>
Superiority is recessive.<BR>
'),(2,'<BR>
Systems should not be unnecessarily multiplied.<BR>
'),(2,'<BR>
Systems tend to grow and as they grow they encroach.<BR>
'),(2,'<BR>
Talent in staff work or sales will continually be<BR>
interpreted as managerial ability.<BR>
'),(2,'<BR>
Teamwork is essential.  It allows you to blame someone else.<BR>
'),(2,'<BR>
That component of any circuit which has the shortest<BR>
service life will be placed in the least<BR>
accessible location.<BR>
'),(2,'<BR>
The amount of flak received on any subject is inversely<BR>
proportional to the subject''s true value.<BR>
'),(2,'<BR>
The amount of wind will vary inversely with the number<BR>
and experience of the people you have on board.<BR>
'),(2,'<BR>
The best shots are generally attempted through the<BR>
lens cap.<BR>
'),(2,'<BR>
The best shots happen immediately after the last<BR>
frame is exposed.<BR>
'),(2,'<BR>
The best way to inspire fresh thoughts is to seal<BR>
the letter.<BR>
'),(2,'<BR>
The best way to lie is to tell the truth.....<BR>
carefully edited truth.<BR>
'),(2,'<BR>
The big guys always win.<BR>
'),(2,'<BR>
The bigger they are, the harder they hit.<BR>
'),(2,'<BR>
The boss who attempts to impress employees with his<BR>
knowledge of intricate details has lost sight of his<BR>
final objective.<BR>
'),(2,'<BR>
The chance of a piece of bread falling with the buttered<BR>
side down is directly proportional to the cost of the<BR>
carpet.<BR>
'),(2,'<BR>
The chances of anybody doing anything are inversely<BR>
proportional to the number of other people who are in<BR>
a position to do it instead.<BR>
'),(2,'<BR>
The chief cause of problems is solutions.<BR>
		-- Eric Sevareid<BR>
'),(2,'<BR>
The client who pays the least complains the most<BR>
'),(2,'<BR>
The closer you are to the facts of a situation, the<BR>
more obvious are the errors in all news coverage of<BR>
the situation.<BR>
'),(2,'<BR>
The ''consumer report'' on the item will come out a week<BR>
after you''ve made your purchase:<BR>
<BR>
(1)	The one you bought will be rated ''unacceptable''.<BR>
(2)	The one you almost bought will be rated ''best buy''.<BR>
'),(2,'<BR>
The cream rises to the top.<BR>
So does the scum.<BR>
'),(2,'<BR>
The crucial memorandum will be snared in the out-basket by<BR>
the paper clip of the overlying memo and go to file.<BR>
'),(2,'<BR>
The deficiency will never show itself during the test runs.<BR>
'),(2,'<BR>
The distance to the gate is inversely proportional<BR>
to the time available to catch your flight.<BR>
'),(2,'<BR>
The early worm deserves the bird.<BR>
'),(2,'<BR>
The easiest way to find something lost around the house<BR>
is to buy a replacement.<BR>
'),(2,'<BR>
The faster the plane,<BR>
the narrower the seats.<BR>
'),(2,'<BR>
The feasibility of an operation is not the best<BR>
indication for its performance.<BR>
'),(2,'<BR>
The final test is when it goes production ...<BR>
w h e n  i t  g o e s   p r o d u c t i o n  ...<BR>
w h e n     i  t     g  o  e  s     p  r  o  d  u  c  t<BR>
w h  e   n       i   t       g   o   e   s       p   r   o<BR>
'),(2,'<BR>
The first 90 percent of the task takes 90 percent of the<BR>
time, the last 10 percent takes the other 90 percent.<BR>
'),(2,'<BR>
The first bug to hit a clean windshield lands directly<BR>
in front of your eyes.<BR>
'),(2,'<BR>
The first insurance agent was David -<BR>
he gave Goliath a piece of the rock.<BR>
'),(2,'<BR>
The first myth of management is that it exists<BR>
the second myth of management is that success equals skill.<BR>
'),(2,'<BR>
The first page the author turns to upon receiving an<BR>
advance copy will be the page containing the worst<BR>
error.<BR>
'),(2,'<BR>
The first place to look for anything is the last place<BR>
you would expect to find it.<BR>
'),(2,'<BR>
The first rule of intelligent tinkering is to<BR>
save all of the parts.<BR>
'),(2,'<BR>
The first time is for love.<BR>
The next time is $200.<BR>
'),(2,'<BR>
The further away the disaster or accident occurs, the<BR>
greater the number of dead and injured required for it<BR>
to become a story.<BR>
'),(2,'<BR>
The further you are from the facts of a situation,<BR>
the more you tend to believe news coverage of the<BR>
situation.<BR>
'),(2,'<BR>
The greater the cost of putting a plan into operation,<BR>
the less chance there is of abandoning the plan - even<BR>
if it subsequently becomes irrelevant.<BR>
'),(2,'<BR>
The hand that rocks the cradle usually is attached<BR>
to someone who isn''t getting enough sleep.<BR>
'),(2,'<BR>
The hidden flaw never remains hidden.<BR>
'),(2,'<BR>
The higher the level of prestige accorded the people<BR>
behind the plan, the least less chance there is of<BR>
abandoning it.<BR>
'),(2,'<BR>
The inside contact that you have developed at great<BR>
expense is the first person to be let go in any<BR>
reorganization.<BR>
'),(2,'<BR>
The item you had your eye on the minute you walked in<BR>
will be taken by the person in front of you.<BR>
'),(2,'<BR>
The lagging activity in a project will invariably be found<BR>
in the area where the highest overtime rates lie waiting.<BR>
'),(2,'<BR>
The last person who quit or was fired will be held<BR>
responsible for everything that goes wrong -- until<BR>
the next person quits or is fired.<BR>
'),(2,'<BR>
The least experienced fisherman always catches the<BR>
biggest fish.<BR>
'),(2,'<BR>
The length of a marriage is inversely proportional<BR>
to the amount spent on the wedding.<BR>
'),(2,'<BR>
The life expectancy of a house plant varies inversely<BR>
with its price and directly with its ugliness.<BR>
'),(2,'<BR>
The light at the end of the tunnel can be a helluva<BR>
nuisance, especially if you''re using the tunnel<BR>
as a darkroom.<BR>
'),(2,'<BR>
The light at the end of the tunnel is the headlamp of<BR>
an oncoming train.<BR>
'),(2,'<BR>
The light at the end of the tunnel really is a train.<BR>
'),(2,'<BR>
The lion and the calf shall lie down together,<BR>
but the calf won''t get much sleep.<BR>
'),(2,'<BR>
The longer the title the less important the job.<BR>
'),(2,'<BR>
The longer you wait in line, the greater the<BR>
likelihood that you are standing in the wrong line.<BR>
'),(2,'<BR>
The love letter you finally got the courage to send<BR>
will be delayed in the mail long enough for you to<BR>
make a fool of yourself in person.<BR>
'),(2,'<BR>
The man who can smile when things go wrong has thought of<BR>
someone he can blame it on.<BR>
'),(2,'<BR>
The man who has no more problems is out of the game.<BR>
'),(2,'<BR>
The meek shall inherit the earth,<BR>
but not its mineral rights.<BR>
'),(2,'<BR>
The meek will inherit the earth<BR>
after the rest of us go to the stars.<BR>
'),(2,'<BR>
The more boring and out-of-date the magazines in the<BR>
waiting room, the longer you will have to wait for<BR>
your scheduled appointment.<BR>
'),(2,'<BR>
The more carefully you plan a project, the more<BR>
confusion there is when something goes wrong.<BR>
'),(2,'<BR>
The more complicated and grandiose the plan, the<BR>
greater the chance of failure.<BR>
'),(2,'<BR>
The more directives you issue to solve a problem,<BR>
the worse it gets.<BR>
'),(2,'<BR>
The more elaborate and costly the equipment, the greater<BR>
the chance of having to stop at the fish market<BR>
on the way home.<BR>
'),(2,'<BR>
The more expensive the gadget, the less often you<BR>
will use it.<BR>
'),(2,'<BR>
The more general the title of a course, the less<BR>
you will learn from it.<BR>
'),(2,'<BR>
The more ridiculous a belief system,<BR>
the higher probability of its success.<BR>
'),(2,'<BR>
The more specific the title of a course, the less you<BR>
will be able to apply it later.<BR>
'),(2,'<BR>
The more studying you did for the exam, the less sure<BR>
you are as to which answer they want.<BR>
'),(2,'<BR>
The more time and energy you put into preparing a meal<BR>
the greater the chance your guests will spend the entire<BR>
meal discussing other meals they have had.<BR>
'),(2,'<BR>
The most important item in an order will no longer<BR>
be available.<BR>
'),(2,'<BR>
The most interesting specimen will not be labeled.<BR>
'),(2,'<BR>
The most valuable quotation will be the one for which<BR>
you cannot determine the source.<BR>
'),(2,'<BR>
The mountain gets steeper as you get closer.<BR>
'),(2,'<BR>
The mountain looks closer than it is.<BR>
'),(2,'<BR>
The one course you must take to graduate will not be<BR>
offered during your last semester.<BR>
'),(2,'<BR>
The one day you''d sell your soul for something,<BR>
souls are a glut.<BR>
'),(2,'<BR>
The one ingredient you made a special trip to the store<BR>
to get will be the one thing your guest is allergic to.<BR>
'),(2,'<BR>
The one thing that money can not buy is poverty.<BR>
'),(2,'<BR>
The one time in the day that you lean back and relax<BR>
is the one time the boss walks through the office.<BR>
'),(2,'<BR>
The one who least wants to play is the one who will win.<BR>
'),(2,'<BR>
The one who snores will fall asleep first.<BR>
'),(2,'<BR>
The one wrench or drill bit you need will be the one<BR>
missing from the tool chest.<BR>
'),(2,'<BR>
The one you want is never the one on sale.<BR>
'),(2,'<BR>
The only game that can''t be fixed is peek-a-boo.<BR>
'),(2,'<BR>
The only new TV show worth watching will be canceled.<BR>
'),(2,'<BR>
The only way to make up for being lost is to make<BR>
record time while you are lost.<BR>
'),(2,'<BR>
The only winner in the war of 1812 was Tchaikovsky.<BR>
'),(2,'<BR>
The organization of any program reflects the organization<BR>
of the people who developed it.<BR>
'),(2,'<BR>
The other line always moves faster.<BR>
'),(2,'<BR>
The phone will not ring until you leave your desk and walk<BR>
to the other end of the building.<BR>
'),(2,'<BR>
The pills to be taken with meals will be the least<BR>
appetizing ones.<BR>
'),(2,'<BR>
The primary function of the design engineer is to make<BR>
things difficult for the fabricator and impossible<BR>
for the serviceman.<BR>
'),(2,'<BR>
The probability of a cat eating its dinner has<BR>
absolutely nothing to do with the price of the food<BR>
placed before it.<BR>
'),(2,'<BR>
The probability of anything happening is in<BR>
inverse ratio to its desirability.<BR>
'),(2,'<BR>
The probability of meeting someone you know increases<BR>
when you are with someone you don''t want to be seen with.<BR>
'),(2,'<BR>
The probability that a household pet will raise a fuss<BR>
to go in or out is directly proportional to the number<BR>
and importance of your dinner guests.<BR>
'),(2,'<BR>
The quality of correlation is inversely proportional<BR>
to the density of control.<BR>
'),(2,'<BR>
The quickest way to experiment with acupuncture is to<BR>
try on a new shirt.<BR>
'),(2,'<BR>
The race goes not always to the swift, nor the battle<BR>
to the strong, but that''s the way to bet.<BR>
'),(2,'<BR>
The radiologists'' national flower is the hedge.<BR>
'),(2,'<BR>
The ratio of time involved in work to time available for<BR>
work is usually about 0.6<BR>
'),(2,'<BR>
The repairman will never have seen a model quite like<BR>
yours before.<BR>
'),(2,'<BR>
The road to hell is paved with good intentions<BR>
and littered with sloppy analyses!<BR>
'),(2,'<BR>
The rotten egg will be the one you break into the<BR>
cake batter.<BR>
'),(2,'<BR>
The scratch on the record is always through the song<BR>
you like most.<BR>
'),(2,'<BR>
The secret of success is sincerity.  Once you can fake<BR>
that you''ve got it made.<BR>
'),(2,'<BR>
The severity of an itch is inversely proportional<BR>
to the reach.<BR>
'),(2,'<BR>
The simpler the instruction, e.g. ''press here'', the<BR>
more difficult it will be to open the package.<BR>
'),(2,'<BR>
The six steps of program management are:<BR>
(1)	Wild enthusiasm<BR>
(2)	Disenchantment<BR>
(3)	Total confusion<BR>
(4)	Search for guilty<BR>
(5)	Punishment for the innocent<BR>
(6)	Promotion of the non-participants<BR>
'),(2,'<BR>
The slowest checker is always at the quick-check-out<BR>
lane.<BR>
'),(2,'<BR>
The source for an unattributed quotation will appear<BR>
in the most hostile review of your work.<BR>
'),(2,'<BR>
The speed of an oncoming vehicle is directly proportional<BR>
to the length of the passing zone.<BR>
'),(2,'<BR>
The spot you are scrubbing on glassware is always on<BR>
the other side.<BR>
'),(2,'<BR>
The stomach expands to accommodate the amount of<BR>
junk food available.<BR>
'),(2,'<BR>
The success of any venture will be helped by prayer,<BR>
even in the wrong denomination.<BR>
'),(2,'<BR>
The sun goes down just when you need it the most.<BR>
'),(2,'<BR>
The system itself does not do what it says it is doing.<BR>
'),(2,'<BR>
The tendency of smoke from a cigarette, barbeque,<BR>
campfire, etc. to drift into a person''s face varies<BR>
directly with that person''s sensitivity to smoke.<BR>
'),(2,'<BR>
The ''think positive'' leader tends to listen to his<BR>
subordinate''s premonitions only during the postmortems.<BR>
'),(2,'<BR>
The time available to go fishing shrinks as the fishing<BR>
season draws nearer.<BR>
'),(2,'<BR>
The time it takes to rectify a situation is<BR>
inversely proportional to the time it took<BR>
to do the damage.<BR>
'),(2,'<BR>
The total behavior of large systems cannot be predicted.<BR>
'),(2,'<BR>
The TV show you''ve been looking forward to all week<BR>
will be preempted.<BR>
'),(2,'<BR>
The usefulness of any meeting<BR>
is in inverse proportion to the attendance.<BR>
'),(2,'<BR>
The value of a program is proportional<BR>
to the weight of its output.<BR>
'),(2,'<BR>
The worse your line is tangled, the better is the<BR>
fishing around you.<BR>
'),(2,'<BR>
The wrong quarterback is the one that''s in there.<BR>
'),(2,'<BR>
The yoo-hoo you yoo-hoo into the forest is the yoo-hoo you<BR>
get back.<BR>
'),(2,'<BR>
Them what gets--has.<BR>
'),(2,'<BR>
There are no winners in life:  Only survivors.<BR>
'),(2,'<BR>
There are some things which are impossible to know -<BR>
but it is impossible to know these things.<BR>
'),(2,'<BR>
There are three ways to get things done:<BR>
	(1)  Do it yourself,<BR>
	(2)  Hire someone to do it, or<BR>
	(3)  Forbid your kids to do it.<BR>
'),(2,'<BR>
There are two kinds of adhesive tape:  That which won''t<BR>
stay on and that which won''t come off.<BR>
'),(2,'<BR>
There is a solution to every problem;<BR>
the only difficulty is finding it.<BR>
'),(2,'<BR>
There is always more dirty laundry then clean laundry.<BR>
'),(2,'<BR>
There is always one more bug.<BR>
'),(2,'<BR>
There is no safety in numbers, or in anything else.<BR>
'),(2,'<BR>
There is no such thing as a ''dirty capitalist'',<BR>
only a capitalist.<BR>
'),(2,'<BR>
There is no such thing as a straight line.<BR>
'),(2,'<BR>
There is nothing more frightening than ignorance in action.<BR>
'),(2,'<BR>
There''s never time to do it right, but there''s always<BR>
time to do it over.<BR>
'),(2,'<BR>
There''s no time like the present for postponing<BR>
what you don''t want to do.<BR>
'),(2,'<BR>
Things equal to nothing else are equal to each other.<BR>
'),(2,'<BR>
Things get worse under pressure.<BR>
'),(2,'<BR>
This space for rent.<BR>
'),(2,'<BR>
Those whose approval you seek the most give you the least.<BR>
'),(2,'<BR>
Those with the best advice offer no advice.<BR>
'),(2,'<BR>
Time spent consuming a meal is in inverse proportion<BR>
to time spent preparing it.<BR>
'),(2,'<BR>
To err is human -- to blame it on someone else is<BR>
even more human.<BR>
'),(2,'<BR>
To err is human, but to really foul things up requires<BR>
a computer.<BR>
'),(2,'<BR>
To err is human, to forgive is divine --<BR>
but to forget it altogether is humane.<BR>
'),(2,'<BR>
To get a loan, you must first prove you don''t need it.<BR>
'),(2,'<BR>
To know yourself is the ultimate form of aggression.<BR>
'),(2,'<BR>
To spot the expert, pick the one who predicts the job<BR>
will take the longest and cost the most.<BR>
'),(2,'<BR>
Trial balances don''t.<BR>
'),(2,'<BR>
Truth is elastic.<BR>
'),(2,'<BR>
Unless the results are known in advance, funding<BR>
agencies will reject the proposal.<BR>
'),(2,'<BR>
Unless you intend to kill him immediately; never kick a man<BR>
in the balls, not even symbolically or perhaps especially<BR>
not symbolically.<BR>
'),(2,'<BR>
Usefulness is inversely proportional to its reputation<BR>
for being useful.<BR>
'),(2,'<BR>
Vital papers will demonstrate their vitality by<BR>
spontaneously moving from where you left them to where<BR>
you can''t find them.<BR>
'),(2,'<BR>
Washing machines only break down during the wash cycle.<BR>
'),(2,'<BR>
Washing your car to make it rain doesn''t work.<BR>
'),(2,'<BR>
''Watching a birdie'' in hand is safer than watching<BR>
one overhead.<BR>
'),(2,'<BR>
Whatever can go to New York, will.<BR>
'),(2,'<BR>
Whatever carrousel you stand by, your baggage will<BR>
come in on another one.<BR>
'),(2,'<BR>
Whatever creates the greatest inconvenience for the largest<BR>
number must happen.<BR>
'),(2,'<BR>
Whatever happens to you, it will previously have<BR>
happened to everyone you know only more so.<BR>
'),(2,'<BR>
Whatever hits the fan will not be evenly distributed.<BR>
'),(2,'<BR>
Whatever it is, somebody will have had it for lunch.<BR>
'),(2,'<BR>
When a broken appliance is demonstrated for the repairman,<BR>
it will work perfectly.<BR>
'),(2,'<BR>
When a distinguished scientist states something is possible,<BR>
he is almost certainly right.  When he states that<BR>
something is impossible, he is very probably wrong.<BR>
'),(2,'<BR>
When a student asks for a second time if you have read<BR>
his book report, he did not read the book.<BR>
'),(2,'<BR>
When a writer prepares a manuscript on a subject he does<BR>
not understand, his work will be understood only by<BR>
readers who know more about that subject than he does.<BR>
'),(2,'<BR>
When all else fails, read the instructions.<BR>
'),(2,'<BR>
When an exaggerated emphasis is placed upon delegation,<BR>
responsibility, like sediment, sinks to the bottom.<BR>
'),(2,'<BR>
When in doubt, don''t mumble, overexpose ... then mumble.<BR>
'),(2,'<BR>
When in doubt, mumble.  When in trouble, delegate.<BR>
'),(2,'<BR>
When in doubt, mumble.<BR>
When in trouble, delegate.<BR>
When in charge, ponder.<BR>
'),(2,'<BR>
When in doubt, predict that the trend will continue.<BR>
'),(2,'<BR>
When in trouble, obfuscate.<BR>
'),(2,'<BR>
When life hands you a lemon, make lemonade.<BR>
'),(2,'<BR>
When more and more people are thrown out of work,<BR>
unemployment results.<BR>
'),(2,'<BR>
When necessary, metric and inch tools can be used<BR>
interchangeably.<BR>
'),(2,'<BR>
When outrageous expenditures are divided finely enough<BR>
the public will not have enough stake in any one<BR>
expenditure to squelch it.<BR>
'),(2,'<BR>
When properly administered, vacations do not diminish<BR>
productivity.  For every week you are away and get nothing<BR>
done, there is another week when your boss is away and you<BR>
get twice as much done.<BR>
'),(2,'<BR>
When putting it into memory, remember where you put it.<BR>
'),(2,'<BR>
When reviewing your notes before an exam, the most<BR>
important ones will be illegible.<BR>
'),(2,'<BR>
When somebody drops something, everybody will kick it<BR>
around instead of picking it up.<BR>
'),(2,'<BR>
When the going gets tough, everyone leaves.<BR>
		-- Lynch<BR>
'),(2,'<BR>
When the government bureau''s remedies do not match your<BR>
problem, you modify the problem, not the remedy.<BR>
'),(2,'<BR>
When the need arises, any tool or object closest to you<BR>
becomes a hammer.<BR>
'),(2,'<BR>
When the product is destined to fail, the delivery system<BR>
will perform perfectly.<BR>
'),(2,'<BR>
When they want it bad (in a rush), they get it bad.<BR>
'),(2,'<BR>
When things are going well, someone will inevitably<BR>
experiment detrimentally.<BR>
'),(2,'<BR>
When things are going well, something will go wrong.<BR>
When things just can''t get any worse, they will.<BR>
When things appear to be going better you have overlooked<BR>
something.<BR>
'),(2,'<BR>
When traveling overseas, the exchange rate improves<BR>
markedly the day after one has purchased foreign<BR>
currency.<BR>
<BR>
Upon returning home, the exchange rate drops again as<BR>
soon as one has converted all unused foreign currency.<BR>
'),(2,'<BR>
When we try to pick out anything by itself we find<BR>
it hitched to everything else in the universe.<BR>
'),(2,'<BR>
When working toward the solution of a problem,<BR>
it always helps if you know the answer.<BR>
Provided of course you know there is a problem.<BR>
'),(2,'<BR>
When you are able to schedule two classes in a row,<BR>
they will be held in classrooms at opposite end of<BR>
the campus.<BR>
'),(2,'<BR>
When you are right be logical,<BR>
when you are wrong be-fuddle.<BR>
'),(2,'<BR>
When you are sure you''re right, you have a moral duty<BR>
to impose your will upon anyone who disagrees with you.<BR>
'),(2,'<BR>
When you consider there are 24 hours in a day, it''s<BR>
sad to know that only one is called the happy hour.<BR>
'),(2,'<BR>
When you dial a wrong number, you never get a busy signal<BR>
'),(2,'<BR>
When you do not know what you are doing, do it neatly.<BR>
'),(2,'<BR>
When you need to knock on wood is when you realize the<BR>
world''s composed of aluminum and vinyl.<BR>
'),(2,'<BR>
When your opponent is down, kick him.<BR>
'),(2,'<BR>
When you''re not in a hurry, the traffic light will turn<BR>
green as soon as your vehicle comes to a complete stop.<BR>
'),(2,'<BR>
Whenever a superstar is traded to your favorite team,<BR>
he fades.  Whenever your team trades away a useless<BR>
no-name, he immediately rises to stardom.<BR>
'),(2,'<BR>
Whenever you cut your fingernails you will find a<BR>
need for them an hour later.<BR>
'),(2,'<BR>
Where you stand on an issue depends on where you sit.<BR>
'),(2,'<BR>
Why worry about tomorrow?  We may not make it through today!<BR>
'),(2,'<BR>
Work is accomplished by those employees who have not yet<BR>
reached their level of incompetence.<BR>
'),(2,'<BR>
Work may be the crabgrass of life, but money is still the<BR>
water that keeps it green.<BR>
'),(2,'<BR>
Workers won''t.<BR>
'),(2,'<BR>
Working capital doesn''t.<BR>
'),(2,'<BR>
Writings prepared without understanding must fail in the<BR>
first objective of communication -- informing<BR>
the uninformed.<BR>
'),(2,'<BR>
You are always complimented on the item which took the<BR>
least effort to prepare.<BR>
<BR>
Example:<BR>
	If you make ''duck a l''orange'' you will be<BR>
	complimented on the baked potato.<BR>
'),(2,'<BR>
You are not drunk if you can lay on the floor without<BR>
holding on.<BR>
'),(2,'<BR>
You can always find what you''re not looking for.<BR>
'),(2,'<BR>
You can lead a horse to water, but if you can get him to<BR>
float on his back, you''ve really got something.<BR>
'),(2,'<BR>
You can never do just one thing.<BR>
		-- Hardin<BR>
'),(2,'<BR>
You can pray hard enough to make water run uphill<BR>
how hard?<BR>
Hard enough to make water run uphill.<BR>
'),(2,'<BR>
You can''t expect to hit the jackpot<BR>
if you don''t put a few nickels in the machine.<BR>
'),(2,'<BR>
You can''t fix it if it ain''t broke.<BR>
'),(2,'<BR>
You can''t guard against the arbitrary.<BR>
'),(2,'<BR>
You can''t tell how deep a puddle is until you step into it.<BR>
'),(2,'<BR>
You don''t have to be crazy to work here<BR>
but it sure helps!!!!!!!<BR>
'),(2,'<BR>
You may be recognized soon.<BR>
Hide!<BR>
If they find you, lie.<BR>
'),(2,'<BR>
You may know where the market is going, but you can''t<BR>
possibly know where it''s going after that.<BR>
'),(2,'<BR>
You never have the right number of pills left on the<BR>
last day of a prescription.<BR>
'),(2,'<BR>
You never know who''s right, but you always know<BR>
who''s in charge.<BR>
'),(2,'<BR>
You sure have to borrow a lot of money these days to<BR>
be an average consumer.<BR>
'),(2,'<BR>
You will always find something in the last place you look.<BR>
'),(2,'<BR>
You will remember that you forgot to take out the trash<BR>
when the garbage truck is two doors away.<BR>
'),(2,'<BR>
You will save yourself a lot of needless worry if you<BR>
don''t burn your bridges until you come to them.<BR>
'),(2,'<BR>
You win some, lose some, and some get rained out; but you<BR>
gotta suit up for them all.<BR>
');

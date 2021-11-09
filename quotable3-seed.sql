-- both test users have the password "password"

INSERT INTO users (username, password, first_name, last_name, email, is_admin)
VALUES ('testuser',
        '$2b$12$AZH7virni5jlTTiGgEg4zu3lSvAw68qVEfSIOjJ3RqtbJbdW/Oi5q',
        'Test',
        'User',
        'joel@joelburton.com',
        FALSE),
       ('testadmin',
        '$2b$12$AZH7virni5jlTTiGgEg4zu3lSvAw68qVEfSIOjJ3RqtbJbdW/Oi5q',
        'Test',
        'Admin!',
        'joel@joelburton.com',
        TRUE);

DELETE FROM authors WHERE handle LIKE '%franklin-d-roosevelt%';
DELETE FROM authors WHERE handle LIKE '%anne-frank%';
DELETE FROM authors WHERE handle LIKE '%robert-frost%';
DELETE FROM authors WHERE handle LIKE '%bob-marley%';
DELETE FROM authors WHERE handle LIKE '%john-lennon%';
DELETE FROM authors WHERE handle LIKE '%marilyn-monroe%';
DELETE FROM authors WHERE handle LIKE '%martin-luther-king-jr%';
DELETE FROM authors WHERE handle LIKE '%estée-lauder%';
DELETE FROM authors WHERE handle LIKE '%walt-whitman%';
DELETE FROM authors WHERE handle LIKE '%henry-ford%';
DELETE FROM authors WHERE handle LIKE '%leonardo-da-vinci%';
DELETE FROM authors WHERE handle LIKE '%robin-williams%';
DELETE FROM authors WHERE handle LIKE '%thomas-edison%';
DELETE FROM authors WHERE handle LIKE '%oprah-winfrey%';
DELETE FROM authors WHERE handle LIKE '%dr-seuss%';
DELETE FROM authors WHERE handle LIKE '%bette-midler%';
DELETE FROM authors WHERE handle LIKE '%james-carrey%';
DELETE FROM authors WHERE handle LIKE '%amelia-earhart%';
DELETE FROM authors WHERE handle LIKE '%audrey-hepburn%';
DELETE FROM authors WHERE handle LIKE '%buddha%';
DELETE FROM authors WHERE handle LIKE '%coco-chanel%';
DELETE FROM authors WHERE handle LIKE '%genghis-khan%';
DELETE FROM authors WHERE handle LIKE '%george-washington%';
DELETE FROM authors WHERE handle LIKE '%mark-twain%';
DELETE FROM authors WHERE handle LIKE '%oscar-wilde%';
DELETE FROM authors WHERE handle LIKE '%sigmund-freud%';
DELETE FROM authors WHERE handle LIKE '%steve-jobs%';
DELETE FROM authors WHERE handle LIKE '%stephen-king%';
DELETE FROM authors WHERE handle LIKE '%thomas-jefferson%';
DELETE FROM authors WHERE handle LIKE '%wayne-gretzky%';
DELETE FROM authors WHERE handle LIKE '%winston-churchill%';
DELETE FROM authors WHERE handle LIKE '%voltaire%';
DELETE FROM authors WHERE handle LIKE '%vincent-van-gogh%';
DELETE FROM authors WHERE handle LIKE '%elon-musk%';
DELETE FROM authors WHERE handle LIKE '%f-scott-fitzgerald%';
DELETE FROM authors WHERE handle LIKE '%barack-obama%';
DELETE FROM authors WHERE handle LIKE '%michelle-obama%';
DELETE FROM authors WHERE handle LIKE '%anne-hathaway%';
DELETE FROM authors WHERE handle LIKE '%confucius%';
DELETE FROM authors WHERE handle LIKE '%eleanor-roosevelt%';
DELETE FROM authors WHERE handle LIKE '%meryl-streep%';
DELETE FROM authors WHERE handle LIKE '%vera-wang%';
DELETE FROM authors WHERE handle LIKE '%abraham-lincoln%';
DELETE FROM authors WHERE handle LIKE '%albert-einstein%';
DELETE FROM authors WHERE handle LIKE '%harrison-ford%';
DELETE FROM authors WHERE handle LIKE '%mother-teresa%';
DELETE FROM authors WHERE handle LIKE '%nicholas-sparks%';
DELETE FROM authors WHERE handle LIKE '%dale-carnegie%';
DELETE FROM authors WHERE handle LIKE '%maya-angelou%';
DELETE FROM authors WHERE handle LIKE '%jrr-tolkien%';
DELETE FROM authors WHERE handle LIKE '%bruce-lee%';
DELETE FROM authors WHERE handle LIKE '%will-smith%';
DELETE FROM authors WHERE handle LIKE '%walt-disney%';
DELETE FROM authors WHERE handle LIKE '%laurel-thatcher-ulrich%';
DELETE FROM authors WHERE handle LIKE '%yoko-ono%';
DELETE FROM authors WHERE handle LIKE '%woody-allen%';
DELETE FROM authors WHERE handle LIKE '%les-brown%';
DELETE FROM authors WHERE handle LIKE '%lao-tzu%';
DELETE FROM authors WHERE handle LIKE '%nelson-mandela%';
DELETE FROM authors WHERE handle LIKE '%socrates%';
DELETE FROM authors WHERE handle LIKE '%ming-dao-deng%';
DELETE FROM authors WHERE handle LIKE '%emily-dickinson%';
DELETE FROM authors WHERE handle LIKE '%steve-maraboli%';
DELETE FROM authors WHERE handle LIKE '%zig-ziglar%';
DELETE FROM authors WHERE handle LIKE '%alexander-graham-bell%';
DELETE FROM authors WHERE handle LIKE '%aristotle%';
DELETE FROM authors WHERE handle LIKE '%nikola-tesla%';
DELETE FROM authors WHERE handle LIKE '%benjamin-franklin%';
DELETE FROM authors WHERE handle LIKE '%john-d-rockefeller%';
DELETE FROM authors WHERE handle LIKE '%jeff-bezos%';
DELETE FROM authors WHERE handle LIKE '%vince-lombardi%';
DELETE FROM authors WHERE handle LIKE '%bob-dylan%';
DELETE FROM authors WHERE handle LIKE '%huang-po%';
DELETE FROM authors WHERE handle LIKE '%earl-nightingale%';
DELETE FROM authors WHERE handle LIKE '%orison-swett-marden%';
DELETE FROM authors WHERE handle LIKE '%judy-garland%';
DELETE FROM authors WHERE handle LIKE '%joan-rivers%';
DELETE FROM authors WHERE handle LIKE '%colin-powell%';
DELETE FROM authors WHERE handle LIKE '%rumi%';
DELETE FROM authors WHERE handle LIKE '%og-mandino%';
DELETE FROM authors WHERE handle LIKE '%william-faulkner%';
DELETE FROM authors WHERE handle LIKE '%hillary-clinton%';
DELETE FROM authors WHERE handle LIKE '%chinese-proverb%';
DELETE FROM authors WHERE handle LIKE '%gandhi%';
DELETE FROM authors WHERE handle LIKE '%osho%';
DELETE FROM authors WHERE handle LIKE '%alexander-pope%';
DELETE FROM authors WHERE handle LIKE '%zen-proverb%';
DELETE FROM authors WHERE handle LIKE '%vidal-sassoon%';
DELETE FROM authors WHERE handle LIKE '%tony-robbins%';
DELETE FROM authors WHERE handle LIKE '%sonia-ricotti%';
DELETE FROM authors WHERE handle LIKE '%june-carter-cash%';
DELETE FROM authors WHERE handle LIKE '%stephen-hawking%';
DELETE FROM authors WHERE handle LIKE '%james-cameron%';
DELETE FROM authors WHERE handle LIKE '%george-eliot%';
DELETE FROM authors WHERE handle LIKE '%christopher-reeve%';
DELETE FROM authors WHERE handle LIKE '%billie-jean-king%';
DELETE FROM authors WHERE handle LIKE '%alan-watts%';
DELETE FROM authors WHERE handle LIKE '%babe-ruth%';
DELETE FROM authors WHERE handle LIKE '%herodotus%';
DELETE FROM authors WHERE handle LIKE '%leo-tolstoy%';
DELETE FROM authors WHERE handle LIKE '%martina-navratilova%';

INSERT INTO authors (handle,
                       name,
                       num_employees,
                       description,
                       logo_url)
VALUES  ('franklin-d-roosevelt', 'Franklin D. Roosevelt', 1, '32nd U.S. President', './images/franklin-d-roosevelt.jpeg'),
        ('bob-marley', 'Bob Marley', 2, 'Jamaican singer-songwriter', NULL),
        ('anne-frank', 'Anne Frank', 3, 'German-Dutch diarist of Jewish heritage.', NULL),
        ('robert-frost', 'Robert Frost', 4, 'An American poet.', NULL),
        ('john-lennon', 'John Lennon', 5, 'John Winston Ono Lennon was an English singer, songwriter, musician and peace activist who achieved worldwide fame as the founder, co-songwriter, co-lead vocalist and rhythm guitarist of the Beatles.', NULL),
        ('marilyn-monroe', 'Marilyn Monroe', 6, 'Marilyn Monroe was an American actress, model and singer. Famous for playing comedic "blonde bombshell" characters.', NULL),
        ('martin-luther-king-jr', 'Martin Luther King Jr.', 7, 'Martin Luther King Jr. was an American Baptist minister and activist who became the most visible spokesman and leader in the American civil rights movement from 1955 until his assassination in 1968.', NULL),
        ('estée-lauder', 'Estée Lauder', 8, 'Estée Lauder was an American businesswoman. Lauder was the only woman on Time magazine''s 1998 list of the 20 most influential business geniuses of the 20th century.', NULL),
        ('walt-whitman', 'Walt Whitman', 9, 'Walter Whitman was an American poet, essayist, and journalist.', NULL),
        ('henry-ford', 'Henry Ford', 10, 'Henry Ford was an American industrialist, business magnate, and founder of the Ford Motor Company, and chief developer of the assembly line technique of mass production.', NULL),
        ('leonardo-da-vinci', 'Leonardo da Vinci', 11, 'Leonardo da Vinci was an Italian polymath of the High Renaissance who was active as a painter, draughtsman, engineer, scientist, theorist, sculptor and architect.', NULL),
        ('robin-williams', 'Robin Williams', 12, 'Robin McLaurin Williams was an American actor and comedian. He is regarded as one of the best comedians of all time.', NULL),
        ('thomas-edison', 'Thomas Edison', 13, 'Thomas Alva Edison was an American inventor and businessman who has been described as America''s greatest inventor.', NULL),
        ('oprah-winfrey', 'Oprah Winfrey', 14, 'Oprah Gail Winfrey is an American talk show host, television producer, actress, author, and philanthropist.', NULL),
        ('dr-seuss', 'Dr. Seuss', 15, 'Theodor Seuss Geisel was an American children''s author, political cartoonist, illustrator, poet, animator, and filmmaker.', NULL),
        ('bette-midler', 'James Carrey', 16, 'James Eugene Carrey is a Canadian-American actor, comedian, writer, and producer.', NULL),
        ('james-carrey', 'Bette Midler', 17, 'Bette Midler is an American singer, songwriter, actress, and comedian.', NULL),
        ('amelia-earhart', 'Amelia Earhart', 18, 'Amelia Mary Earhart was an American aviation pioneer and author. Earhart was the first female aviator to fly solo across the Atlantic Ocean.', NULL),
        ('audrey-hepburn', 'Audrey Hepburn', 19, 'Audrey Hepburn was a British actress and humanitarian. Recognised as both a film and fashion icon, she was ranked by the American Film Institute as the third-greatest female screen legend from the Classical Hollywood cinema and was inducted into the International Best Dressed List Hall of Fame.', NULL),
        ('buddha', 'Buddha', 20, 'Gautama Buddha, popularly known as the Buddha or Lord Buddha, was a Śramaṇa who lived in ancient India.', NULL),
        ('coco-chanel', 'Coco Chanel', 21, 'Gabrielle Bonheur "Coco" Chanel was a French fashion designer and businesswoman.', NULL),
        ('genghis-khan', 'Genghis Khan', 22, 'Genghis Khan, born Temüjin, was the founder and first Great Khan of the Mongol Empire, which became the largest contiguous empire in history after his death.', NULL),
        ('george-washington', 'George Washington', 23, 'George Washington was an American political leader, military general, statesman, and Founding Father, who served as the first president of the United States from 1789 to 1797.', NULL),
        ('mark-twain', 'Mark Twain', 24, 'Samuel Langhorne Clemens, known by his pen name Mark Twain, was an American writer, humorist, entrepreneur, publisher, and lecturer.', NULL),
        ('oscar-wilde', 'Oscar Wilde', 25, 'Oscar Fingal O''Flahertie Wills Wilde was an Irish poet and playwright.', NULL),
        ('sigmund-freud', 'Sigmund Freud', 26, 'Sigmund Freud was an Austrian neurologist and the founder of psychoanalysis, a clinical method for treating psychopathology through dialogue between a patient and a psychoanalyst.', NULL),
        ('steve-jobs', 'Steve Jobs', 27, 'Steven Paul Jobs was an American business magnate, industrial designer, investor, and media proprietor.', NULL),
        ('stephen-king', 'Stephen King', 28, 'Stephen Edwin King is an American author of horror, supernatural fiction, suspense, crime, science-fiction, and fantasy novels.', NULL),
        ('thomas-jefferson', 'Thomas Jefferson', 29, 'Thomas Jefferson was an American statesman, diplomat, lawyer, architect, philosopher, and Founding Father who served as the third president of the United States from 1801 to 1809.', NULL),
        ('wayne-gretzky', 'Wayne Gretzky', 30, 'Wayne Douglas Gretzky CC is a Canadian former professional ice hockey player and former head coach.', NULL),
        ('winston-churchill', 'Winston Churchill', 31, 'Sir Winston Leonard Spencer Churchill, KG, OM, CH, TD, DL, FRS, RA was a British statesman who served as Prime Minister of the United Kingdom from 1940 to 1945.', NULL),
        ('voltaire', 'Voltaire', 32, 'François-Marie Arouet, known by his nom de plume Voltaire, was a French Enlightenment writer, historian, and philosopher famous for his wit, his criticism of Christianity.', NULL),
        ('vincent-van-gogh', 'Vincent van Gogh', 33, 'Vincent Willem van Gogh was a Dutch Post-Impressionist painter who posthumously became one of the most famous and influential figures in Western art history.', NULL),
        ('elon-musk', 'Elon Musk', 34, 'Elon Reeve Musk FRS is an entrepreneur and business magnate. He is the founder, CEO, and Chief Engineer at SpaceX.', NULL),
        ('f-scott-fitzgerald', 'F. Scott Fitzgerald', 35, 'Francis Scott Key Fitzgerald was an American novelist, essayist, short story writer and screenwriter.', NULL),
        ('barack-obama', 'Barack Obama', 36, 'Barack Hussein Obama II is an American politician, author, and retired attorney who served as the 44th president of the United States from 2009 to 2017.', NULL),
        ('michelle-obama', 'Michelle Obama', 37, 'Michelle LaVaughn Robinson Obama is an American attorney and author who served as the first lady of the United States from 2009 to 2017.', NULL),
        ('anne-hathaway', 'Anne Hathaway', 38, 'Anne Jacqueline Hathaway is an American actress. She is the recipient of various accolades, including an Academy Award, a Golden Globe Award, and a Primetime Emmy Award, and was among the world''s highest-paid actresses in 2015.', NULL),
        ('confucius', 'Confucius', 39, 'Confucius was a Chinese philosopher and politician of the Spring and Autumn period who was traditionally considered the paragon of Chinese sages.', NULL),
        ('eleanor-roosevelt', 'Eleanor Roosevelt', 40, 'Eleanor Roosevelt served as the first lady of the United States from 1933 to 1945, during her husband President Franklin D. Roosevelt''s four terms in office, making her the longest-serving first lady of the United States.', NULL),
        ('meryl-streep', 'Meryl Streep', 41, 'Mary Louise "Meryl" Streep is an American actress. Often described as "the best actress of her generation", Streep is particularly noted for her versatility and accent adaptability.', NULL),
        ('vera-wang', 'Vera Wang', 42, 'Vera Ellen Wang is an American fashion designer.', NULL),
        ('abraham-lincoln', 'Abraham Lincoln', 43, 'Abraham Lincoln was an American lawyer and statesman who served as the 16th president of the United States from 1861 until his assassination in 1865.', NULL),
        ('albert-einstein', 'Albert Einstein', 44, 'Albert Einstein was a German-born theoretical physicist, widely acknowledged to be one of the greatest physicists of all time.', NULL),
        ('harrison-ford', 'Harrison Ford', 45, 'Harrison Ford is an American actor. As of 2020, the U.S. domestic box-office places him at No. 7 on the list of highest-grossing domestic box office stars of all time.', NULL),
        ('mother-teresa', 'Mother Teresa', 46, 'Mother Mary Teresa Bojaxhiu, honoured in the Catholic Church as Saint Teresa of Calcutta, was an Albanian-Indian Roman Catholic nun and missionary.', NULL),
        ('nicholas-sparks', 'Nicholas Sparks', 47, 'Nicholas Charles Sparks is an American novelist, screenwriter, and philanthropist.', NULL),
        ('dale-carnegie', 'Dale Carnegie', 48, 'Dale Carnegie was an American writer and lecturer, and the developer of courses in self-improvement, salesmanship, corporate training, public speaking, and interpersonal skills.', NULL),
        ('maya-angelou', 'Maya Angelou', 49, 'Maya Angelou was an American poet, memoirist, and civil rights activist.', NULL),
        ('jrr-tolkien', 'J. R. R. Tolkien', 50, 'John Ronald Reuel Tolkien CBE FRSL was an English writer, poet, philologist, and academic, best known as the author of the high fantasy works The Hobbit and The Lord of the Rings.', NULL),
        ('bruce-lee', 'Bruce Lee', 51, 'Lee Jun-fan, known professionally as Bruce Lee, was a Hong Kong American martial artist, actor, director, martial arts instructor and philosopher.', NULL),
        ('will-smith', 'Will Smith', 52, 'Willard Carroll Smith Jr. is an American actor, rapper, and film producer.', NULL),
        ('walt-disney', 'Walt Disney', 53, 'Walter Elias Disney was an American entrepreneur, animator, writer, voice actor, and film producer.', NULL),
        ('laurel-thatcher-ulrich', 'Laurel Thatcher Ulrich', 54, 'Laurel Thatcher Ulrich is a Pulitzer Prize-winning American historian specializing in early America and the history of women, and a professor at Harvard University.', NULL),
        ('yoko-ono', 'Yoko Ono', 55, 'Yoko Ono is a Japanese multimedia artist, singer, songwriter and peace activist.', NULL),
        ('woody-allen', 'Woody Allen', 56, 'Woody Allen is an American film director, writer, actor and comedian whose career spans more than six decades and multiple Academy Award-winning films.', NULL),
        ('les-brown', 'Les Brown', 57, 'Leslie Calvin "Les" Brown is an American motivational speaker.', NULL),
        ('lao-tzu', 'Lao Tzu', 58, 'Lao Tzu, also rendered as Laozi and Lao-Tze, was an ancient Chinese philosopher and writer.', NULL),
        ('nelson-mandela', 'Nelson Mandela', 59, 'Nelson Rolihlahla Mandela was a South African anti-apartheid revolutionary, politician and philanthropist who served as the first president of South Africa from 1994 to 1999.', NULL),
        ('socrates', 'Socrates', 60, 'Socrates was a Greek philosopher from Athens who is credited as a founder of Western philosophy and the first moral philosopher of the ethical tradition of thought.', NULL),
        ('ming-dao-deng', 'Ming-Dao Deng', 61, 'Deng Ming-Dao is a Chinese American author, artist, philosopher, teacher and martial artist.', NULL),
        ('emily-dickinson', 'Emily Dickinson', 62, 'Deng Ming-Dao is a Chinese American author, artist, philosopher, teacher and martial artist.', NULL),
        ('steve-maraboli', 'Steve Maraboli', 63, 'Steve Maraboli is a life-changing Speaker, bestselling Author, and Behavioral Science Academic.', NULL),
        ('zig-ziglar', 'Zig Ziglar', 64, 'Hilary Hinton "Zig" Ziglar was an American author, salesman, and motivational speaker.', NULL),
        ('alexander-graham-bell', 'Alexander Graham Bell', 65, 'Alexander Graham Bell was a Scottish-born inventor, scientist, and engineer who is credited with inventing and patenting the first practical telephone.', NULL),
        ('aristotle', 'Aristotle', 66, 'Aristotle was a Greek philosopher and polymath during the Classical period in Ancient Greece.', NULL),
        ('nikola-tesla', 'Nikola Tesla', 67, 'Nikola Tesla was a Serbian-American inventor, electrical engineer, mechanical engineer, and futurist best known for his contributions to the design of the modern alternating current electricity supply system.', NULL),
        ('benjamin-franklin', 'Benjamin Franklin', 68, 'Founding Father of the United States of America.', NULL),
        ('john-d-rockefeller', 'John D. Rockefeller', 69, 'John Davison Rockefeller Sr. was an American business magnate and philanthropist.', NULL),
        ('jeff-bezos', 'Jeff Bezos', 70, 'Jeffrey Preston Bezos is an American entrepreneur, media proprietor, investor, and computer engineer.', NULL),
        ('vince-lombardi', 'Vince Lombardi', 71, 'Vincent Thomas Lombardi was an American football coach, and executive in the National Football League.', NULL),
        ('bob-dylan', 'Bob Dylan', 72, 'Bob Dylan is an American singer-songwriter.', NULL),
        ('huang-po', 'Huang Po', 73, 'Huángbò Xīyùn was an influential master of Zen Buddhism during the Tang Dynasty.', NULL),
        ('earl-nightingale', 'Earl Nightingale', 74, 'Earl Nightingale was an American radio speaker and author, dealing mostly with the subjects of human character development, motivation, and meaningful existence.', NULL),
        ('orison-swett-marden', 'Orison Swett Marden', 75, 'Dr. Orison Swett Marden was an American inspirational author who wrote about achieving success in life and founded SUCCESS magazine in 1897.', NULL),
        ('judy-garland', 'Judy Garland', 76, 'Frances Ethel Gumm, best known and addressed by her stage name Judy Garland, was an American actress, singer, dancer, vaudevillian, television presenter and radio presenter.', NULL),
        ('joan-rivers', 'Joan Rivers', 77, 'Joan Alexandra Molinsky, known professionally as Joan Rivers, was an American comedian, actress, writer, producer, and television host.', NULL),
        ('colin-powell', 'Colin Powell', 78, 'Colin Luther Powell was an American politician, statesman, diplomat, and United States Army officer who served as the 65th United States secretary of state from 2001 to 2005.', NULL),
        ('rumi', 'Rumi', 79, 'Jalāl ad-Dīn Mohammad Rūmī, more popularly known simply as Rumi, was a 13th-century Persian poet.', NULL),
        ('og-mandino', 'Og Mandino', 80, 'Augustine "Og" Mandino II was an American author. He wrote the bestselling book The Greatest Salesman in the World.', NULL),
        ('william-faulkner', 'William Faulkner', 81, 'William Cuthbert Faulkner was an American writer known for his novels and short stories set in the fictional Yoknapatawpha County.', NULL),
        ('hillary-clinton', 'Hillary Clinton', 82, 'Hillary Diane Rodham Clinton is an American politician, diplomat, lawyer, writer, and public speaker who served as the 67th United States secretary of state from 2009 to 2013.', NULL),
        ('chinese-proverb', 'Chinese Proverb', 83, 'Chinese proverbs (諺語, yànyŭ) are popular sayings taken from literature, history, and famous people such as philosophers.', NULL),
        ('gandhi', 'Mahatma Gandhi', 84, 'Mohandas Karamchand Gandhi was an Indian lawyer, anti-colonial nationalist and political ethicist who employed nonviolent resistance to lead the successful campaign for India''s independence from British rule and in turn to inspire movements for civil rights and freedom across the world.', NULL),
        ('osho', 'Osho', 85, 'Rajneesh, also known as Acharya Rajneesh, Bhagwan Shree Rajneesh, and later as Osho, was an Indian godman, mystic, cult leader, and founder of the Rajneesh movement.', NULL),
        ('alexander-pope', 'Alexander Pope', 86, 'Alexander Pope was an English poet and satirist of the Augustan period and one of its greatest artistic exponents.', NULL),
        ('zen-proverb', 'Zen Proverb', 87, 'Zen is a type of Buddhism that focuses on awareness through the practice of meditation.', NULL),
        ('vidal-sassoon', 'Vidal Sassoon', 88, 'Vidal Sassoon CBE was a British hairstylist, businessman, and philanthropist.', NULL),
        ('tony-robbins', 'Tony Robbins', 89, 'Anthony Jay Robbins is an American author, coach, speaker, and philanthropist.', NULL),
        ('sonia-ricotti', 'Sonia Ricotti', 90, 'Sonia Ricotti is the CEO of Lead Out Loud Inc. which is a leading-edge transformational company helping people around the globe achieve boundless success in all areas of their lives.', NULL),
        ('june-carter-cash', 'June Carter Cash', 91, 'June Carter Cash was a five-time Grammy award-winning American singer, songwriter, actress, dancer, comedian, and author who was a member of the Carter Family and the second wife of singer Johnny Cash.', NULL),
        ('stephen-hawking', 'Stephen Hawking', 92, 'Stephen William Hawking CH CBE FRS FRSA was an English theoretical physicist, cosmologist, and author who was director of research at the Centre for Theoretical Cosmology at the University of Cambridge at the time of his death.', NULL),
        ('james-cameron', 'James Cameron', 93, 'James Francis Cameron CC is a Canadian filmmaker. Best known for making science fiction and epic films, he first gained recognition for directing The Terminator.', NULL),
        ('george-eliot', 'George Eliot', 94, 'Mary Ann Evans, known by her pen name George Eliot, was an English novelist, poet, journalist, translator and one of the leading writers of the Victorian era.', NULL),
        ('christopher-reeve', 'Christopher Reeve', 95, 'Christopher D''Olier Reeve was an American actor, director, and activist, best known for playing the titular main character in the film Superman and its three sequels.', NULL),
        ('billie-jean-king', 'Billie Jean King', 96, 'Billie Jean King is an American former world No. 1 tennis player. King won 39 Grand Slam titles: 12 in singles, 16 in women''s doubles, and 11 in mixed doubles.', NULL),
        ('alan-watts', 'Alan Watts', 97, 'Alan Wilson Watts was an English philosopher, writer and speaker known for interpreting and popularising Buddhism, Taoism, and Hinduism for a Western audience.', NULL),
        ('babe-ruth', 'Babe Ruth', 98, 'George Herman "Babe" Ruth was an American professional baseball player whose career in Major League Baseball spanned 22 seasons, from 1914 through 1935.', NULL),
        ('herodotus', 'Herodotus', 99, 'Herodotus was an ancient Greek writer, geographer, and historian born in the Greek city of Halicarnassus, part of the Persian Empire.', NULL),
        ('leo-tolstoy', 'Leo Tolstoy', 100, 'Count Lev Nikolayevich Tolstoy, usually referred to in English as Leo Tolstoy, was a Russian writer who is regarded as one of the greatest authors of all time.', NULL),

        
        ('martina-navratilova', 'Martina Navratilova', 101, 'Martina Navratilova is a Czech-American former professional tennis player and coach. Widely considered among the greatest female tennis players of all time.', NULL);
        
DELETE FROM quotes WHERE author_handle LIKE '%franklin-d-roosevelt%';
DELETE FROM quotes WHERE author_handle LIKE '%anne-frank%';
DELETE FROM quotes WHERE author_handle LIKE '%robert-frost%';
DELETE FROM quotes WHERE author_handle LIKE '%bob-marley%';
DELETE FROM quotes WHERE author_handle LIKE '%john-lennon%';
DELETE FROM quotes WHERE author_handle LIKE '%marilyn-monroe%';
DELETE FROM quotes WHERE author_handle LIKE '%martin-luther-king-jr%';
DELETE FROM quotes WHERE author_handle LIKE '%estée-lauder%';
DELETE FROM quotes WHERE author_handle LIKE '%walt-whitman%';
DELETE FROM quotes WHERE author_handle LIKE '%henry-ford%';
DELETE FROM quotes WHERE author_handle LIKE '%leonardo-da-vinci%';
DELETE FROM quotes WHERE author_handle LIKE '%robin-williams%';
DELETE FROM quotes WHERE author_handle LIKE '%thomas-edison%';
DELETE FROM quotes WHERE author_handle LIKE '%oprah-winfrey%';
DELETE FROM quotes WHERE author_handle LIKE '%dr-seuss%';
DELETE FROM quotes WHERE author_handle LIKE '%bette-midler%';
DELETE FROM quotes WHERE author_handle LIKE '%james-carrey%';
DELETE FROM quotes WHERE author_handle LIKE '%amelia-earhart%';
DELETE FROM quotes WHERE author_handle LIKE '%audrey-hepburn%';
DELETE FROM quotes WHERE author_handle LIKE '%buddha%';
DELETE FROM quotes WHERE author_handle LIKE '%coco-chanel%';
DELETE FROM quotes WHERE author_handle LIKE '%genghis-khan%';
DELETE FROM quotes WHERE author_handle LIKE '%george-washington%';
DELETE FROM quotes WHERE author_handle LIKE '%mark-twain%';
DELETE FROM quotes WHERE author_handle LIKE '%oscar-wilde%';
DELETE FROM quotes WHERE author_handle LIKE '%sigmund-freud%';
DELETE FROM quotes WHERE author_handle LIKE '%steve-jobs%';
DELETE FROM quotes WHERE author_handle LIKE '%stephen-king%';
DELETE FROM quotes WHERE author_handle LIKE '%thomas-jefferson%';
DELETE FROM quotes WHERE author_handle LIKE '%wayne-gretzky%';
DELETE FROM quotes WHERE author_handle LIKE '%winston-churchill%';
DELETE FROM quotes WHERE author_handle LIKE '%voltaire%';
DELETE FROM quotes WHERE author_handle LIKE '%vincent-van-gogh%';
DELETE FROM quotes WHERE author_handle LIKE '%elon-musk%';
DELETE FROM quotes WHERE author_handle LIKE '%f-scott-fitzgerald%';
DELETE FROM quotes WHERE author_handle LIKE '%barack-obama%';
DELETE FROM quotes WHERE author_handle LIKE '%michelle-obama%';
DELETE FROM quotes WHERE author_handle LIKE '%anne-hathaway%';
DELETE FROM quotes WHERE author_handle LIKE '%confucius%';
DELETE FROM quotes WHERE author_handle LIKE '%eleanor-roosevelt%';
DELETE FROM quotes WHERE author_handle LIKE '%meryl-streep%';
DELETE FROM quotes WHERE author_handle LIKE '%vera-wang%';
DELETE FROM quotes WHERE author_handle LIKE '%abraham-lincoln%';
DELETE FROM quotes WHERE author_handle LIKE '%albert-einstein%';
DELETE FROM quotes WHERE author_handle LIKE '%harrison-ford%';
DELETE FROM quotes WHERE author_handle LIKE '%mother-teresa%';
DELETE FROM quotes WHERE author_handle LIKE '%nicholas-sparks%';
DELETE FROM quotes WHERE author_handle LIKE '%dale-carnegie%';
DELETE FROM quotes WHERE author_handle LIKE '%maya-angelou%';
DELETE FROM quotes WHERE author_handle LIKE '%jrr-tolkien%';
DELETE FROM quotes WHERE author_handle LIKE '%bruce-lee%';
DELETE FROM quotes WHERE author_handle LIKE '%will-smith%';
DELETE FROM quotes WHERE author_handle LIKE '%walt-disney%';
DELETE FROM quotes WHERE author_handle LIKE '%laurel-thatcher-ulrich%';
DELETE FROM quotes WHERE author_handle LIKE '%yoko-ono%';
DELETE FROM quotes WHERE author_handle LIKE '%woody-allen%';
DELETE FROM quotes WHERE author_handle LIKE '%les-brown%';
DELETE FROM quotes WHERE author_handle LIKE '%lao-tzu%';
DELETE FROM quotes WHERE author_handle LIKE '%nelson-mandela%';
DELETE FROM quotes WHERE author_handle LIKE '%socrates%';
DELETE FROM quotes WHERE author_handle LIKE '%ming-dao-deng%';
DELETE FROM quotes WHERE author_handle LIKE '%emily-dickinson%';
DELETE FROM quotes WHERE author_handle LIKE '%steve-maraboli%';
DELETE FROM quotes WHERE author_handle LIKE '%zig-ziglar%';
DELETE FROM quotes WHERE author_handle LIKE '%alexander-graham-bell%';
DELETE FROM quotes WHERE author_handle LIKE '%aristotle%';
DELETE FROM quotes WHERE author_handle LIKE '%nikola-tesla%';
DELETE FROM quotes WHERE author_handle LIKE '%benjamin-franklin%';
DELETE FROM quotes WHERE author_handle LIKE '%john-d-rockefeller%';
DELETE FROM quotes WHERE author_handle LIKE '%jeff-bezos%';
DELETE FROM quotes WHERE author_handle LIKE '%vince-lombardi%';
DELETE FROM quotes WHERE author_handle LIKE '%bob-dylan%';
DELETE FROM quotes WHERE author_handle LIKE '%huang-po%';
DELETE FROM quotes WHERE author_handle LIKE '%earl-nightingale%';
DELETE FROM quotes WHERE author_handle LIKE '%orison-swett-marden%';
DELETE FROM quotes WHERE author_handle LIKE '%judy-garland%';
DELETE FROM quotes WHERE author_handle LIKE '%joan-rivers%';
DELETE FROM quotes WHERE author_handle LIKE '%colin-powell%';
DELETE FROM quotes WHERE author_handle LIKE '%rumi%';
DELETE FROM quotes WHERE author_handle LIKE '%og-mandino%';
DELETE FROM quotes WHERE author_handle LIKE '%william-faulkner%';
DELETE FROM quotes WHERE author_handle LIKE '%hillary-clinton%';
DELETE FROM quotes WHERE author_handle LIKE '%chinese-proverb%';
DELETE FROM quotes WHERE author_handle LIKE '%gandhi%';
DELETE FROM quotes WHERE author_handle LIKE '%osho%';
DELETE FROM quotes WHERE author_handle LIKE '%alexander-pope%';
DELETE FROM quotes WHERE author_handle LIKE '%zen-proverb%';
DELETE FROM quotes WHERE author_handle LIKE '%vidal-sassoon%';
DELETE FROM quotes WHERE author_handle LIKE '%tony-robbins%';
DELETE FROM quotes WHERE author_handle LIKE '%sonia-ricotti%';
DELETE FROM quotes WHERE author_handle LIKE '%june-carter-cash%';
DELETE FROM quotes WHERE author_handle LIKE '%stephen-hawking%';
DELETE FROM quotes WHERE author_handle LIKE '%james-cameron%';
DELETE FROM quotes WHERE author_handle LIKE '%george-eliot%';
DELETE FROM quotes WHERE author_handle LIKE '%christopher-reeve%';
DELETE FROM quotes WHERE author_handle LIKE '%billie-jean-king%';
DELETE FROM quotes WHERE author_handle LIKE '%alan-watts%';
DELETE FROM quotes WHERE author_handle LIKE '%babe-ruth%';
DELETE FROM quotes WHERE author_handle LIKE '%herodotus%';
DELETE FROM quotes WHERE author_handle LIKE '%leo-tolstoy%';
DELETE FROM quotes WHERE author_handle LIKE '%martina-navratilova%';


INSERT INTO quotes (title, salary, equity, author_handle)
VALUES ('My apple trees will never get across And eat the cones under his pines, I tell him. He only says, “Good fences make good neighbors.”', 0, 0, 'robert-frost'),
       ('What do we live for, if it is not to make life less difficult for each other?', 0, 0, 'george-eliot'),
       ('Everyone thinks of changing the world, but no one thinks of changing himself.', 0, 0, 'leo-tolstoy'),
       ('Muddy water is best cleared by leaving it alone.', 0, 0, 'alan-watts'),
       ('Circumstances rule men; men do not rule circumstances.', 0, 0, 'herodotus'),
       ('The destiny of man is in his own soul.', 0, 0, 'herodotus'),
       ('Every strike brings me closer to the next home run.', 0, 0, 'babe-ruth'),
       ('You just can''t beat the person who never gives up.', 0, 0, 'babe-ruth'),
       ('Never let the fear of striking out keep you from playing the game.', 0, 0, 'babe-ruth'),
       ('Trying to define yourself is like trying to bite your own teeth.', 0, 0, 'alan-watts'),
       ('The meaning of life is just to be alive. It is so plain and so obvious and so simple.', 0, 0, 'alan-watts'),
       ('Just as true humor is laughter at oneself, true humanity is knowledge of oneself.', 0, 0, 'alan-watts'),
       ('There will always be suffering. But we must not suffer over the suffering.', 0, 0, 'alan-watts'),
       ('The only way to make sense out of change is to plunge into it, move with it, and join the dance.', 0, 0, 'alan-watts'),
       ('Don''t let anyone define you. You define yourself.', 0, 0, 'billie-jean-king'),
       ('Champions keep playing until they get it right.', 0, 0, 'billie-jean-king'),
       ('I think self-awareness is probably the most important thing towards being a champion.', 0, 0, 'billie-jean-king'),
       ('Words can only have a positive effect on others if and when they are ready to listen.', 0, 0, 'christopher-reeve'),
       ('Once you choose hope, anything''s possible.', 0, 0, 'christopher-reeve'),
       ('A Hero is an ordinary individual who finds the strength to persevere and endure in spite of overwhelming obstacles.', 0, 0, 'christopher-reeve'),
       ('No one is free, even the birds are chained to the sky.', 0, 0, 'bob-dylan'),
       ('Our deeds determine us, as much as we determine our deeds.', 0, 0, 'george-eliot'),
       ('Keep true. Never be ashamed of doing right. Decide what you think is right and stick to it.', 0, 0, 'george-eliot'),
       ('Every limit is a beginning as well as an ending.', 0, 0, 'george-eliot'),
       ('One must be poor to know the luxury of giving.', 0, 0, 'george-eliot'),
       ('It will never rain roses: when we want to have more roses, we must plant more roses.', 0, 0, 'george-eliot'),
       ('Curiosity is the most powerful thing you own.', 0, 0, 'james-cameron'),
       ('Failure is an option, fear is not.', 0, 0, 'james-cameron'),
       ('Hope is not a strategy. Luck is not a factor. Fear is not an option.', 0, 0, 'james-cameron'),
       ('If you set your goals ridiculously high and its a failure, you will fail above everyone elses success.', 0, 0, 'james-cameron'),
       ('Curiosity is the most powerful thing you own. Imagination is a force that can actually manifest a reality.', 0, 0, 'james-cameron'),
       ('Quiet people have the loudest minds.', 0, 0, 'stephen-hawking'),
       ('However difficult life may seem, there is always something you can do and succeed at.', 0, 0, 'stephen-hawking'),
       ('If you are lucky enough to find love, remember it is there and don''t throw it away.', 0, 0, 'stephen-hawking'),
       ('Remember to look up at the stars and not down at your feet.', 0, 0, 'stephen-hawking'),
       ('Life would be tragic if it weren''t funny.', 0, 0, 'stephen-hawking'),
       ('After you''ve listened to it, you''ll feel like you know us a little bit better.', 0, 0, 'june-carter-cash'),
       ('I''ve flown out of character so many times. In that sense I''ve been lucky, because I''ve been given the liberty to do just about anything I''ve wanted to do in my lifetime.', 0, 0, 'june-carter-cash'),
       ('Opportunity comes when you continually push forward.', 0, 0, 'sonia-ricotti'),
       ('Surrender to what is. Let go of what was. Have faith in what will be.', 0, 0, 'sonia-ricotti'),
       ('When you say yes to change, you are choosing to navigate that path peacefully and happily and see where it takes you.', 0, 0, 'sonia-ricotti'),
       ('Why live an ordinary life, when you can live an extraordinary one.', 0, 0, 'tony-robbins'),
       ('Everybody''s life is either rewarding or an example.', 0, 0, 'tony-robbins'),
       ('Intelligence is the ability to adapt to change.', 0, 0, 'stephen-hawking'),
       ('Things do not have meaning. We assign meaning to everything.', 0, 0, 'tony-robbins'),
       ('Most people dabble their way through life, never deciding to master anything in particular.', 0, 0, 'tony-robbins'),
       ('Lack of emotion causes lack of progress and lack of motivation.', 0, 0, 'tony-robbins'),
       ('The only place where success comes before work is in the dictionary.', 0, 0, 'vidal-sassoon'),
       ('Longevity is a fleeting moment that lasts forever.', 0, 0, 'vidal-sassoon'),
       ('Whatever happens always happens on time.', 0, 0, 'zen-proverb'),
       ('Always look on the bright side of things. If you can''t comprehend this, polish that which has become dull until it begins to shine.', 0, 0, 'zen-proverb'),
       ('Your home is where your thoughts find peace.', 0, 0, 'zen-proverb'),
       ('A mountain never yields to the wind no matter how strong it is.', 0, 0, 'zen-proverb'),
       ('Live calmly. The time will come when the flowers bloom by themselves.', 0, 0, 'zen-proverb'),
       ('No one returns from a long journey the same person they were before.', 0, 0, 'zen-proverb'),
       ('A strong man overcomes an obstacle, a wise man goes the whole way.', 0, 0, 'zen-proverb'),
       ('Don''t be afraid to go slowly. Be afraid of stopping.', 0, 0, 'zen-proverb'),
       ('Obstacles don''t block the path, they are the path.', 0, 0, 'zen-proverb'),
       ('Even if you stumble and fall down, it doesn''t mean you''ve chosen the wrong path.', 0, 0, 'zen-proverb'),
       ('There are two kinds of perfect people: those who are dead, and those who have not been born yet.', 0, 0, 'chinese-proverb'),
       ('Distant water does not put out a nearby fire.', 0, 0, 'chinese-proverb'),
       ('Blessed is he who expects nothing, for he shall never be disappointed.', 0, 0, 'alexander-pope'),
       ('If you want to know what God thinks about money just look at the people He gives it to.', 0, 0, 'alexander-pope'),
       ('A man is but a product of his thoughts. What he thinks he becomes.', 0, 0, 'gandhi'),
       ('Truth is not something outside to be discovered, it is something inside to be realized.', 0, 0, 'osho'),
       ('Love is not about possession. Love is about appreciation.', 0, 0, 'osho'),
       ('Don''t seek, don''t search, don''t ask, don''t knock, don''t demand – relax.', 0, 0, 'osho'),
       ('Change yourself - you are in control.', 0, 0, 'gandhi'),
       ('Happiness is when what you think, what you say, and what you do are in harmony.', 0, 0, 'gandhi'),
       ('The future depends on what you do today.', 0, 0, 'gandhi'),
       ('Happiness is when what you think, what you say, and what you do are in harmony.', 0, 0, 'gandhi'),
       ('The best way to find yourself is to lose yourself in the service of others.', 0, 0, 'gandhi'),
       ('Teachers open the door. You enter by yourself.', 0, 0, 'chinese-proverb'),
       ('No matter how tall the mountain is, it cannot block the sun.', 0, 0, 'chinese-proverb'),
       ('A wise man makes his own decisions, but an ignorant man mindlessly follows the crowd.', 0, 0, 'chinese-proverb'),
       ('Failure will never overtake me if my determination to succeed is strong enough.', 0, 0, 'og-mandino'),
       ('There''s a difference between fair game and playing games.', 0, 0, 'hillary-clinton'),
       ('The first time I see a jogger smiling, I’ll consider it.', 0, 0, 'joan-rivers'),
       ('Failure is the highway to success.', 0, 0, 'og-mandino'),
       ('When you judge others, you do not define them, you define yourself.', 0, 0, 'earl-nightingale'),
       ('Raise your words, not voice. It is rain that grows flowers, not thunder.', 0, 0, 'rumi'),
       ('It’s obvious that women are smarter than men. Think about it – diamonds are a girl’s best friend; man’s best friend is a dog.', 0, 0, 'joan-rivers'),
       ('Take care of all your memories. For you cannot relive them.', 0, 0, 'bob-dylan'),
       ('Individual commitment to a group effort, that is what makes a team work.', 0, 0, 'vince-lombardi'),
       ('Here it is--right now. Start thinking about it and you miss it.', 0, 0, 'huang-po'),
       ('Your task is not to seek for love, but merely to seek and find all the barriers within yourself that you have built against it.', 0, 0, 'rumi'),
       ('There is nothing so stable as change.', 0, 0, 'bob-dylan'),
       ('Always be a first rate version of yourself and not a second rate version of someone else.', 0, 0, 'judy-garland'),
       ('Why do you stay in prison when the door is so wide open?', 0, 0, 'rumi'),
       ('Learning is a weightless treasure you can always carry easily.', 0, 0, 'chinese-proverb'),
       ('I hate housework. You make the beds, you wash the dishes and six months later you have to start all over again.', 0, 0, 'joan-rivers'),
       ('I''m a woman who wants to reach out and take 40 million people in her arms.', 0, 0, 'judy-garland'),
       ('All men who have achieved great things have been great dreamers.', 0, 0, 'orison-swett-marden'),
       ('Your world is a living expression of how you are using and have used your mind.', 0, 0, 'earl-nightingale'),
       ('Never settle for the crumbs of life.', 0, 0, 'og-mandino'),
       ('Listen. I wish I could tell you it gets better. But, it doesn’t get better. You get better.', 0, 0, 'joan-rivers'),
       ('The foolish reject what they see, not what they think; the wise reject what they think, not what they see.', 0, 0, 'huang-po'),
       ('If you can accept losing you can’t win. If you can walk you can run. No one is ever hurt. Hurt is in your mind.', 0, 0, 'vince-lombardi'),
       ('Forty for you, sixty for me. And equal partners we will be.', 0, 0, 'joan-rivers'),
       ('I try to bring the audience''s own drama - tears and laughter they know about - to them.', 0, 0, 'judy-garland'),
       ('A crisis is an opportunity riding the dangerous wind.', 0, 0, 'chinese-proverb'),
       ('Perpetual optimism is a force multiplier.', 0, 0, 'colin-powell'),
       ('There are no secrets to success. It is the result of preparation, hard work, and learning from failure.', 0, 0, 'colin-powell'),
       ('Football is like life – it requires perseverance, self-denial, hard work, sacrifice, dedication and respect for authority.', 0, 0, 'vince-lombardi'),
       ('I''ve always taken ''The Wizard of Oz'' very seriously, you know. I believe in the idea of the rainbow. And I''ve spent my entire life trying to get over it.', 0, 0, 'judy-garland'),
       ('You cannot swim for new horizons until you have courage to lose sight of the shore.', 0, 0, 'william-faulkner'),
       ('We must be free not because we claim freedom, but because we practice it.', 0, 0, 'william-faulkner'),
       ('Avoid having your ego so close to your position that when your position falls, your ego goes with it.', 0, 0, 'colin-powell'),
       ('Well-behaved women seldom make history.', 0, 0, 'laurel-thatcher-ulrich'),
       ('Women are the largest untapped reservoir of talent in the world.', 0, 0, 'hillary-clinton'),
       ('You got a dream... You gotta protect it. People can''t do somethin'' themselves, they wanna tell you you can''t do it. If you want somethin'', go get it. Period.', 0, 0, 'will-smith'),
       ('You miss 100% of the shots you don''t take.', 0, 0, 'wayne-gretzky'),
       ('No one can make you feel inferior without your consent.', 0, 0, 'eleanor-roosevelt'),
       ('People will forget what you said, people will forget what you did, but people will never forget how you made them feel.', 0, 0, 'maya-angelou'),
       ('Those who deny freedom to others, deserve it not for themselves.', 0, 0, 'abraham-lincoln'),
       ('I think the best role models for women are people who are fruitfully and confidently themselves, who bring light into the world.', 0, 0, 'meryl-streep'),
       ('If my future were determined just by my performance on a standardized test, I wouldn''t be here. I guarantee you that.', 0, 0, 'michelle-obama'),
       ('When Henry Ford made cheap, reliable cars, people said, ''Nah, what''s wrong with a horse?'' That was a huge bet he made, and it worked.', 0, 0, 'elon-musk'),
       ('Life is like riding a bicycle. To keep your balance you must keep moving.', 0, 0, 'albert-einstein'),
       ('Sometimes you just have to throw on a crown and remind them who they’re dealing with.', 0, 0, 'marilyn-monroe'),
       ('I hope she''ll be a fool -- that''s the best thing a girl can be in this world, a beautiful little fool.', 0, 0, 'f-scott-fitzgerald'),
       ('Some people feel the rain. Others just get wet.', 0, 0, 'bob-marley'),
       ('The best love is the kind that awakens the soul and makes us reach for more, that plants a fire in our hearts and brings peace to our minds. And that''s what you''ve given me. That''s what I''d hoped to give you forever.', 0, 0, 'nicholas-sparks'),
       ('In the unlikely story that is America, there has never been anything false about hope.', 0, 0, 'barack-obama'),
       ('A person’s a person, no matter how small.', 0, 0, 'dr-seuss'),
       ('Hey. Don''t ever let somebody tell you... You can''t do something. Not even me. All right?', 0, 0, 'will-smith'),
       ('Be clearly aware of the stars and infinity on high. Then life seems almost enchanted after all.', 0, 0, 'vincent-van-gogh'),
       ('Love truth, but pardon error.', 0, 0, 'voltaire'),
       ('Never trouble another for what you can do yourself.', 0, 0, 'thomas-jefferson'),
       ('Get busy living or get busy dying.', 0, 0, 'steve-jobs'),
       ('A man told me that for a woman, I was very opinionated. I said, ''for a man you''re kind of ignorant''.', 0, 0, 'anne-hathaway'),
       ('From error to error, one discovers the entire truth.', 0, 0, 'sigmund-freud'),
       ('If you tell the truth, you don''t have to remember anything.', 0, 0, 'mark-twain'),
       ('It is better to be alone than in bad company.', 0, 0, 'george-washington'),
       ('Choose people who lift you up.', 0, 0, 'michelle-obama'),
       ('An action comitted in anger is an action doomed to failure.', 0, 0, 'genghis-khan'),
       ('Whatever is begun in anger, ends in shame.', 0, 0, 'benjamin-franklin'),
       ('You can often change your circumstances by changing your attitude.”.', 0, 0, 'eleanor-roosevelt'),
       ('When someone shows you who they are believe them the first time.', 0, 0, 'maya-angelou'),
       ('You change the world by being yourself.', 0, 0, 'yoko-ono'),
       ('You can start changing our world for the better daily, no matter how small the action.', 0, 0, 'nelson-mandela'),
       ('Now I think it’s one of the most useless questions an adult can ask a child—What do you want to be when you grow up? As if growing up is finite. As if at some point you become something and that’s the end.', 0, 0, 'michelle-obama'),
       ('Never interrupt someone doing something you said couldn’t be done.', 0, 0, 'amelia-earhart'),
       ('Saying nothing sometimes says the most.', 0, 0, 'emily-dickinson'),
       ('Radiate boundless love towards the entire world.', 0, 0, 'buddha'),
       ('You live but once; you might as well be amusing.', 0, 0, 'coco-chanel'),
       ('Those who attain the middle Dominate the whole.', 0, 0, 'ming-dao-deng'),
       ('Work without love is slavery.', 0, 0, 'mother-teresa'),
       ('Paris is always a good idea.', 0, 0, 'audrey-hepburn'),
       ('Pleasure in the job puts perfection in the work.', 0, 0, 'aristotle'),
       ('The beauty of a woman is not in a facial mole,but true beauty in a Woman is reflected in her soul. It is the caring that she lovingly gives, the passion that she knows.', 0, 0, 'audrey-hepburn'),
       ('Always forgive your enemies; nothing annoys them so much.', 0, 0, 'oscar-wilde'),
       ('All our dreams can come true, if we have the courage to pursue them.', 0, 0, 'walt-disney'),
       ('Sometimes we stare so long at a door that is closing that we see too late the one that is open.', 0, 0, 'alexander-graham-bell'),
       ('There is no greater agony than bearing an untold story inside you.', 0, 0, 'maya-angelou'),
       ('The heart wants what it wants. There''s no logic.', 0, 0, 'woody-allen'),
       ('When you reach the end of your rope, tie a knot and hang on.', 0, 0, 'abraham-lincoln'),
       ('Obviously I faced the possibility of not returning when first I considered going. Once faced and settled there really wasn’t any good reason to refer to it.', 0, 0, 'amelia-earhart'),
       ('There can be no greater gift than that of giving one''s time and energy to help others without expecting anything in return.', 0, 0, 'nelson-mandela'),
       ('A journey of a thousand miles begins with a single step.', 0, 0, 'lao-tzu'),
       ('The tennis ball doesn''t know how old I am. The ball doesn''t know if I''m a man or a woman or if I come from a communist country or not. Sport has always broken down these barriers.', 0, 0, 'martina-navratilova'),
       ('It is better to change an opinion than to persist in a wrong one.', 0, 0, 'socrates'),
       ('If you only knew the magnificence of the 3, 6, and 9, then you would have a key to the universe.', 0, 0, 'nikola-tesla'),
       ('Don’t throw stones at your neighbors, if your own windows are glass.', 0, 0, 'benjamin-franklin'),
       ('Do one thing every day that scares you.', 0, 0, 'eleanor-roosevelt'),
       ('Everything has beauty, but not everyone sees it.', 0, 0, 'confucius'),
       ('I think everybody should get rich and famous and do everything they ever dreamed of so they can see that it’s not the answer.', 0, 0, 'james-carrey'),
       ('A single act of kindness throws out roots in all directions, and the roots spring up and make new trees.', 0, 0, 'amelia-earhart'),
       ('At fifty-four, I am still in progress, and I hope that I always will be.', 0, 0, 'michelle-obama'),
       ('If you aren’t in the moment, you are either looking forward to uncertainty, or back to pain and regret.', 0, 0, 'james-carrey'),
       ('All we have to decide is what to do with the time that is given us.', 0, 0, 'jrr-tolkien'),
       ('To me, success is choice and opportunity.', 0, 0, 'harrison-ford'),
       ('Be happy in the moment, that’s enough. Each moment is all we need, not more.', 0, 0, 'mother-teresa'),
       ('I wake up some mornings and sit and have my coffee and look out at my beautiful garden, and I go, ’Remember how good this is. Because you can lose it.', 0, 0, 'james-carrey'),
       ('If you spend too much time thinking about a thing, you’ll never get it done. Make at least one definite move daily toward your goal.', 0, 0, 'bruce-lee'),
       ('I am who I am today because of the choices I made yesterday.', 0, 0, 'eleanor-roosevelt'),
       ('One of the only ways to get out of a tight box is to invent your way out.', 0, 0, 'jeff-bezos'),
       ('Let the sun stop burning, Let them tell me love''s not worth going through. If it all falls apart, I will know deep in my heart, The only dream that mattered had come true ...In this life I was loved by you.', 0, 0, 'bette-midler'),
       ('My idea of superwoman is someone who scrubs her own floors.', 0, 0, 'bette-midler'),
       ('The worst part of success is to try to find someone who is happy for you.', 0, 0, 'bette-midler'),
       ('A question that sometimes drives me hazy — am I or are the others crazy?', 0, 0, 'albert-einstein'),
       ('Who you are is always right.', 0, 0, 'ming-dao-deng'),
       ('Friendships between women, as any woman will tell you, are built of a thousand small kindnesses... swapped back and forth and over again.', 0, 0, 'michelle-obama'),
       ('To build may have to be the slow and laborious task of years. To destroy can be the thoughtless act of a single day.', 0, 0, 'winston-churchill'),
       ('Self-esteem is something you have to earn! The only way to achieve self-esteem is to work hard. People have an obligation to live up to their potential.', 0, 0, 'bette-midler'),
       ('Books are the perfect entertainment: no commercials, no batteries, hours of enjoyment for each dollar spent. What I wonder is why everybody doesn''t carry a book around for those inevitable dead spots in life.', 0, 0, 'stephen-king'),
       ('Do the one thing you think you cannot do. Fail at it. Try again. Do better the second time. The only people who never tumble are those who never mount the high wire.', 0, 0, 'oprah-winfrey'),
       ('When something is important enough, you do it even if the odds are not in your favor.', 0, 0, 'elon-musk'),
       ('The thing you fear most has no power. Your fear of it is what has the power. Facing the truth really will set you free.', 0, 0, 'oprah-winfrey'),
       ('Our job is improving the quality of life, not just delaying death.', 0, 0, 'robin-williams'),
       ('When you win, say nothing, when you lose say less.', 0, 0, 'wayne-gretzky'),
       ('The biggest adventure is what lies ahead.', 0, 0, 'jrr-tolkien'),
       ('My normal routine is pretty much putting out fires all day.', 0, 0, 'vera-wang'),
       ('It’s kind of fun to do the impossible.', 0, 0, 'walt-disney'),
       ('If you take responsibility for yourself you will develop a hunger to accomplish your dream.', 0, 0, 'les-brown'),
       ('I do believe in love; it’s wonderful—especially love third time around, it’s even more precious; it’s kind of amazing.', 0, 0, 'robin-williams'),
       ('Love is like the wind, you can''t see it but you can feel it.', 0, 0, 'nicholas-sparks'),
       ('Nothing has ever been achieved by the person who says, ‘It can’t be done.', 0, 0, 'eleanor-roosevelt'),
       ('The man who does not read has no advantage over the man who cannot read.', 0, 0, 'mark-twain'),
       ('I believe in standardizing automobiles. I do not believe in standardizing human beings.', 0, 0, 'albert-einstein'),
       ('Beauty perishes in life, but is immortal in art.', 0, 0, 'leonardo-da-vinci'),
       ('Obstacles are those frightful things you see when you take your eyes off your goals.', 0, 0, 'henry-ford'),
       ('Money and success don''t change people; they merely amplify what is already there.', 0, 0, 'will-smith'),
       ('Monsters are real, and ghosts are real too. They live inside us, and sometimes, they win.', 0, 0, 'stephen-king'),
       ('Be curious, not judgmental.', 0, 0, 'walt-whitman'),
       ('In order to be irreplaceable one must always be different.', 0, 0, 'coco-chanel'),
       ('Trust your instincts: my first reaction is almost invariably the right one.', 0, 0, 'estée-lauder'),
       ('We must learn to live together as brothers or perish together as fools.', 0, 0, 'martin-luther-king-jr'),
       ('As usual, there is a great woman behind every idiot.', 0, 0, 'john-lennon'),
       ('Should a person do good, let him do it again and again. Let him find pleasure therein, for blissful is the accumulation of good.', 0, 0, 'buddha'),
       ('Better to die fighting for freedom then be a prisoner all the days of your life.', 0, 0, 'bob-marley'),
       ('There are three things in this world that you need: Respect for all kinds of life, a nice bowel movement on a regular basis, and a navy blazer.', 0, 0, 'robin-williams'),
       ('Turn your face to the sun, as flowers know how to do.', 0, 0, 'ming-dao-deng'),
       ('The best way out is always through.', 138000, 0, 'robert-frost'),
       ('My mother was the most beautiful woman I ever saw. All I am I owe to my mother. I attribute my success in life to the moral, intellectual and physical education I received from her.', 0, 0, 'george-washington'),
       ('Have the courage to follow your heart and intuition. They somehow already know what you truly want to become. Everything else is secondary.', 0, 0, 'steve-jobs'),
       ('If you get up in the morning and think the future is going to be better, it is a bright day. Otherwise, it''s not..', 0, 0, 'elon-musk'),
       ('A woman is closest to being naked when she is well dressed.', 0, 0, 'coco-chanel'),
       ('In the face of impossible odds, people who love this country can change it.', 0, 0, 'barack-obama'),
       ('When you believe in a thing, believe in it all the way, implicitly and unquestionable.', 0, 0, 'walt-disney'),
       ('Never stop learning. Read the entire panorama of literature.', 0, 0, 'thomas-edison'),
       ('A girl doesn’t need anyone who doesn’t need her.', 0, 0, 'marilyn-monroe'),
       ('You have to accept whatever comes, and the only important thing is that you meet it with the best you have to give.', 0, 0, 'eleanor-roosevelt'),
       ('The turning points of lives are not the great moments. The real crises are often concealed in occurrences so trivial in appearance that they pass unobserved.', 0, 0, 'george-washington'),
       ('Keep away from people who try to belittle your ambitions. Small people always do that, but the really great make you feel that you, too, can become great.', 0, 0, 'mark-twain'),
       ('There are a terrible lot of lies going about the world, and the worst of it is that half of them are true.', 0, 0, 'winston-churchill'),
       ('Beauty is an attitude, there’s no secret.', 0, 0, 'estée-lauder'),
       ('In three words I can sum up everything I have learned about life: it goes on.', NULL, 0.085, 'robert-frost'),
       ('Make-up can only make you look pretty on the outside but it doesn''t help if you''re ugly on the inside. Unless you eat the make-up.', 0, 0, 'audrey-hepburn'),
       ('I do not ask the wounded person how he feels, I myself become the wounded person.', 0, 0, 'walt-whitman'),
       ('Life doesn''t get easier or more forgiving, we get stronger and more resilient.', 0, 0, 'steve-maraboli'),
       ('I keep my ideals, because in spite of everything I still believe that people are really good at heart.', 89000, 0.043, 'anne-frank'),
       ('No one has ever become poor by giving.', 63000, 0.062, 'anne-frank'),
       ('I do not like green eggs and ham. I do not like them, Sam-I-Am.', 0, 0, 'dr-seuss'),
       ('Do I contradict myself? Very well then I contradict myself, (I am large, I contain multitudes.)', 0, 0, 'walt-whitman'),
       ('Be confident, not certain.', 0, 0, 'eleanor-roosevelt'),
       ('Put blinders on to those things that conspire to hold you back, especially the ones in your own head.', 0, 0, 'meryl-streep'),
       ('It is love; love, the comfort of the human species, the preserver of the universe, the soul of all sentient beings, love, tender love.', 0, 0, 'voltaire'),
       ('It does not matter how slowly you go as long as you do not stop.', 0, 0, 'confucius'),
       ('If you''re walking down the right path and you''re willing to keep walking, eventually you''ll make progress.', 0, 0, 'barack-obama'),
       ('Those who cling to perceptions and views wander the world offending people.', 0, 0, 'buddha'),
       ('You don’t know about real loss because it only occurs when you’ve loved something more than you love yourself.', 0, 0, 'robin-williams'),
       ('Vision without execution is just hallucination.', 0, 0, 'henry-ford'),
       ('You never know when a moment and a few sincere words can have an impact on a life.', 0, 0, 'zig-ziglar'),
       ('Not all those who wander are lost.', 0, 0, 'jrr-tolkien'),
       ('Laughter is America’s most important export.', 0, 0, 'walt-disney'),
       ('As you grow older you will discover that you have two hands. One for helping yourself, the other for helping others.', 0, 0, 'audrey-hepburn'),
       ('Everything will be okay in the end. If it''s not okay, it''s not the end.', 0, 0, 'john-lennon'),
       ('A good hockey player plays where the puck is. A great hockey player plays where the puck is going to be.', 0, 0, 'wayne-gretzky'),
       ('Unexpressed emotions will never die. They are buried alive and will come forth later in uglier ways.', 0, 0, 'sigmund-freud'),
       ('The most courageous act is still to think for yourself. Aloud.', 0, 0, 'coco-chanel'),
       ('Life’s too short to hang out with people who aren’t resourceful.', 0, 0, 'jeff-bezos'),
       ('I fell in love with her courage, her sincerity, and her flaming self respect. And it''s these things I''d believe in, even if the whole world indulged in wild suspicions that she wasn''t all she should be. I love her and it is the beginning of everything.', 0, 0, 'f-scott-fitzgerald'),
       ('Give, even if you only have a little.', 0, 0, 'buddha'),
       ('Whenever I hear anyone arguing for slavery, I feel a strong impulse to see it tried on him personally.', 0, 0, 'abraham-lincoln'),
       ('Give credit where credit is due: simply said, if you want loyalty and best effort, you must be thoughtful.', 0, 0, 'estée-lauder'),
       ('Opportunity is missed by most people because it is dressed in overalls and looks like work.', 0, 0, 'thomas-edison'),
       ('Happiness lies in the joy of achievement and the thrill of creative effort.', 122000, 0.047, 'franklin-d-roosevelt'),
       ('When angry, count ten, before you speak; if very angry, a hundred.', 0, 0, 'thomas-jefferson'),
       ('Giving is the secret of a healthy life. Not necessarily money, but whatever a person has of encouragement, sympathy and understanding.', 0, 0, 'john-d-rockefeller'),
       ('Fashion changes, but style endures.', 0, 0, 'coco-chanel'),
       ('Discipline is the bridge between goals and accomplishment.', 0, 0, 'mother-teresa'),
       ('Everyone has oceans to fly, if they have the heart to do it. Is it reckless? Maybe. But what do dreams know of boundaries?', 0, 0, 'amelia-earhart'),
       ('But like other well-behaved women they chose to obey God rather than men.', 0, 0, 'laurel-thatcher-ulrich'),
       ('It is better to light a candle than curse the darkness.', 0, 0, 'eleanor-roosevelt'),
       ('Be thankful for what you have; you’ll end up having more. If you concentrate on what you don’t have, you will never, ever have enough.', 0, 0, 'oprah-winfrey'),
       ('Being the richest man in the cemetery doesn’t matter to me. Going to bed at night saying we’ve done something wonderful… that’s what matters to me.', 0, 0, 'steve-jobs'),
       ('Peace is more precious than diamonds or silver or gold.', 0, 0, 'martin-luther-king-jr'),
       ('You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose.', 0, 0, 'dr-seuss'),
       ('It took me a long time to figure out how to act, and how to conduct myself in the business so I could get what I felt I needed to support my potential and give them what they wanted.', 0, 0, 'harrison-ford'),
       ('Out of your vulnerabilities will come your strength.', 0, 0, 'sigmund-freud'),
       ('There is still a lot to learn and there is always great stuff out there. Even mistakes can be wonderful.', 0, 0, 'robin-williams'),
       ('I have been one acquainted with the night. I have walked out in rain - and back in rain. I have outwalked the furthest city light....', 172000, 0.091, 'robert-frost'),
       ('When one door is closed, don''t you know that many more are open.', 0, 0, 'bob-marley'),
       ('We should all start to live before we get old. Fear is stupid. So are regrets.', 0, 0, 'marilyn-monroe'),
       ('I think it is possible for ordinary people to choose to be extraordinary.', 0, 0, 'elon-musk'),
       ('Associate yourself with men of good quality, if you esteem your own reputation; for ‘tis better to be alone than in bad company.', 0, 0, 'george-washington'),
       ('You can always tell what kind of a person a man really thinks you are by the earrings he gives you.', 0, 0, 'audrey-hepburn'),
       ('Life is pretty simple: You do some stuff. Most fails. Some works. You do more of what works.', 0, 0, 'leonardo-da-vinci'),
       ('Simple it’s not, I am afraid you will find, for a mind-maker-upper to make up his mind.', 0, 0, 'dr-seuss'),
       ('You''re only human. You don''t have to have it together every minute of the day.', 0, 0, 'anne-hathaway'),
       ('Turn your wounds into wisdom.', 0, 0, 'oprah-winfrey'),
       ('What is that you express in your eyes? It seems to me more than all the print I have read in my life.', 0, 0, 'walt-whitman'),
       ('Doing the best at this moment puts you in the best place for the next moment.', 0, 0, 'oprah-winfrey'),
       ('There is no boy, at this age, cute enough or interesting enough to stop you from getting an education, If I had worried about who liked me and who thought I was cute when I was your age, I wouldn’t be married to the President of the United States.', 0, 0, 'michelle-obama'),
       ('Age makes you more confident. When you realize that it’s time now to just do things. When there’s not the pressure to perform on some level of expectations, there’s more to just explore.', 0, 0, 'robin-williams'),
       ('Quality means doing it right when no one is looking.', 0, 0, 'henry-ford'),
       ('Love is a promise, love is a souvenir, once given never forgotten, never let it disappear.', 0, 0, 'john-lennon'),
       ('I have heard there are troubles of more than one kind. Some come from ahead and some come from behind. But I’ve bought a big bat. I’m all ready you see. Now my troubles are going to have troubles with me.', 0, 0, 'dr-seuss'),
       ('One arrow alone can be easily broken but many arrows are indestructible.', 0, 0, 'genghis-khan'),
       ('Our greatest weakness lies in giving up. The most certain way to succeed is always to try just one more time.', 0, 0, 'thomas-edison'),
       ('Nothing is troublesome that we do willingly.', 0, 0, 'thomas-jefferson'),
       ('When you undervalue what you do, the world will undervalue who you are.', 0, 0, 'oprah-winfrey'),
       ('It''s OK to have your eggs in one basket as long as you control what happens to that basket.', 0, 0, 'elon-musk'),
       ('Whoever is happy will make others happy too.', 167000, 0.020, 'anne-frank'),
       ('Just when you think it can''t get any worse, it can. And just when you think it can''t get any better, it can.', 0, 0, 'nicholas-sparks'),
       ('There are three classes of people: those who see, those who see when they are shown, those who do not see.', 0, 0, 'leonardo-da-vinci'),
       ('Have enough courage to trust love one more time and always one more time.', 0, 0, 'maya-angelou'),
       ('Resist much, obey little.', 0, 0, 'walt-whitman'),
       ('Decide… whether or not the goal is worth the risks involved. If it is, stop worrying.', 0, 0, 'amelia-earhart'),
       ('Whose woods these are I think I know. His house is in the village though; He will not see me stopping here To watch his woods fill up with snow.', NULL, 0.097, 'robert-frost'),
       ('I would rather die of passion than of boredom.', 0, 0, 'vincent-van-gogh'),
       ('Wheresoever you go, go with all your heart.', 0, 0, 'confucius'),
       ('It''s a remarkable exercise to sit and look at your own work over the years.', 0, 0, 'vera-wang'),
       ('Be yourself; everyone else is already taken.', 0, 0, 'oscar-wilde'),
       ('The art of art, the glory of expression and the sunshine of the light of letters, is simplicity.', 0, 0, 'walt-whitman'),
       ('Talk to someone about themselves and they''ll listen for hours.', 0, 0, 'dale-carnegie'),
       ('There is no good in anything until it is finished.', 0, 0, 'genghis-khan'),
       ('Kindness in words creates confidence. Kindness in thinking creates profoundness. Kindness in giving creates love.', 0, 0, 'lao-tzu'),
       ('There''s not a liberal America and a conservative America - there''s the United States of America.', 0, 0, 'barack-obama'),
       ('Everyone wants to ride with you in the limo, but what you want is someone who will take the bus with you when the limo breaks down.', 0, 0, 'oprah-winfrey'),
       ('How wonderful it is that nobody need wait a single moment before starting to improve the world.', 0, 0, 'anne-frank'),
       ('I have decided to stick with love. Hate is too great a burden to bear.', 0, 0, 'martin-luther-king-jr'),
       ('Never get discouraged if you fail. Learn from it. Keep trying.', 0, 0, 'thomas-edison'),
       ('I am large, I contain multitudes.', 0, 0, 'walt-whitman'),
       ('If I had asked people what they wanted, they would have said faster horses.', 0, 0, 'henry-ford'),
       ('99% of failures come from people who make excuses.', 0, 0, 'george-washington'),
       ('Write things down: your mother probably told you this. She’s right.', 0, 0, 'estée-lauder'),
       ('Don''t worry about a thing, every little thing is gonna be alright.', 0, 0, 'bob-marley'),
       ('Happiness, not in another place but this place...not for another hour, but this hour.', 0, 0, 'walt-whitman'),
       ('For it was not into my ear you whispered, but into my heart. It was not my lips you kissed, but my soul.', 0, 0, 'judy-garland'),
       ('Think of all the beauty still left around you and be happy.', 0, 0, 'anne-frank'),
       ('You have to be burning with an idea, or a problem, or a wrong that you want to right. If you’re not passionate enough from the start, you’ll never stick it out.', 0, 0, 'steve-jobs'),
       ('Ardently do today what must be done. Who knows? Tomorrow, death comes.', 0, 0, 'buddha'),
       ('Everyone you meet is fighting a battle you know nothing about. Be kind. Always.', 0, 0, 'robin-williams'),
       ('To live is the rarest thing in the world. Most people exist, that is all.', 0, 0, 'oscar-wilde'),
       ('And I like large parties. They’re so intimate. At small parties there isn’t any privacy.', 0, 0, 'f-scott-fitzgerald'),
       ('The best way to predict your future is to create it.', 0, 0, 'abraham-lincoln'),
       ('Mistakes are always forgivable, if one has the courage to admit them.', 0, 0, 'bruce-lee'),
       ('When one door closes another door opens.', 0, 0, 'alexander-graham-bell'),
       ('Do what you feel in your heart to be right – for you’ll be criticized anyway.', 0, 0, 'eleanor-roosevelt'),
       ('Imperfection is beauty, madness is genius and it''s better to be absolutely ridiculous than absolutely boring.', 0, 0, 'marilyn-monroe'),
       ('I''ve been lucky. Opportunities don''t often come along. So, when they do, you have to grab them.', 0, 0, 'audrey-hepburn'),
       ('No opinion is worth burning your neighbor for.', 0, 0, 'voltaire'),
       ('The great gift of human beings is that we have the power of empathy, we can all sense a mysterious connection to each other.', 0, 0, 'meryl-streep'),
       ('Learning is the only thing the mind never exhausts, never fears, and never regrets.', 0, 0, 'leonardo-da-vinci'),
       ('We need to do a better job of putting ourselves higher on our own ''to do'' list.', 0, 0, 'michelle-obama'),
       ('Public self is a conditioned construct of the inner psychological self.', 0, 0, 'sigmund-freud'),
       ('No matter what anybody tells you, words and ideas can change the world.', 0, 0, 'robin-williams'),
       ('These are the days that must happen to you.', 0, 0, 'walt-whitman'),
       ('Today was good. Today was fun. Tomorrow is another one.', 0, 0, 'dr-seuss'),
       ('If we really want to love, we must learn how to forgive.', 0, 0, 'mother-teresa'),
       ('When I thought I couldn’t go on, I forced myself to keep going. My success is based on persistence, not luck.', 0, 0, 'estée-lauder'),
       ('Count your age by friends, not years. Count your life by smiles, not tears.', 0, 0, 'john-lennon'),
       ('The important thing is not to stop questioning. Curiosity has its own reason for existence.', 0, 0, 'albert-einstein'),
       ('If a man hasn''t discovered something he will die for, he isn''t fit to live.', 0, 0, 'martin-luther-king-jr'),
       ('I dont think of all the misery, but of the beauty that still remains.', 0, 0, 'anne-frank'),
       ('Love your Enemies, for they tell you your Faults.', 0, 0, 'benjamin-franklin'),
       ('Pride costs us more than hunger, thirst, and cold.', 0, 0, 'thomas-jefferson'),
       ('Courage is found in unlikely places.', 0, 0, 'jrr-tolkien'),
       ('A brand for a company is like a reputation for a person. You earn reputation by trying to do hard things well.', 0, 0, 'jeff-bezos'),
       ('Our greatest natural resource is the minds of our children.', 0, 0, 'walt-disney'),
       ('Men are not prisoners of fate, but only prisoners of their own minds.', 157000, 0.083, 'franklin-d-roosevelt'),
       ('The future belongs to those who believe in the beauty of their dreams.', 0, 0, 'eleanor-roosevelt'),
       ('Parents can only give good advice or put them on the right paths, but the final forming of a persons character lies in their own hands.', 198000, 0, 'anne-frank'),
       ('I don''t care what you think of me. I don''t think of you at all.', 0, 0, 'coco-chanel'),
       ('Always bear in mind that your own resolution to succeed is more important than any one thing.', 0, 0, 'abraham-lincoln'),
       ('Laziness may appear attractive, but work gives satisfaction.', 172000, 0.061, 'anne-frank'),
       ('Just because something doesn''t do what you planned it to do doesn''t mean it''s useless.', 0, 0, 'thomas-edison'),
       ('It has been my observation that most people get ahead during the time that others waste.', 0, 0, 'henry-ford'),
       ('It''s weird not to be weird.', 0, 0, 'john-lennon'),
       ('Never make someone a priority when all you are to them is an option.', 0, 0, 'maya-angelou'),
       ('The only thing we have to fear is fear itself.', 0, 0, 'franklin-d-roosevelt'),
       ('We all live with the objective of being happy; our lives are all different and yet the same.', 0, 0, 'anne-frank');


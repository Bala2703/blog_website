-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 15, 2021 at 10:07 AM
-- Server version: 8.0.26-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `createBlog`
--

CREATE TABLE `createBlog` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `img_name` varchar(50) NOT NULL,
  `img_path` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `createBlog`
--

INSERT INTO `createBlog` (`id`, `title`, `description`, `content`, `img_name`, `img_path`) VALUES
(1, 'Artificial Intelligence and Applications in Civil and Construction Industry', 'Artificial intelligence is an aspect in which intelligence is demonstrated with the help of machines', ' Artificial intelligence is an aspect in which intelligence is demonstrated with the help of machines, i.e. With the help of artificial components other than humans and animals. Any device that makes use of the environment and plays a vital role in resulting in a maximum achievement in its goal is termed, intelligent agents. These agents work the same as a human brain and solve the problem in a very smart and effective manner. The main goal of AI was to offer solutions to the problems we face. \r\n\r\nAI is the branch of computer science that aims to answer Turing’s question in the affirmative. It is the endeavour to replicate or simulate human intelligence in machines.\r\n\r\nApplication Aspects\r\n\r\nPrevent cost overruns\r\nArtificial Intelligence for better Design of Buildings through Generative Design\r\nRisk Mitigation aspects\r\nArtificial Intelligence for safety in Construction\r\nArtificial Intelligence for offshore construction\r\nPrevent Cost overturns: Nearly all the building during construction goes over the estimated budget. Artificial Neural Networks are used in these projects to predict the increase in cost overruns based on some of the factors such as project size, contract type and the competence level of project managers. This step reduces the time to onboard new resources onto projects. As a result, of which the project is completed with the estimated budget and proves much economical.\r\n2. Artificial Intelligence for better Design of Buildings through Generative Design\r\n\r\nThe 3D model-based process gives a beautiful view of the building construction through various aspects such as architectural aspect, engineering aspect as well through constructional aspect also. For this, the recent usage of BIM is effectively used. it not only takes care of the 3D view but also takes care of mechanical, electrical and plumbing aspects also (MEP).\r\n3. Risk Mitigation Aspects\r\n\r\nRisks are mainly present during the construction process at any stage, which can be either during Quality control, safety aspect, cost of production stage. The risks get reduced when the project is small, large when the project is very large. AI handles these issues very easily and predicts the risks beforehand and gives us space for understanding the risks and solutions to them.\r\n4. Artificial Intelligence for Safety in Construction\r\n\r\nThe safety of the labourers at the construction site must be considered with utmost care. AI warns the workers to wear proper protective equipment at the construction site.\r\n5. Artificial Intelligence for Offshore Construction\r\n\r\nIn recent developments robots are used in the construction fields which helps in the construction of offshore structures with coordination with human workers at the site. The in-depth works like mechanical, electrical, plumbing, HVAC systems work with the help of AI in a very easier and speedy manner, reduces during the risk, handling and transportation of heavy construction materials.', 'ai', 'image/ai.webp'),
(2, 'Things to be followed during COVID-19 Pandemic', 'The World Health Organization proclaimed Covid – 19 (Coronavirus) to be a global pandemic. Although ', ' Improve Your Eating Habits\r\n\r\nThe food you consume has a major impact on your overall health and immunity. Consume low-carbohydrate diets to help regulate elevated blood sugar and blood pressure. A low-carbohydrate diet will help to delay the progression of diabetes, whereas a protein-rich diet will keep you in good health. Often, eat vegetables and fruits high in beta carotene, ascorbic acid, and other essential vitamins on a regular basis.\r\n\r\nMake No Sacrifices When It Comes to Sleep\r\n\r\nSleeping for 7-8 hours is the most effective way to help your body develop immunity; less sleep can leave you exhausted and hinder your mental activity. Sleep deprivation prevents the body from sleeping, impairing other bodily functions that have a direct effect on your immunity. The flu vaccine’s effectiveness is harmed by a lack of sleep.\r\n\r\nKeep yourself hydrated\r\n\r\nKeep hydrated by drinking 8-10 glasses of water a day. Hydration aids in the removal of toxins from the body and reduces the risk of the flu. To beat the sun, citrus fruit juices and coconut water are also viable options.\r\n\r\nDon’t Forget to Exercise\r\n\r\nA healthy diet should be accompanied by a regular exercise schedule. Remember to exercise on a regular basis; even light exercise will help the body release toxins. Depending on the endurance, 30 to 45 minutes of exercise is recommended. It is a good time to begin exercising if you have not already done so.\r\n\r\nRelax and unwind\r\n\r\nThese are trying times, and remaining indoors for an extended period of time may have negative consequences for your mental health. Another issue that is impacting millions of people around the world is the increasing fear of a pandemic. Although the confusion can be daunting, there are a few steps we can take on a daily basis to help alleviate stress.\r\n\r\nMeditate on a regular basis\r\n\r\nStress activates the hormone cortisol, which impairs your response to your immediate surroundings and makes your body vulnerable to infections, leaving you feeling anxious all of the time. Meditation is a tried and true activity for calming the nerves, and it is the perfect way to alleviate tension. If you need assistance with meditation, there are many channels on YouTube that can help.\r\n\r\nJourneying\r\n\r\nAvoid going on any trips that aren’t absolutely necessary. The majority of Covid 19 positive cases are imported cases that spread to populations later. To prevent the risk of publicity, avoid using public transportation and going to public locations. If you must drive, wear a mask over your nose and mouth and bring an alcohol-based hand sanitizer with you at all times.\r\n\r\nLet us all join hands to be safe and fight against the pandemic.', 'feature-image', 'image/feature-image.jpg'),
(3, 'Internet of Things', 'Managing device remotely using internet. In Simple way is managing the device using internet.', ' IoT Architecture\r\n\r\n            Based on the common usage of IoT we will define the 5 Layer of architecture. But we can’t say this is exact architecture for IoT because of based on the company usage or real word problems we will create the architecture different ways. But this 5 layers mostly implement in all level of architecture.\r\n\r\nLayer 1 – Perception Layer:\r\n\r\n            This layer will act as a physical layer from network because of physical device will use in this layer. Eg: Sensor, RFID, Sensor sense and gather the information about the environment and detect the other object from the environment.\r\n\r\nLayer 2 – Network Layer:\r\n\r\n            In this layer with help of physical device transfer the data between different layers through network. Eg: Wireless, 4G, LAN, and Bluetooth. In network layer security is very import because of we transfer the data from one device to another so we need to control the third person interaction in our data.\r\n\r\nLayer 3 – Middleware Layer:\r\n\r\n            Network layer send the huge amount of data from the device, these data’s we need to store after that only we’ll process or analysis these data. Middleware layer to store the big amount data with use of Personal Database, cloud and Big data processing models stores this information as well as process.\r\n\r\nLayer 4 – Application Layer:\r\n\r\n            Middleware layer analysis the data based on our problems, once analysis process is completed the result will generate from middleware layer that result we deliver to end user. In this layer we create the way of deliver method for user because of some user will use mobile app or web app or both. Based on the responsible this layer delivering application specific services to the users.', 'iot', 'image/iot.webp'),
(4, 'Should Parents Teach Their Kids Religion?', 'For millennia, it has been standard practice for religious parents to pass on their tradition...', ' Nowadays, a significant number of parents consider themselves spiritual but profess no religious affiliation. Many follow secular humanism. Others focus exclusively on the secular education of their children, not wanting them to participate in religious activities or classes, as they see no career value in religion. Some are simply against religion. Marriages are now common between spouses of different faiths, particularly in Western countries. Recently I have heard some parents question if they even have the ethical right to ask their children to accept their religious beliefs and practices, reasoning that each human being should find his or her own spiritual way forward. Then there are the pragmatic rationales: too busy to teach religion at home, not knowing enough about the religion, not attending religious activities on a regular basis, not being proud enough of their faith, and wanting their children to blend in well in an international school setting.\r\n\r\nHindu parents who don’t plan to teach religion in the home need to give serious thought as to how the next generation will learn the basics of good conduct and duties to family and community. Religions have traditionally been the most common source of this knowledge.\r\n\r\nOn the web, you can find statements as to how children, given time, will figure out by themselves all about conduct and duty. However, I know educators who have sufficient personal experiences to strongly disagree. They have shared their dismay that many students in their school regularly cheat to get ahead in class. To them, winning is what matters and the virtue of honesty is of lesser import.\r\n\r\nAre there nonreligious resources for teaching ethical conduct? “Positive Psychology” is a one example. Respected for its comprehensive approach to learning values and duties, it has developed twenty-four character strengths described as “the psychological ingredients for exhibiting human goodness, and they serve as mechanisms for cultivating a life of greater well-being.”\r\n\r\nA Study of How Religions Are Teaching Children\r\n\r\nTo understand how religion is being taught we can turn to the 2019 book Religious Parenting: Transmitting Faith and Values in Contemporary America, authored by Professor Christian Smith and co-authored with Bridget Ritz and Michael Rotolo, who interviewed hundreds of individuals of diverse religious backgrounds, including Hindus and Buddhists.\r\n\r\nThey found that, amid massive variation, parents share an almost similar approach to religious socialisation of their children. For almost all, faith is important for the framework that it offers to become one’s best self on the path of life.\r\n\r\nOn a small scale, some research in Asia among Hindu parents and found that many hold a similar perspective: that faith training develops character and helps their children to more confidently and effectively handle life’s challenges. Parents shared that religion is like a kite string that holds individuals to their earth-bound reality and keeps them from drifting into oblivion. One parent explained that learning about the many challenges Hinduism faced in past centuries teaches children how great Hinduism is; it cannot be destroyed. The ways in which Hinduism can provide benefits to our next generation are significant and should not be dismissed.\r\n\r\n Finding Enduring Happiness\r\n\r\nParents are naturally focused on raising their children to be successful. To many, success is defined almost exclusively as material prosperity, which is best achieved by pursuing a high paying, highly demanding professional career. Of course, this strategy includes marrying an equally educated and socially positioned spouse. This definition of success ignores a crucial component—being happy. “Learn to be happy by seeking happiness, not from others but from the depths of the soul itself.” To achieve this: “Put a smile on other people’s faces. Gain your satisfaction by making other people happy and your good states of mind.” The contentment, comes from giving and not from getting.\r\n\r\nControlling Anger\r\n\r\nThere are few things that ruin the quality of life more than anger. Therefore, learning to minimize expressions of this negative emotion and eventually eliminate them is important. A deep understanding of the law of karma allows us to accept what is happening to us as what should be happening to us and not become angry about it. We accept that it is in our karma to experience what we are undergoing, both positive and negative. Whatever is happening to us is precipitated by our actions in this and past lives.\r\n\r\nReducing Stress\r\n\r\nHindu children face stress in the form of major exams in school, which start as early as age eight in Asian countries. Under such stress, they can’t do their best work or learn effectively. Hatha yoga asana routines have the power to balance the nervous system and reduce anxiety if performed regularly every week. Another method is the regular practice of diaphragmatic breathing. The basic concept is to train yourself and your children, not from the mouth, and to breathe from the diaphragm. That’s the natural progression. That is how children breathe. When we take on life’s stresses, however, the diaphragm tightens and as we breathe we begin to widen the chest. Right below the solar plexus, just below where the ribs break, you can feel the diaphragm. Place your fingertips on the diaphragm and cough in order to find it. If your fingers are on the diaphragm right away, they will jump when you cough. Take just one minute to breathe deeply from the diaphragm anytime you need to relax, such as before (and during!) a big meeting or test.\r\n\r\nThese three examples clearly show that the beliefs and practices of Hinduism are designed to help an individual live a happier, more creative and more successful life.', 'kids', 'image/kids.jpg'),
(5, 'TREMENDOUS WARBLERS', '“A chance to fly in the unending sky is the wonderful joy”', ' One of the greatest gift of nature is the beautiful tiny flitters who wanders in the sky with motto and mission. Even an ambitious missile will lose its destination, but these little warblers are fully focused. These amazing birds have a specialized vocal box which helps to produce complex sounds which in turn is heard as beautiful sound. This special vocal box is called as syrinx.\r\n\r\n Life Cycle of Warblers\r\n\r\nEgg, Brood, Hatch, Adult are the various stages of singing birds .At very first stage it is formed inside the single celled egg. These eggs differ in colour but contain common yellow yoke with white fluid. Few birds have black or grey matter outside which depends upon its breed and nature. Inside the egg its body develops with strong beak and weak bones. Beaks play an important role in warbler’s life.\r\n\r\nHatching\r\n\r\nHatching is the second stage where the young ones come out of the shell but unable to fly. It has soft feathers and the parent bird helps in feeding. At this stage the young ones are trained and protected by its parents. The little ones are under the surveillance of protected parents.\r\n\r\nNestling\r\n\r\nAt this stage the bird gets enough courage to take its first flight. But it flies to certain height and after getting complete training it takes its first strong flight called fledgeling.\r\n\r\nFledgeing\r\n\r\nAt this stage a strong muscles and wing bones are developed, and it flies to certain height but in and around its nest. Parents have supervision over the young ones.\r\n\r\nJuvenile\r\n\r\nAt this stage the birds looks like an adult but it is not an adult .It will not have reproducing capacity and  it experiences new flight ,new sound and learn to find food itself. The plumage is very soft and it gets supplanted after regular periods of shedding.\r\n\r\n Adult bird\r\n\r\nAt this stage bird grown to be an adult and ready to mate and knows to built nest. These charming little ones learn to make sound when it was in Juvenile stage. Each species from humming bird to flamingoes are blessed to give a special tone which is the communication channel in the community.\r\n\r\nSound natures\r\n\r\n For every bird it has its unique quality and style but it resembles to its family.  Nightingales sing both day and night its night song reflects courtship and dawn songs are territorial in nature. These beautiful singing effects are specialized to the male bird because it is very important in courtship. Males often sing to show its dominance over other male birds to win and attract its female. Apart from matting some warblers sing during its flight, during its prey hunting etc…\r\n\r\nHealth matters\r\n\r\nIt is strongly believed that bird with loud sound and song have long life and quality and it is believed that it have stronger than others in their community. Along with Singing it also makes mimicry to attract its match. Mostly the male makes mimicry of other regions to make more entertain. It is one of the important factors in Reproduction.\r\n\r\nLife span\r\n\r\nThese little musicians life spans very less .It is less than two years ,Because these tiny creators faces many challenges like predators, disease, accidents, migration ,starvation, habitat losses and hunting. Few warblers like black and white have long 11 years of life expectancy. But in reality these little creatures faces many challenges.\r\n\r\n“A world without bird is like heart without dreams”', 'bird', 'image/bird.webp'),
(6, 'Building Interactive Plots in Python', 'One of the most common forms of data found throughout the analysis is time series.', ' In Python we frequently start by drawing a basic line curve using Matplotlib or Seaborn, which is great when you work with only one variable that changes over time. But you frequently require a list of inventories of market data or territories for sales reports, to present many categorical variables collectively.\r\n\r\nBut you frequently require a list of inventories of market data or territories for sales reports, to present many categorical variables collectively.\r\n\r\nIf so, you may either present your whole series in the same plot or build a different plot for each season. But these alternatives are difficult to understand and occupy a lot of room.\r\n\r\nThis allows sophisticated visualisation libraries such as Plotly, Bokeh, and Altair to build dynamic images and dashboards utilising elements like drop-downs, sliders, buttons and others to let your users explore complicated data.\r\n\r\nIn this post, we investigate the following interactive features for display of time series:\r\n\r\nDrop down menus allow you to switch between series in the same plot\r\nDate range sliders that allow you to see patterns between eras\r\nAll scripts used in the instances below are available here.\r\n\r\nLine-plots with Drop-down menus\r\nIf there are several data categories, like inventories or nations, and you want to examine the trends using a line plot in the same plot or figure, a dropdown menu is quite convenient. This prevents you from producing several plots in a loop.\r\n\r\nAll three libraries, that is to say. Plotly, Bokeh and Altair can add a dropdown menu to the plots, but each one has its own advantages and disadvantages.\r\n\r\nAs a bonus, I will also show you a technique of doing this using Matplotlib or Seaborn that does not allow interactive components.\r\n\r\nDate Range slider\r\nA date range slider or a slider in general is another interactive component that comes extremely helpful while working with timer graphs.\r\n\r\nGiven that most time series plots include a date range in the X-axis, a slider enables you to modify the time period dynamically and just examine a segment of the plot to understand the patterns in that era.\r\n\r\nPlotly\r\nDrop-down menus\r\nPlotly includes a number of interactive options known as Custom Controls. The nice thing about these controls is that they can only be pythonically added to the plots.\r\n\r\nSource: Plotly documentation (https://plotly.com/python/#controls)\r\nSource: Plotly documentation (https://plotly.com/python/#controls)\r\nWe will utilise SuperStore datasets for this lesson, which can be found here.\r\n\r\nLet us create a plot to visualize the sales pattern across the United States and add a dropdown to change the category to analyze the sales in that category.\r\n\r\nimport numpy as np\r\n\r\nimport pandas as pd\r\n\r\nimport matplotlib.pyplot as plt\r\n\r\nimport seaborn as sns\r\n\r\npd.set_option(“display.max_columns”,None)\r\n\r\npd.set_option(“display.max_rows”,None)\r\n\r\nimport warnings\r\n\r\nwarnings.filterwarnings(“ignore”)\r\n\r\nfrom IPython.display import Image\r\n\r\nsns.set(style=”darkgrid”, palette=”pastel”, color_codes=True)\r\n\r\nsns.set_context(“paper”)\r\n\r\nfrom datetime import datetime\r\n\r\n#Plotly imports\r\n\r\nimport plotly.graph_objects as go\r\n\r\nimport plotly.express as px\r\n\r\nimport plotly.io as pio\r\n\r\npio.templates.default = “seaborn”\r\n\r\nfrom plotly.subplots import make_subplots\r\n\r\ndf = pd.read_csv(“/content/sample_data/Sample-Superstore.csv”,encoding= ‘unicode_escape’)\r\n\r\ndf.head()\r\n\r\n\r\n\r\ndf[‘month’] = pd.DatetimeIndex(df[‘Order Date’]).month\r\n\r\ndf[‘year’] = pd.DatetimeIndex(df[‘Order Date’]).year\r\n\r\ndf.head()\r\n\r\n\r\n\r\nbuttons = []\r\n\r\ni = 0\r\n\r\nfig3 = go.Figure()\r\n\r\ncategory_list = list(df[‘Category’].unique())\r\n\r\n \r\n\r\nfor category in category_list:\r\n\r\nfig3.add_trace(\r\n\r\ngo.Scatter(\r\n\r\nx = df[‘year’][df[‘Category’]==category],\r\n\r\ny = df[‘Sales’][df[‘Category’]==category],\r\n\r\nname = category, visible = (i==0)\r\n\r\n)\r\n\r\n)\r\n\r\nfor category in category_list:\r\n\r\nargs = [False] * len(category_list)\r\n\r\nargs[i] = True\r\n\r\n#create a button object for the country we are on\r\n\r\nbutton = dict(label = category,\r\n\r\nmethod = “update”,\r\n\r\nargs=[{“visible”: args}])\r\n\r\n#add the button to our list of buttons\r\n\r\nbuttons.append(button)\r\n\r\n#i is an iterable used to tell our “args” list which value to set to True\r\n\r\ni+=1\r\n\r\nfig3.update_layout(updatemenus=[dict(active=0,\r\n\r\ntype=”dropdown”,\r\n\r\nbuttons=buttons,\r\n\r\nx = 0,\r\n\r\ny = 1.1,\r\n\r\nxanchor = ‘left’,\r\n\r\nyanchor = ‘bottom’),\r\n\r\n])\r\n\r\nAfter execution of the above coding, a beautiful drop down will be added to the time-series plot.\r\n\r\n\r\n\r\nimport datapane as dp\r\n\r\nreport = dp.Report(\r\n\r\ndp.Text(”’## Dropdown using Plotly”’),\r\n\r\ndp.Plot(fig3))\r\n\r\nreport.upload(name=”Dropdown with Plotly”, source_file = “plotly_dropdown.ipynb”)\r\n\r\nThe above code is used to generate the report of our plot obtained.\r\n\r\nDate Range slider\r\n Plotly features a general slider which may be used to modify the data on any axis. The general slider cannot be used to construct a date range slider since it does not have a dedicated slider for time series data.\r\n\r\nMore about sliders may be read here.\r\n\r\n To create a slider, we will take the same time series plot created previously with the dropdown menu and add a slider component below the plot. For implementation ,the same COVID-19 dataset has been utilized. After executing all the prerequisites, the below code aims in providing a slider to the output.\r\n\r\nbuttons = []\r\n\r\ni = 0\r\n\r\nfig3 = go.Figure()\r\n\r\ncountry_list = list(df[‘country’].unique())\r\n\r\nfor country in country_list:\r\n\r\nfig3.add_trace(\r\n\r\ngo.Scatter(\r\n\r\nx = df[‘date’][df[‘country’]==country],\r\n\r\ny = df[‘deaths’][df[‘country’]==country],\r\n\r\nname = country, visible = (i==0)\r\n\r\n)\r\n\r\n)\r\n\r\nfor country in country_list:\r\n\r\nargs = [False] * len(country_list)\r\n\r\nargs[i] = True\r\n\r\n#create a button object for the country we are on\r\n\r\nbutton = dict(label = country,\r\n\r\nmethod = “update”,\r\n\r\nargs=[{“visible”: args}])\r\n\r\n#add the button to our list of buttons\r\n\r\nbuttons.append(button)\r\n\r\n#i is an iterable used to tell our “args” list which value to set to True\r\n\r\ni+=1\r\n\r\nfig3.update_layout(updatemenus=[dict(active=0,\r\n\r\ntype=”dropdown”,\r\n\r\nbuttons=buttons,\r\n\r\nx = 0,\r\n\r\ny = 1.1,\r\n\r\nxanchor = ‘left’,\r\n\r\nyanchor = ‘bottom’),\r\n\r\n])\r\n\r\nfig3.update_layout(autosize=False, width=1000, height=800,)\r\n\r\n\r\n\r\nBokeh\r\nThe documentation about various widgets available in Bokeh can be found here.\r\n\r\nSource: Bokeh documentation (https://docs.bokeh.org/en/latest/docs/user_guide/interaction/widgets.html)\r\nSource: Bokeh documentation (https://docs.bokeh.org/en/latest/docs/user_guide/interaction/widgets.html)\r\nBokeh includes components called widgets that may be added to your plots by adding multiple interactive components. The main objective of widgets is to create dashboard components that are hosting on the Bokeh server.\r\n\r\nBear in mind that CustomJS callbacks are needed to construct widgets for standalone HTML files, or even when working with Jupyter notebook. This takes some understanding of JavaScript to get the dropdown to operate properly. If you want to accomplish this purely pythonically, the Bokeh server has to work with the widgets.\r\n\r\nWe will reproduce the identical example using Bokeh dropdowns as above\r\n\r\nimport numpy as np\r\n\r\nimport pandas as pd\r\n\r\nimport matplotlib.pyplot as plt\r\n\r\nimport seaborn as sns\r\n\r\npd.set_option(“display.max_columns”,None)\r\n\r\npd.set_option(“display.max_rows”,None)\r\n\r\nimport warnings\r\n\r\nwarnings.filterwarnings(“ignore”)\r\n\r\nfrom IPython.display import Image\r\n\r\nsns.set(style=”darkgrid”, palette=”pastel”, color_codes=True)\r\n\r\nsns.set_context(“paper”)\r\n\r\nfrom datetime import datetime\r\n\r\n#import datapane as dp\r\n\r\n#Bokeh imports\r\n\r\nfrom bokeh.io import output_file, show, output_notebook, save\r\n\r\nfrom bokeh.models import ColumnDataSource, Select, DateRangeSlider\r\n\r\nfrom bokeh.plotting import figure, show\r\n\r\nfrom bokeh.models import CustomJS\r\n\r\nfrom bokeh.layouts import row,column\r\n\r\noutput_notebook()\r\n\r\ndf = pd.read_csv(“/content/sample_data/covid_19_clean_complete.csv”,encoding= ‘unicode_escape’)\r\n\r\ndf.head()\r\n\r\nOutput\r\nOutput\r\n\r\n\r\ndf.rename(columns={‘Date’: ‘date’,\r\n\r\n‘Province/State’:’state’,\r\n\r\n‘Country/Region’:’country’,\r\n\r\n‘Lat’:’lat’, ‘Long’:’long’,\r\n\r\n‘Confirmed’: ‘confirmed’,\r\n\r\n‘Deaths’:’deaths’,\r\n\r\n‘Recovered’:’recovered’\r\n\r\n}, inplace=True)\r\n\r\n \r\n\r\n# Active Case = confirmed – deaths – recovered\r\n\r\ndf[‘active’] = df[‘confirmed’] – df[‘deaths’] – df[‘recovered’]\r\n\r\ndf[‘date’] = pd.to_datetime(df[‘date’])\r\n\r\ncountry_list = list(df[‘country’].unique())\r\n\r\ncols1=df.loc[:, [‘country’,’date’, ‘deaths’]]\r\n\r\ncols2 = cols1[cols1[‘country’] == ‘Afghanistan’ ]\r\n\r\nOverall = ColumnDataSource(data=cols1)\r\n\r\nCurr=ColumnDataSource(data=cols2)\r\n\r\n#plot and the menu is linked with each other by this callback function\r\n\r\ncallback = CustomJS(args=dict(source=Overall, sc=Curr), code=”””\r\n\r\nvar f = cb_obj.value\r\n\r\nsc.data[‘date’]=[]\r\n\r\nsc.data[‘confirmed’]=[]\r\n\r\nfor(var i = 0; i <= source.get_length(); i++){\r\n\r\nif (source.data[‘country’][i] == f){\r\n\r\nsc.data[‘date’].push(source.data[‘date’][i])\r\n\r\nsc.data[‘confirmed’].push(source.data[‘confirmed’][i])\r\n\r\n}\r\n\r\n}\r\n\r\nsc.change.emit();\r\n\r\n“””)\r\n\r\nmenu = Select(options=country_list,value=’Afghanistan’, title = ‘Country’)  # drop down menu\r\n\r\nbokeh_p=figure(x_axis_label =’date’, y_axis_label = ‘deaths’, y_axis_type=”linear”,x_axis_type=”datetime”) #creating figure object\r\n\r\nbokeh_p.line(x=’date’, y=’deaths’, color=’green’, source=Curr) # plotting the data using glyph circle\r\n\r\nmenu.js_on_change(‘value’, callback) # calling the function on change of selection\r\n\r\nlayout=column(menu, bokeh_p) # creating the layout\r\n\r\nshow(layout)\r\n\r\nThis is how the plot will look like –\r\n\r\nPlot output\r\nPlot output\r\nDate Range Slider\r\nSimilar to the Dropdown widget, Bokeh offers a Date Range Slider to work with time series data particularly. This widget is different from the general widget Range Slider. A CustomJS callback is required to make this widget operate.\r\n\r\nimport numpy as np\r\n\r\nimport pandas as pd\r\n\r\nimport matplotlib.pyplot as plt\r\n\r\nimport seaborn as sns\r\n\r\npd.set_option(“display.max_columns”,None)\r\n\r\npd.set_option(“display.max_rows”,None)\r\n\r\nimport warnings\r\n\r\nwarnings.filterwarnings(“ignore”)\r\n\r\nfrom IPython.display import Image\r\n\r\nsns.set(style=”darkgrid”, palette=”pastel”, color_codes=True)\r\n\r\nsns.set_context(“paper”)\r\n\r\nfrom datetime import datetime\r\n\r\n#import datapane as dp\r\n\r\n \r\n\r\n#Bokeh imports\r\n\r\nfrom bokeh.io import output_file, show, output_notebook, save\r\n\r\nfrom bokeh.models import ColumnDataSource, Select, DateRangeSlider\r\n\r\nfrom bokeh.plotting import figure, show\r\n\r\nfrom bokeh.models import CustomJS\r\n\r\nfrom bokeh.layouts import row,column\r\n\r\noutput_notebook()\r\n\r\ndf[‘date’] = pd.to_datetime(df[‘date’])\r\n\r\ncountry_list = list(df[‘country’].unique())\r\n\r\ncols1=df.loc[:, [‘country’,’date’, ‘deaths’]]\r\n\r\ncols2 = cols1[cols1[‘country’] == ‘Afghanistan’ ]\r\n\r\nOverall = ColumnDataSource(data=cols1)\r\n\r\nCurr=ColumnDataSource(data=cols2)\r\n\r\n#plot and the menu is linked with each other by this callback function\r\n\r\ncallback = CustomJS(args=dict(source=Overall, sc=Curr), code=”””\r\n\r\nvar f = cb_obj.value\r\n\r\nsc.data[‘date’]=[]\r\n\r\nsc.data[‘confirmed’]=[]\r\n\r\nfor(var i = 0; i <= source.get_length(); i++){\r\n\r\nif (source.data[‘country’][i] == f){\r\n\r\nsc.data[‘date’].push(source.data[‘date’][i])\r\n\r\nsc.data[‘confirmed’].push(source.data[‘confirmed’][i])\r\n\r\n}\r\n\r\n}  sc.change.emit();\r\n\r\n“””)\r\n\r\nmenu = Select(options=country_list,value=’Afghanistan’, title = ‘Country’)  # drop down menu\r\n\r\nbokeh_p=figure(x_axis_label =’date’, y_axis_label = ‘deaths’, y_axis_type=”linear”,x_axis_type=”datetime”) #creating figure object\r\n\r\nbokeh_p.line(x=’date’, y=’deaths’, color=’green’, source=Curr) # plotting the data using glyph circle\r\n\r\nmenu.js_on_change(‘value’, callback) # calling the function on change of selection\r\n\r\ndate_range_slider = DateRangeSlider(value=(min(df[‘date’]), max(df[‘date’])),\r\n\r\nstart=min(df[‘date’]), end=max(df[‘date’]))\r\n\r\ndate_range_slider.js_link(“value”, bokeh_p.x_range, “start”, attr_selector=0)\r\n\r\ndate_range_slider.js_link(“value”, bokeh_p.x_range, “end”, attr_selector=1)\r\n\r\nlayout = column(menu, date_range_slider, bokeh_p)\r\n\r\nshow(layout) # displaying the layout\r\n\r\nPlot output\r\nPlot output\r\nAltair\r\nAltair is comparable to Plotly in the production of pure pythonic visuals. Altair includes a variety of interactive components, however organising the components in a user friendly style is somewhat challenging. Here you may read more about Altair’s interactive components.\r\n\r\nWe are now using Altair to construct the same plot and add a drop down menu to the plot.\r\n\r\nimport numpy as np\r\n\r\nimport pandas as pd\r\n\r\nimport matplotlib.pyplot as plt\r\n\r\nimport seaborn as sns\r\n\r\npd.set_option(“display.max_columns”,None)\r\n\r\npd.set_option(“display.max_rows”,None)\r\n\r\nimport warnings\r\n\r\nwarnings.filterwarnings(“ignore”)\r\n\r\nfrom IPython.display import Image\r\n\r\nsns.set(style=”darkgrid”, palette=”pastel”, color_codes=True)\r\n\r\nsns.set_context(“paper”)\r\n\r\nfrom datetime import datetime\r\n\r\n \r\n\r\n#Altair imports\r\n\r\nimport altair as alt\r\n\r\nalt.data_transformers.disable_max_rows()\r\n\r\ndf = pd.read_csv(‘/content/sample_data/covid_19_clean_complete.csv’)\r\n\r\ndf.head()\r\n\r\nOutput\r\nOutput\r\ndf.rename(columns={‘Date’: ‘date’,\r\n\r\n‘Province/State’:’state’,\r\n\r\n‘Country/Region’:’country’,\r\n\r\n‘Lat’:’lat’, ‘Long’:’long’,\r\n\r\n‘Confirmed’: ‘confirmed’,\r\n\r\n‘Deaths’:’deaths’,\r\n\r\n‘Recovered’:’recovered’\r\n\r\n}, inplace=True)\r\n\r\n \r\n\r\n# Active Case = confirmed – deaths – recovered\r\n\r\ndf[‘active’] = df[‘confirmed’] – df[‘deaths’] – df[‘recovered’]\r\n\r\ndf[‘date’] = pd.to_datetime(df[‘date’])\r\n\r\ncountry_list = list(df[‘country’].unique())\r\n\r\ninput_dropdown = alt.binding_select(options=country_list)\r\n\r\nselection = alt.selection_single(fields=[‘country’], bind=input_dropdown, name=’Country’)\r\n\r\n \r\n\r\nalt_plot = alt.Chart(df).mark_line().encode(\r\n\r\nx=’date’,\r\n\r\ny=’deaths’,\r\n\r\ntooltip=’deaths’\r\n\r\n).add_selection(\r\n\r\nselection\r\n\r\n).transform_filter(\r\n\r\nselection\r\n\r\n)\r\n\r\nalt_plot\r\n\r\nPlot output\r\nPlot output\r\nDate Range Slider\r\n You may use the general slider with Altair, similar to Plotly, as a Date Range Slider. Be aware that Vega evaluates the time series data in milliseconds and the date information in the slider is quite difficult to present. It works if you have annual data, but if the data are broken in days and months, it is difficult to do this.\r\n\r\nimport numpy as np\r\n\r\nimport pandas as pd\r\n\r\nimport matplotlib.pyplot as plt\r\n\r\nimport seaborn as sns\r\n\r\npd.set_option(“display.max_columns”,None)\r\n\r\npd.set_option(“display.max_rows”,None)\r\n\r\nimport warnings\r\n\r\nwarnings.filterwarnings(“ignore”)\r\n\r\nfrom IPython.display import Image\r\n\r\nsns.set(style=”darkgrid”, palette=”pastel”, color_codes=True)\r\n\r\nsns.set_context(“paper”)\r\n\r\nfrom datetime import datetime\r\n\r\nimport datapane as dp\r\n\r\n \r\n\r\n#Altair imports\r\n\r\nimport altair as alt\r\n\r\nalt.data_transformers.disable_max_rows()\r\n\r\ndf = pd.read_csv(‘/content/sample_data/covid_19_clean_complete.csv’)\r\n\r\n#Renaming the columns for easy usage\r\n\r\ndf.rename(columns={‘Date’: ‘date’,\r\n\r\n‘Province/State’:’state’,\r\n\r\n‘Country/Region’:’country’,\r\n\r\n‘Lat’:’lat’, ‘Long’:’long’,\r\n\r\n‘Confirmed’: ‘confirmed’,\r\n\r\n‘Deaths’:’deaths’,\r\n\r\n‘Recovered’:’recovered’\r\n\r\n}, inplace=True)\r\n\r\n \r\n\r\n# Active Case = confirmed – deaths – recovered\r\n\r\ndf[‘active’] = df[‘confirmed’] – df[‘deaths’] – df[‘recovered’]\r\n\r\ndf[‘date’] = pd.to_datetime(df[‘date’])\r\n\r\ncountry_list = list(df[‘country’].unique())\r\n\r\ninput_dropdown = alt.binding_select(options=country_list)\r\n\r\nselection = alt.selection_single(fields=[‘country’], bind=input_dropdown, name=’Country’)\r\n\r\ndef timestamp(t):\r\n\r\nreturn pd.to_datetime(t).timestamp() * 1000\r\n\r\nslider = alt.binding_range(\r\n\r\nstep=30 * 24 * 60 * 60 * 1000, # 30 days in milliseconds\r\n\r\nmin=timestamp(min(df[‘date’])),\r\n\r\nmax=timestamp(max(df[‘date’])))\r\n\r\nselect_date = alt.selection_single(\r\n\r\nfields=[‘date’],\r\n\r\nbind=slider,\r\n\r\ninit={‘date’: timestamp(min(df[‘date’]))},\r\n\r\nname=’slider’)\r\n\r\nalt_plot = alt.Chart(df).mark_line().encode(\r\n\r\nx=’date’,\r\n\r\ny=’deaths’,\r\n\r\ntooltip=’deaths’\r\n\r\n).add_selection(\r\n\r\nselection\r\n\r\n).transform_filter(\r\n\r\nselection\r\n\r\n).add_selection(select_date).transform_filter(\r\n\r\n“(year(datum.date) == year(slider.date[0])) && ”\r\n\r\n“(month(datum.date) == month(slider.date[0]))”\r\n\r\n)\r\n\r\nAlt_plot\r\n\r\nThis is how it will look like –\r\n\r\nPlot output\r\nPlot output\r\nOutcomes\r\nWe now work with all three libraries and are in a position to compare them and offer our opinions, which are the finest library of Python to generate interactive infographics.\r\n\r\nPlotly\r\nBenefits –\r\n\r\nEasy to use and operate with Python smoothly.\r\nLayouts may be created to ensure that menus display in the correct locations of the plot.\r\nPlotly plots may be easily seen and embedded.\r\nDrawbacks\r\n\r\nPlotly plots are easy to read and integrate.\r\nNot many interactive components available.\r\nHas a steep slope for interactive components to function.\r\nBokeh\r\nBenefits  –\r\n\r\nAesthetically attractive are plots and interactive widgets made using Bokeh.\r\nSince Bokeh is focused mainly towards generating dashboards, layouts with numerous components may easily be created.\r\nAdd to the plots a variety of interactive widgets.\r\nDrawbacks –\r\n\r\nYou need to know a little of JavaScript to construct CustomJS Callbacks to make widgets function.\r\nLack of sufficient sample code documentation for implementing these JavaScript callbacks.\r\nDifficult to integrate these plots unless if you work with Bokeh Server.\r\nAltair\r\nBenefits –\r\n\r\nAltair provides more interactive component options than Plotly.\r\nEasy to create pure Python interactive components.\r\nRequires less code lines to make interactive components operate.\r\nDrawbacks –\r\n\r\nDesign and aesthetically attractive layouts are challenging via Altair.\r\nIt is not easy to deal with time series data, as Vega does not accept time series data from the booth and certain transformations are necessary to make this work.\r\nConclusion\r\nIn general, Plotly can help construct basic charts with minimal interactive components if you start with interactive plots using Python.\r\n\r\nBut if you want to add a bunch of interactive components to your charts, you should certainly try Altair on it. The finest part is to create several interactive components with Python scripts.\r\n\r\nYou may use Bokeh if you want to create very sophisticated dashboards that are interactive. But remember that to make them function you will need some JavaScript know-how.\r\n\r\nI hope that this lesson and the sample scripts are beneficial for you.', 'python', 'image/python.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `createBlog`
--
ALTER TABLE `createBlog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `createBlog`
--
ALTER TABLE `createBlog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
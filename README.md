### Codeship
[ ![Codeship Status for ravip0711/loyalty](https://codeship.com/projects/302ab600-7ae4-0133-b18d-26f020c91ee1/status?branch=master)](https://codeship.com/projects/119318)

##Background

This is a personal project for my retail business called Flip Flop Shops. A lot of established retail businesses have some sort of a loyalty or rewards system for its frequent shoppers, but unfortunately we do not have one. There are many benefits for having a loyalty program from a business viewpoint (bring in/communicate your best customers more often, offer them more discounts so they buy more, ect.) and there are many companies that provide a loyalty program for businesses like mine that do not have one. However, many of the solutions from these companies did not work for my business completely in an efficient manner.

For example:

- Lots of these companies created loyalty programs around having your customers download an app on their smartphone. Personally I think a lot of people are not going to download another app on their smart phones to be a part of another loyalty program. The solution has to be much more easier.

- Some non-app solutions include using just a phone number for their loyalty program. However, the customer then has to log in to a website at a later time to fill out a profile to actually get the rewards. Too many steps, customers in general I don't think will spend the time to do this. Need to have something quick without much effort to get maximum sign ups.

- Many of these loyalty programs do not integrate into the existing Point of Sale software and hardware. They can in theory and that would be amazing, but the price and time to integrate them into various types of software and hardware for many different businesses would take decades. Need a simple, fast solution that can be an addition to the Point of Sale, without having to integrate it, inturn making it as user friendly as possible.

- It was hard to find any existing solutions that would customize to the benefits I wanted to give to my customers and how I wanted to build my loyalty program. I had two options to consider:

    Making an online punchcard, like buy 4 pairs of flip flops, and your 5th one will be 50% off.

    or

    Making a points based system on how much a customer spent in the store and converting it into points and after a certain amount of points, they get some sort of discount.

Anything else that I saw in existing solutions didn't really matter to me, like giving points for each time a customer checks in to a business or buys from a business.

Since many of the solutions I found were too complicated or labor entensive from a customer and business owner standpoint, I decided to make it myself and have it customized to maximize sign ups and efficiency!

##Install

- Clone the files on to your local machine:

  $ git clone https://github.com/ravip0711/loyalty.git

- Using your terminal, navigate to the application directory and run bundle install to gather the necessary gems:

  $ bundle install

- Run the rake commands to create, migrate, and seed the postgres db:

  $ rake db:seed db:migrate db:seed

- Launch the rails server:
  
  $ rails s

- Open up your browser and navigate to localhost:3000


##Testing

This application is built on Test Driven Development using Rspec and the Capybara gem. As this project grows, I will be including Jasmine testing for javascript.




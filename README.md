# data-driven-business

Data Science Exercise: This project features exploration and analysis of real world data to consult a (fictive!) online retailer for Apple accessories on important future business strategies.

A: On its current endeavour to enter the Brazilian market, should the company collaborate with the software and service company “Magist” as a business partner for handling warehousing, logistics and connection to big marketplaces?

B: Are the currently in place discount strategies beneficial to the companies sales and revenue?

# Case Study A: Exploring the Brazilian market

## Background:

The company is moving to an expansion to the Brazilian market but lacks regional knowledge. As an intermediate step to produce brand awareness, it is considering a 3-year contract with Magist, a Brazilian Software company that offers a centralized order management system to connect small and medium-sized stores with the biggest Brazilian marketplaces. However, it is debated whether:

- Magist is a good partner for selling high-end Apple-compatible accessories.
- Magist can provide fast and reliable delivery.

A snapshot of the Magist database was provided and analyses carefully to give a data-driven recommendation for action.

## Usage

The database snapshot can be retrieved from the dump file. SQL queries were used to explore the Data and answer important business questions. You can find the queries in the respective files.

To provide an easy to understand summary of the data, that tell a compelling story how final conclusions were reached, charts were created with Tableau. You can find the story [here](https://public.tableau.com/app/profile/johannes.ballauff/viz/Magist-Database-Analysis/Magist-Story) or review the presentation in the repo file.

## Results/ Summary

### Overall conclusion

Magist seems to be a growing platform the provides timely and reliable deliveries in line with the local standards as well as satisfied customer base and responsive customer support. However, higher prized tech products are a relatively small section in terms of item quantity and sales volume on the platform, thus Magist might not provide the ideal customer base for high end Apple Accessories. The overall data-driven recommendation would be to proceed with the time-limited cooperation to grow brand awareness and gain local market experience in the initial phase.

### Data exploration

- How many orders are there in the dataset?
  _99441_

- Are orders actually delivered?
  _Yes ~98% of orders are delivered or in shipment_

- Is Magist having user growth?
  _For the month where complete data were available there was a strong avg. growth of orders between 2017 and 2018_

- How many products are there on the products table?
  _32951_

- Which are the categories with the most products?
  _bed/ bath tables > sports > furniture, ..._

- How many of those products were present in actual transactions?
  _all (32951)_

- What’s the price for the most expensive and cheapest products?
  _0.85 - 6729 $_

- What are the highest and lowest payment values?
  _0 - 13,664 $_

### Business questions

- What categories of tech products does Magist have?
  _computers-accessories, electronics, computers, telephony_

- How many products of these tech categories have been sold (within the time window of the database snapshot)? What percentage does that represent from the overall number of products sold?
  _15342/(97308+15342) ~= 13.6%_

- What’s the average price of the products being sold?
  _telephony: 71 $, electronics: 58 $, accessories: 116 $, computers: 1096 $_

- Are expensive tech products popular?

  - _definition of 'expensive' -> price > average item price of products sold by the employer's fictive company (540 $)_
  - _measurement for 'popular' -> proportion of 'expensive' sales from all 'tech' sales on Magist_
    _Answer: No - most tech products sold were cheaper than the average product price of accessories sold in our company_

- How many months of data are included in the Magist database?
  _25 month, but 9/2018 - 10/2018 likely incomplete as only few sales are registered_

- How many sellers are there? How many Tech sellers are there? What percentage of overall sellers are tech sellers?
  _Sellers: 3095, Tech Sellers: 444 (14.3 %)_

- What is the total amount earned by revenue of all sellers? What is the total revenue of all Tech sellers?
  _All sellers: ~ 20,000,000; Tech Sellers: ~2,600,000_

- Can you work out the average monthly revenue all sellers? Can you work out the average monthly revenue of Tech sellers?
  _All sellers: ~ 846,000; Tech sellers: ~ 118,000_

- What’s the average time between the order being placed and the product being delivered?
  _12 days_

- How many orders are delivered on time vs orders delivered with a delay?
  _Definition 'delay' -> 24 h after expected delivery date_
  _10.7 % orders delayed 1 day or more_

- Is there any pattern for delayed orders, e.g. big products being delayed more often?
  _avg. product volume: 16,564 cm^3; avg. product weight: 2276 g_
  _no clear pattern a higher percentage of parcels with products above the avg. weight or size being delayed_
  _tech products had a similar percentage of delayed parcels as other products_

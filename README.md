# Online Retail Store

**Project by: Medha Hira and Parisha Agarwal**

This repository contains the code for an Online Retail Store, which serves as a platform connecting customers, delivery partners, distributors, admins, and an affiliated NGO. The system provides a user-friendly Graphical User Interface (GUI) accessible through login/signup functionality.

## Stakeholders

The Online Retail Store involves the following stakeholders:

- **Customer**: Users who place orders for products.
- **Delivery Partner**: Individuals responsible for accepting delivery requests, collecting items from the specified location, and delivering them to the customer's address.
- **Distributor of Products**: Suppliers who provide the products available on the platform.
- **Admin**: The link between distributors, delivery partners, and customers. Admin manages and coordinates the end-to-end operations of the system.
- **Affiliated NGO**: A non-governmental organization partnered with the retail store. The NGO receives funds through customer donations and a percentage of the company's net profit.

## Functionality

### Delivery Partner

The Delivery Partner has the following functionality:

- Accept delivery requests to collect items and deliver them to the customer's address.
- Mark the completion of a trip once the delivery is made.
- Receive ratings from customers for their service.

### Distributor

The Distributor has the following functionality:

- Add new products to existing categories.
- Create new categories and add items to them.
- Remove products from the available inventory.
- Send delivery requests to the delivery partner to deliver products to customers.

### Customer

The Customer has the following functionality:

- View the product catalog along with prices.
- Add products to the cart.
- Remove products from the cart.
- Provide delivery location and proceed to payment.
- Contact the person delivering the items.
- Clear the cart.
- The cart retains items even if the user logs out and back in. The delete option clears the cart, and the purchase clears it after buying.
- View previous transactions.
- Option to donate to the affiliated NGO.
- Give a rating to the delivery partner based on their service.

### Admin

The Admin has the following functionality:

- Access data related to distributors, delivery partners, customers, and the affiliated NGO.
- Ensure correct procurement and delivery of goods to the consumers.
- Display order history to customers, providing details about previously purchased products.
- Contact distributors to restock items that are out of stock.
- Mobilize collected funds from customer donations and a percentage of the company's net profit to support the affiliated NGO.

### NGO

The Affiliated NGO has the following functionality:

- Sign up to be affiliated with the online retail store.
- View the funds collected through customer donations.
- Withdraw funds as needed.

## Usage

To use the Online Retail Store system:

1. Clone this repository to your local machine.
2. Set up the necessary dependencies and configurations as specified in the installation guide.
3. Run the application and access the GUI through the provided URL.
4. Different stakeholders can log in using their respective credentials and access the appropriate functionality.

## License

This project is licensed under the [MIT License](LICENSE).

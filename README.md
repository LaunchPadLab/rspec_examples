# Testing with RSpec

## Steps to Recreate

```term
$ rails_template new order_manager
$ rails g model Order total:integer taxes:integer shipping:integer subtotal:integer coupon_code:string
$ rails g model Item name:string price:integer quantity:integer order:references
$ rails g model Coupon code:string amount:integer
$ bundle exec rake db:migrate
```

## Model specs

1. Show how factory should build the "minimally valid object" (add validation rules to order model)
2. Show shoulda matchers (https://github.com/thoughtbot/shoulda-matchers)
3. Write a method and test it (discount_amount)
4. Create a service class and test it (CalculateOrderTotals)


2. Create spec for the service class

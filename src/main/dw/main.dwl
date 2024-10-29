%dw 2.0
output application/json

var tableInput={
  "customerId": "Customer_ID",
  "orderId": "Order_ID",
  "amount": "Total_Amount"
}
---
payload mapObject ((value, key) -> 
    (tableInput[key] default ("Key_NA_" ++ key)) : value
)
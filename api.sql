Table Vehicle {
  vehicle_id bigint [pk]
  size varchar
}

Table ParkingSpot {
  spot_id bigint [pk]
  size varchar
  is_available boolean
}

Table ParkingTransaction {
  transaction_id bigint [pk]
  vehicle_id bigint [ref: > Vehicle.vehicle_id]
  spot_id bigint [ref: > ParkingSpot.spot_id]
  entry_time datetime
  exit_time datetime
}

Table Fee {
  fee_id varchar [pk]
  amount double
  parking_transaction_id varchar [ref: > ParkingTransaction.transaction_id]
}

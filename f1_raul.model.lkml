connection: "mysql-formula1"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: f1_raul_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: f1_raul_default_datagroup

explore: circuits {}

explore: constructor_results {
  join: constructors {
    type: left_outer
    sql_on: ${constructor_results.constructor_id} = ${constructors.constructor_id} ;;
    relationship: many_to_one
  }

  join: races {
    type: left_outer
    sql_on: ${constructor_results.race_id} = ${races.raceid} ;;
    relationship: many_to_one
  }

  join: circuits {
    type: left_outer
    sql_on: ${races.circuitid} = ${circuits.circuit_id} ;;
    relationship: many_to_one
  }
}

explore: constructor_standings {
  join: races {
    type: left_outer
    sql_on: ${constructor_standings.race_id} = ${races.raceid} ;;
    relationship: many_to_one
  }

  join: constructors {
    type: left_outer
    sql_on: ${constructor_standings.constructor_id} = ${constructors.constructor_id} ;;
    relationship: many_to_one
  }

  join: circuits {
    type: left_outer
    sql_on: ${races.circuitid} = ${circuits.circuit_id} ;;
    relationship: many_to_one
  }
}

explore: constructors {}

explore: driver_standings {
  join: races {
    type: left_outer
    sql_on: ${driver_standings.race_id} = ${races.raceid} ;;
    relationship: many_to_one
  }

  join: drivers {
    type: left_outer
    sql_on: ${driver_standings.driver_id} = ${drivers.driver_id} ;;
    relationship: many_to_one
  }

  join: circuits {
    type: left_outer
    sql_on: ${races.circuitid} = ${circuits.circuit_id} ;;
    relationship: many_to_one
  }
}

explore: drivers {}

explore: lap_times {
  join: drivers {
    type: left_outer
    sql_on: ${lap_times.driver_id} = ${drivers.driver_id} ;;
    relationship: many_to_one
  }

  join: races {
    type: left_outer
    sql_on: ${lap_times.race_id} = ${races.raceid} ;;
    relationship: many_to_one
  }

  join: circuits {
    type: left_outer
    sql_on: ${races.circuitid} = ${circuits.circuit_id} ;;
    relationship: many_to_one
  }
}

explore: pit_stops {
  join: drivers {
    type: left_outer
    sql_on: ${pit_stops.driver_id} = ${drivers.driver_id} ;;
    relationship: many_to_one
  }

  join: races {
    type: left_outer
    sql_on: ${pit_stops.race_id} = ${races.raceid} ;;
    relationship: many_to_one
  }

  join: circuits {
    type: left_outer
    sql_on: ${races.circuitid} = ${circuits.circuit_id} ;;
    relationship: many_to_one
  }
}

explore: qualifying {
  join: constructors {
    type: left_outer
    sql_on: ${qualifying.constructorid} = ${constructors.constructor_id} ;;
    relationship: many_to_one
  }

  join: drivers {
    type: left_outer
    sql_on: ${qualifying.driverid} = ${drivers.driver_id} ;;
    relationship: many_to_one
  }

  join: races {
    type: left_outer
    sql_on: ${qualifying.raceid} = ${races.raceid} ;;
    relationship: many_to_one
  }

  join: circuits {
    type: left_outer
    sql_on: ${races.circuitid} = ${circuits.circuit_id} ;;
    relationship: many_to_one
  }
}

explore: races {
  join: circuits {
    type: left_outer
    sql_on: ${races.circuitid} = ${circuits.circuit_id} ;;
    relationship: many_to_one
  }
}

explore: results {
  join: status {
    type: left_outer
    sql_on: ${results.status_id} = ${status.status_id} ;;
    relationship: many_to_one
  }

  join: races {
    type: left_outer
    sql_on: ${results.race_id} = ${races.raceid} ;;
    relationship: many_to_one
  }

  join: drivers {
    type: left_outer
    sql_on: ${results.driver_id} = ${drivers.driver_id} ;;
    relationship: many_to_one
  }

  join: constructors {
    type: left_outer
    sql_on: ${results.constructor_id} = ${constructors.constructor_id} ;;
    relationship: many_to_one
  }

  join: circuits {
    type: left_outer
    sql_on: ${races.circuitid} = ${circuits.circuit_id} ;;
    relationship: many_to_one
  }
}

explore: seasons {}

explore: status {}

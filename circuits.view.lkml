view: circuits {
  sql_table_name: formula1.circuits ;;

  dimension: circuit_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.circuitId ;;
  }

  dimension: alt {
    type: number
    sql: ${TABLE}.alt ;;
  }

  dimension: circuit_ref {
    type: string
    sql: ${TABLE}.circuitRef ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: lng {
    type: number
    sql: ${TABLE}.lng ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: [circuit_id, name, races.count]
  }
}

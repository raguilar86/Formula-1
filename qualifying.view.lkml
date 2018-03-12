view: qualifying {
  sql_table_name: formula1.qualifying ;;

  dimension: constructorid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.constructorid ;;
  }

  dimension: driverid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.driverid ;;
  }

  dimension: number {
    type: number
    sql: ${TABLE}.number ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  dimension: q1 {
    type: string
    sql: ${TABLE}.q1 ;;
  }

  dimension: q2 {
    type: string
    sql: ${TABLE}.q2 ;;
  }

  dimension: q3 {
    type: string
    sql: ${TABLE}.q3 ;;
  }

  dimension: qualifyid {
    type: number
    value_format_name: id
    sql: ${TABLE}.qualifyid ;;
  }

  dimension: raceid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.raceid ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      constructors.name,
      constructors.constructor_id,
      drivers.driver_id,
      drivers.forename,
      drivers.surname,
      races.name,
      races.raceid
    ]
  }
}

view: races {
  sql_table_name: formula1.races ;;

  dimension: raceid {
    primary_key: yes
    type: number
    sql: ${TABLE}.raceid ;;
  }

  dimension: circuitid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.circuitid ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.date ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: round {
    type: number
    sql: ${TABLE}.round ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.time ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      raceid,
      name,
      circuits.circuit_id,
      circuits.name,
      constructor_results.count,
      constructor_standings.count,
      driver_standings.count,
      lap_times.count,
      pit_stops.count,
      qualifying.count,
      results.count
    ]
  }
}

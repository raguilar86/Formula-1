view: results {
  sql_table_name: formula1.results ;;

  dimension: result_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.resultId ;;
  }

  dimension: constructor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.constructorId ;;
  }

  dimension: driver_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.driverId ;;
  }

  dimension: fastest_lap {
    type: number
    sql: ${TABLE}.fastestLap ;;
  }

  dimension: fastest_lap_speed {
    type: string
    sql: ${TABLE}.fastestLapSpeed ;;
  }

  dimension: fastest_lap_time {
    type: string
    sql: ${TABLE}.fastestLapTime ;;
  }

  dimension: grid {
    type: number
    value_format_name: id
    sql: ${TABLE}.grid ;;
  }

  dimension: laps {
    type: number
    sql: ${TABLE}.laps ;;
  }

  dimension: milliseconds {
    type: number
    sql: ${TABLE}.milliseconds ;;
  }

  dimension: number {
    type: number
    sql: ${TABLE}.number ;;
  }

  dimension: points {
    type: number
    sql: ${TABLE}.points ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  dimension: position_order {
    type: number
    sql: ${TABLE}.positionOrder ;;
  }

  dimension: position_text {
    type: string
    sql: ${TABLE}.positionText ;;
  }

  dimension: race_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.raceId ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: status_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.statusId ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.time ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      result_id,
      status.status_id,
      races.name,
      races.raceid,
      drivers.driver_id,
      drivers.forename,
      drivers.surname,
      constructors.name,
      constructors.constructor_id
    ]
  }
}

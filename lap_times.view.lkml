view: lap_times {
  sql_table_name: formula1.lapTimes ;;

  dimension: driver_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.driverID ;;
  }

  dimension: lap {
    type: number
    sql: ${TABLE}.lap ;;
  }

  dimension: milliseconds {
    type: number
    sql: ${TABLE}.milliseconds ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  dimension: race_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.raceID ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.time ;;
  }

  measure: count {
    type: count
    drill_fields: [drivers.driver_id, drivers.forename, drivers.surname, races.name, races.raceid]
  }
}

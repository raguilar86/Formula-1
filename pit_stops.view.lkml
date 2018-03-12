view: pit_stops {
  sql_table_name: formula1.pitStops ;;

  dimension: driver_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.driverId ;;
  }

  dimension: duration {
    type: string
    sql: ${TABLE}.duration ;;
  }

  dimension: lap {
    type: number
    sql: ${TABLE}.lap ;;
  }

  dimension: milliseconds {
    type: number
    sql: ${TABLE}.milliseconds ;;
  }

  dimension: race_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.raceId ;;
  }

  dimension: stop {
    type: number
    sql: ${TABLE}.stop ;;
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

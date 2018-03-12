view: drivers {
  sql_table_name: formula1.drivers ;;

  dimension: driver_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.driverId ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: dob {
    type: string
    sql: ${TABLE}.dob ;;
  }

  dimension: driver_ref {
    type: string
    sql: ${TABLE}.driverRef ;;
  }

  dimension: forename {
    type: string
    sql: ${TABLE}.forename ;;
  }

  dimension: nationality {
    type: string
    sql: ${TABLE}.nationality ;;
  }

  dimension: number {
    type: number
    sql: ${TABLE}.number ;;
  }

  dimension: surname {
    type: string
    sql: ${TABLE}.surname ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      driver_id,
      forename,
      surname,
      driver_standings.count,
      lap_times.count,
      pit_stops.count,
      qualifying.count,
      results.count
    ]
  }
}

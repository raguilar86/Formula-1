view: driver_standings {
  sql_table_name: formula1.driverStandings ;;

  dimension: driver_standings_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.driverStandingsId ;;
  }

  dimension: driver_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.driverId ;;
  }

  dimension: points {
    type: number
    sql: ${TABLE}.points ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
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

  dimension: wins {
    type: number
    sql: ${TABLE}.wins ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      driver_standings_id,
      races.name,
      races.raceid,
      drivers.driver_id,
      drivers.forename,
      drivers.surname
    ]
  }
}

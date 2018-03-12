view: constructor_standings {
  sql_table_name: formula1.constructorStandings ;;

  dimension: constructor_standings_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.constructorStandingsId ;;
  }

  dimension: constructor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.constructorId ;;
  }

  dimension: field8 {
    type: string
    sql: ${TABLE}.FIELD8 ;;
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
    drill_fields: [constructor_standings_id, races.name, races.raceid, constructors.name, constructors.constructor_id]
  }
}

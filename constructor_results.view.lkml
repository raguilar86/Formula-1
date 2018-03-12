view: constructor_results {
  sql_table_name: formula1.constructorResults ;;

  dimension: constructor_results_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.constructorResultsId ;;
  }

  dimension: constructor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.constructorId ;;
  }

  dimension: points {
    type: number
    sql: ${TABLE}.points ;;
  }

  dimension: race_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.raceId ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: [constructor_results_id, constructors.name, constructors.constructor_id, races.name, races.raceid]
  }
}

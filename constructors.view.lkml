view: constructors {
  sql_table_name: formula1.constructors ;;

  dimension: constructor_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.constructorId ;;
  }

  dimension: constructor_ref {
    type: string
    sql: ${TABLE}.constructorRef ;;
  }

  dimension: field6 {
    type: string
    sql: ${TABLE}.FIELD6 ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: nationality {
    type: string
    sql: ${TABLE}.nationality ;;
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
      constructor_id,
      name,
      constructor_results.count,
      constructor_standings.count,
      qualifying.count,
      results.count
    ]
  }
}

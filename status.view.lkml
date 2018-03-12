view: status {
  sql_table_name: formula1.status ;;

  dimension: status_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.statusID ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: [status_id, results.count]
  }
}

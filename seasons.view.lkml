view: seasons {
  sql_table_name: formula1.seasons ;;

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

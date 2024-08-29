connection: "@{CONNECTION_NAME}"

include: "/lookml_dashboards/*"
include: "/explores/*.explore"


datagroup: daily {
  sql_trigger: SELECT current_date ;;
  max_cache_age: "24 hours"
}
named_value_format: large_number { value_format: "[>=1000000]0.00,,\"M\";[>=1000]0.00,\"K\";0"}
named_value_format: large_usd { value_format: "[>=1000000]$0.00,,\"M\";[>=1000]$0.00,\"K\";$0.00" }

connection: "billing"
label: "Google Cloud Billing"

include: "/views/*.view.lkml"
include: "/dashboards/*"

datagroup:billing_datagroup {
  sql_trigger: select max(export_time) from`64020156808.billing.gcp_billing_export_v1_0100A3_749310_A12E96_public`;;
  description: "Triggers a rebuild when new data is exported"
}

datagroup:pricing_datagroup {
  sql_trigger: select max(export_time) from `64020156808.billing.cloud_pricing_export`;;
  description: "Triggers a rebuild when new data is exported"
}

explore: gcp_billing_export_v1_0100A3_749310_A12E96 {
  label: "Billing"
  join: gcp_billing_export_v1_0100A3_749310_A12E96__labels {
    sql:LEFT JOIN UNNEST(${gcp_billing_export_v1_0100A3_749310_A12E96.labels}) as gcp_billing_export_v1_0100A3_749310_A12E96__labels ;;
    relationship: one_to_many
  }

  join: gcp_billing_export_v1_0100A3_749310_A12E96__system_labels {
    sql:LEFT JOIN UNNEST(${gcp_billing_export_v1_0100A3_749310_A12E96.system_labels}) as gcp_billing_export_v1_0100A3_749310_A12E96__system_labels ;;
    relationship: one_to_many
  }

  join: gcp_billing_export_v1_0100A3_749310_A12E96__project__labels {
    sql:LEFT JOIN UNNEST(${gcp_billing_export_v1_0100A3_749310_A12E96.project__labels}) as gcp_billing_export_v1_0100A3_749310_A12E96__project__labels ;;
    relationship: one_to_many
  }

  join: gcp_billing_export_v1_0100A3_749310_A12E96__credits {
    sql:LEFT JOIN UNNEST(${gcp_billing_export_v1_0100A3_749310_A12E96.credits}) as gcp_billing_export_v1_0100A3_749310_A12E96__credits ;;
    relationship: one_to_many
  }

  join: pricing {
    relationship: one_to_one
    sql_on: ${pricing.sku__id} = ${gcp_billing_export_v1_0100A3_749310_A12E96.sku__id} ;;
  }
}

explore: cloud_pricing_export {
  label: "Pricing Taxonomy"
  hidden: yes
  # right now only supporting BigQuery, Compute Engine and Cloud Storage for product specific analysis
  sql_always_where: ${service__description} IN (
        'Compute Engine',
        'Cloud Storage',
        'BigQuery',
        'BigQuery Reservation API',
        'BigQuery Storage API') ;;

  join: cloud_pricing_export__product_taxonomy {
    view_label: "Cloud Pricing Export: Product Taxonomy"
    sql: ,UNNEST(${cloud_pricing_export.product_taxonomy}) as cloud_pricing_export__product_taxonomy ;;
    relationship: one_to_many
  }

  join: cloud_pricing_export__geo_taxonomy__regions {
    view_label: "Cloud Pricing Export: Geo Taxonomy Regions"
    sql: ,UNNEST(${cloud_pricing_export.geo_taxonomy__regions}) as cloud_pricing_export__geo_taxonomy__regions ;;
    relationship: one_to_many
  }

  join: cloud_pricing_export__list_price__tiered_rates {
    view_label: "Cloud Pricing Export: List Price Tiered Rates"
    sql: ,UNNEST(${cloud_pricing_export.list_price__tiered_rates}) as cloud_pricing_export__list_price__tiered_rates ;;
    relationship: one_to_many
  }

  join: cloud_pricing_export__sku__destination_migration_mappings {
    view_label: "Cloud Pricing Export: Sku Destination Migration Mappings"
    sql: ,UNNEST(${cloud_pricing_export.sku__destination_migration_mappings}) as cloud_pricing_export__sku__destination_migration_mappings ;;
    relationship: one_to_many
  }

  join: cloud_pricing_export__billing_account_price__tiered_rates {
    view_label: "Cloud Pricing Export: Billing Account Price Tiered Rates"
    sql: ,UNNEST(${cloud_pricing_export.billing_account_price__tiered_rates}) as cloud_pricing_export__billing_account_price__tiered_rates ;;
    relationship: one_to_many
  }
}

explore: recommendations_export {
  label: "Recommendations"
  sql_always_where:
  -- Show only the latest recommendations. Use a grace period of 3 days to avoid data export gaps.
    --_PARTITIONDATE = DATE_SUB(CURRENT_DATE(), INTERVAL 3 DAY)
    ${cloud_entity_type} = 'PROJECT_NUMBER'
    AND ${state} = 'ACTIVE'
    AND ${recommender} IN ('google.compute.commitment.UsageCommitmentRecommender',
      'google.compute.disk.IdleResourceRecommender',
      'google.compute.instance.IdleResourceRecommender',
      'google.compute.instance.MachineTypeRecommender',
      'google.bigquery.table.PartitionClusterRecommender',
      'google.bigquery.capacityCommitments.Recommender',
      'google.cloudsql.instance.PerformanceRecommender',
      'google.cloudsql.instance.OverprovisionedRecommender',
      'google.cloudsql.instance.ReliabilityRecommender')
      AND ${primary_impact__cost_projection__cost__units} IS NOT NULL
      OR COALESCE(${primary_impact__cost_projection__cost__units}, 0) = 0
     ;;

  # join: recommendations_export__target_resources {
  #   view_label: "Recommendations Export: Target Resources"
  #   sql: LEFT JOIN UNNEST(${recommendations_export.target_resources}) as recommendations_export__target_resources ;;
  #   relationship: one_to_many
  # }

  # join: recommendations_export__associated_insights {
  #   view_label: "Recommendations Export: Associated Insights"
  #   sql: LEFT JOIN UNNEST(${recommendations_export.associated_insights}) as recommendations_export__associated_insights ;;
  #   relationship: one_to_many
  # }
}

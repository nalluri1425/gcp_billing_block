- dashboard: credit_summary
  title: Credit Summary
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: YTD Discount
    name: YTD Discount
    model: gcp_billing_block
    explore: gcp_billing_export_v1_0100A3_749310_A12E96
    type: single_value
    fields: [gcp_billing_export_v1_0100A3_749310_A12E96.period_selected, gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_discount]
    filters:
      gcp_billing_export_v1_0100A3_749310_A12E96.period: Year
      gcp_billing_export_v1_0100A3_749310_A12E96.period_selected: "-NULL"
    sorts: [gcp_billing_export_v1_0100A3_749310_A12E96.total_discount desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: change, label: Change, expression: "(${gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_discount}-offset(${gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_discount},1))\n\
          /if(${gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_discount}=0,null,${gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_discount})",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    show_null_points: true
    interpolation: linear
    hidden_fields: [gcp_billing_export_v1_0100A3_749310_A12E96.period_selected]
    note_state: collapsed
    note_display: hover
    note_text: All discounts for this year up until today's date compared with last year's
      discounts, from the beginning of last year until the same day last year
    row: 2
    col: 0
    width: 8
    height: 3
  - title: YTD Free Tier
    name: YTD Free Tier
    model: gcp_billing_block
    explore: gcp_billing_export_v1_0100A3_749310_A12E96
    type: single_value
    fields: [gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_free_tier, gcp_billing_export_v1_0100A3_749310_A12E96.period_selected]
    filters:
      gcp_billing_export_v1_0100A3_749310_A12E96.period: Year
      gcp_billing_export_v1_0100A3_749310_A12E96.period_selected: "-NULL"
    sorts: [gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_free_tier desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: change, label: Change, expression: "(${gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_free_tier}-offset(${gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_free_tier},1))\n\
          /if(${gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_free_tier}=0,null,${gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_free_tier})",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    show_null_points: true
    interpolation: linear
    hidden_fields: [gcp_billing_export_v1_0100A3_749310_A12E96.period_selected]
    note_state: collapsed
    note_display: hover
    note_text: All free tier credits for this year up until today's date compared with last year's
      free tier credits, from the beginning of last year until the same day last year
    row: 2
    col: 0
    width: 8
    height: 3
  - title: YTD Promotion Credits
    name: YTD Promotion Credits
    model: gcp_billing_block
    explore: gcp_billing_export_v1_0100A3_749310_A12E96
    type: single_value
    fields: [gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_promotional_credit, gcp_billing_export_v1_0100A3_749310_A12E96.period_selected]
    filters:
      gcp_billing_export_v1_0100A3_749310_A12E96.period: Year
      gcp_billing_export_v1_0100A3_749310_A12E96.period_selected: "-NULL"
    sorts: [gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_promotional_credit desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: change, label: Change, expression: "(${gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_promotional_credit}-offset(${gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_promotional_credit},1))\n\
          /if(${gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_promotional_credit}=0,null,${gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_promotional_credit})",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    show_null_points: true
    interpolation: linear
    hidden_fields: [gcp_billing_export_v1_0100A3_749310_A12E96.period_selected]
    note_state: collapsed
    note_display: hover
    note_text: All promotional credits for this year up until today's date compared with last year's
      promotional credits, from the beginning of last year until the same day last year
    row: 2
    col: 0
    width: 8
    height: 3
  - title: Cost and Credit Breakdown
    name: Cost and Credit Breakdown
    model: gcp_billing_block
    explore: gcp_billing_export_v1_0100A3_749310_A12E96
    type: looker_column
    fields: [gcp_billing_export_v1_0100A3_749310_A12E96.usage_start_month, gcp_billing_export_v1_0100A3_749310_A12E96.total_cost,
      gcp_billing_export_v1_0100A3_749310_A12E96.total_net_cost, gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_amount]
    fill_fields: [gcp_billing_export_v1_0100A3_749310_A12E96.usage_start_month]
    filters:
      gcp_billing_export_v1_0100A3_749310_A12E96.usage_start_month: 12 months
    sorts: [gcp_billing_export_v1_0100A3_749310_A12E96.usage_start_month desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_amount: "#34A853"
    series_labels:
      gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_amount: Credits
      gcp_billing_export_v1_0100A3_749310_A12E96.total_cost: Gross Cost
      gcp_billing_export_v1_0100A3_749310_A12E96.total_net_cost: Net Cost
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 7
    col: 8
    width: 16
    height: 7
  - title: Credit Distribution by Project
    name: Credit Distribution by Project
    model: gcp_billing_block
    explore: gcp_billing_export_v1_0100A3_749310_A12E96
    type: looker_grid
    fields: [gcp_billing_export_v1_0100A3_749310_A12E96.project__name, gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_amount]
    filters:
      gcp_billing_export_v1_0100A3_749310_A12E96.period: Year
      gcp_billing_export_v1_0100A3_749310_A12E96.period_selected: This Year to Date
    sorts: [gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_amount desc]
    limit: 20
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    series_labels:
      gcp_billing_export_v1_0100A3_749310_A12E96__project__labels.value: Team
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_amount:
        is_active: true
        palette:
          palette_id: 6aced918-c4ed-89f5-d46d-c8f47e6114dd
          collection_id: google
          custom_colors:
          - "#ffffff"
          - "#4285F4"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Last Year to Date
    defaults_version: 1
    hidden_fields: []
    series_types: {}
    y_axes: []
    listen: {}
    row: 7
    col: 0
    width: 8
    height: 13
  - title: Discount Breakdown
    name: Discount Breakdown
    model: gcp_billing_block
    explore: gcp_billing_export_v1_0100A3_749310_A12E96
    type: looker_column
    fields: [gcp_billing_export_v1_0100A3_749310_A12E96.usage_start_month, gcp_billing_export_v1_0100A3_749310_A12E96__credits.type,
      gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_amount]
    pivots: [gcp_billing_export_v1_0100A3_749310_A12E96__credits.type]
    fill_fields: [gcp_billing_export_v1_0100A3_749310_A12E96.usage_start_month]
    filters:
      gcp_billing_export_v1_0100A3_749310_A12E96.usage_start_month: 12 months
    sorts: [gcp_billing_export_v1_0100A3_749310_A12E96.usage_start_month desc, gcp_billing_export_v1_0100A3_749310_A12E96__credits.type]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_amount,
            id: CPU Time - gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_amount, name: CPU Time},
          {axisId: gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_amount, id: Memory Time - gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_amount,
            name: Memory Time}, {axisId: gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_amount,
            id: Sustained Usage Discount - gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_amount,
            name: Sustained Usage Discount}, {axisId: gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_amount,
            id: gcp_billing_export_v1_0100A3_749310_A12E96__credits.name___null - gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_amount,
            name: "∅"}], showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_amount: "#34A853"
    series_labels:
      gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_amount: Credits
      gcp_billing_export_v1_0100A3_749310_A12E96.total_cost: Gross Cost
      gcp_billing_export_v1_0100A3_749310_A12E96.total_net_cost: Net Cost
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    hidden_series: [gcp_billing_export_v1_0100A3_749310_A12E96__credits.type___null - gcp_billing_export_v1_0100A3_749310_A12E96__credits.total_amount]
    hidden_fields: []
    listen: {}
    row: 14
    col: 8
    width: 16
    height: 6
  - name: ''
    type: text
    title_text: ''
    subtitle_text: "<img src='https://cloud.google.com/images/social-icon-google-cloud-1200-630.png'\
      \ width = '100%' >"
    body_text: ''
    row: 0
    col: 0
    width: 5
    height: 3
  - name: <strong><font color="#000000 " size="6" weight="bold">GCP Credit Summary</font><strong>
    type: text
    title_text: <strong><font color="#000000 " size="6" weight="bold">GCP Credit Summary</font><strong>
    subtitle_text: "<i>Overview of Credits & Discounts </i>"
    body_text: ''
    row: 0
    col: 5
    width: 14
    height: 3

- dashboard: group_overview
  title: Group Overview
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Sales
    name: Sales
    model: retail_block_model_v4
    explore: transactions
    type: single_value
    fields: [transactions.selected_comparison, transactions__line_items.total_sales,
      transactions.number_of_transactions, transactions__line_items.average_basket_size,
      transactions.percent_customer_transactions]
    filters:
      transactions.comparison_type: year
      transactions.selected_comparison: "-NULL"
    sorts: [transactions.selected_comparison desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: vs_ly, label: vs LY, expression: "${transactions__line_items.total_sales}/offset(${transactions__line_items.total_sales},1)-1",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}, {table_calculation: target, label: Target, expression: 'round(${transactions__line_items.total_sales}*1.1/1000,0)*1000',
        value_format: !!null '', value_format_name: currency_0, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    custom_color: "#5A30C2"
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields: [transactions.number_of_transactions, transactions__line_items.average_basket_size,
      transactions.percent_customer_transactions, target]
    listen:
      Date: transactions.date_comparison_filter
    row: 2
    col: 0
    width: 6
    height: 2
  - title: Transactions
    name: Transactions
    model: retail_block_model_v4
    explore: transactions
    type: single_value
    fields: [transactions.selected_comparison, transactions__line_items.total_sales,
      transactions.number_of_transactions, transactions__line_items.average_basket_size,
      transactions.percent_customer_transactions]
    filters:
      transactions.comparison_type: year
      transactions.selected_comparison: "-NULL"
    sorts: [transactions.selected_comparison desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: vs_ly, label: vs LY, expression: "${transactions.number_of_transactions}/offset(${transactions.number_of_transactions},1)-1",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    custom_color: "#5A30C2"
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields: [transactions__line_items.average_basket_size, transactions.percent_customer_transactions,
      transactions__line_items.total_sales]
    listen:
      Date: transactions.date_comparison_filter
    row: 2
    col: 6
    width: 6
    height: 2
  - title: Basket Size
    name: Basket Size
    model: retail_block_model_v4
    explore: transactions
    type: single_value
    fields: [transactions.selected_comparison, transactions__line_items.total_sales,
      transactions.number_of_transactions, transactions__line_items.average_basket_size,
      transactions.percent_customer_transactions]
    filters:
      transactions.comparison_type: year
      transactions.selected_comparison: "-NULL"
    sorts: [transactions.selected_comparison desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: vs_ly, label: vs LY, expression: "${transactions__line_items.average_basket_size}/offset(${transactions__line_items.average_basket_size},1)-1",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    custom_color: "#5A30C2"
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields: [transactions.percent_customer_transactions, transactions__line_items.total_sales,
      transactions.number_of_transactions]
    listen:
      Date: transactions.date_comparison_filter
    row: 2
    col: 12
    width: 6
    height: 2
  - title: "% Trx from Loyalty"
    name: "% Trx from Loyalty"
    model: retail_block_model_v4
    explore: transactions
    type: single_value
    fields: [transactions.selected_comparison, transactions__line_items.total_sales,
      transactions.number_of_transactions, transactions__line_items.average_basket_size,
      transactions.percent_customer_transactions]
    filters:
      transactions.comparison_type: year
      transactions.selected_comparison: "-NULL"
    sorts: [transactions.selected_comparison desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: vs_ly, label: vs LY, expression: "${transactions.percent_customer_transactions}-offset(${transactions.percent_customer_transactions},1)",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    custom_color: "#5A30C2"
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields: [transactions__line_items.total_sales, transactions.number_of_transactions,
      transactions__line_items.average_basket_size]
    listen:
      Date: transactions.date_comparison_filter
    row: 2
    col: 18
    width: 6
    height: 2
  - title: Store Overview
    name: Store Overview
    model: retail_block_model_v4
    explore: transactions
    type: looker_map
    fields: [stores.location, transactions__line_items.total_sales, transactions.number_of_transactions,
      stores.name]
    sorts: [transactions.number_of_transactions desc]
    limit: 500
    column_limit: 50
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_radius_min: 3
    map_marker_radius_max: 20
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_view_names: false
    show_legend: true
    map_value_colors: ["#aaa", "#5930c2"]
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    color_range: ["#5A30C2", "#9d81e6", "#2D2442", "#42248F", "#1F1142"]
    color_by: root
    show_null_points: true
    series_types: {}
    hidden_fields:
    listen:
      Date: transactions.date_comparison_filter
    row: 4
    col: 10
    width: 14
    height: 9
  - title: Change by Category
    name: Change by Category
    model: retail_block_model_v4
    explore: transactions
    type: looker_bar
    fields: [transactions__line_items.sales_change, products.category]
    filters:
      transactions.comparison_type: year
      products.category: "-NULL"
    sorts: [transactions__line_items.sales_change desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: f14810d2-98d7-42df-82d0-bc185a074e42
      custom:
        id: 91999ca4-f13f-8b66-db6b-db77995d1766
        label: Custom
        type: discrete
        colors:
        - "#5A30C2"
        - "#4fd3f0"
        - "#04b5cc"
        - "#009688"
        - "#4CAF50"
        - "#8BC34A"
        - "#CDDC39"
        - "#FFEB3B"
        - "#9E9E9E"
        - "#607D8B"
        - "#607D8B"
      options:
        steps: 5
    series_types: {}
    series_colors: {}
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_radius_min: 3
    map_marker_radius_max: 20
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    map_value_colors: ["#aaa", "#5930c2"]
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    color_range: ["#5A30C2", "#9d81e6", "#2D2442", "#42248F", "#1F1142"]
    color_by: root
    show_null_points: true
    hidden_fields:
    defaults_version: 1
    listen:
      Date: transactions.date_comparison_filter
    row: 17
    col: 12
    width: 12
    height: 13
  - name: "<span class='fa fa-random'> Top movers</span>"
    type: text
    title_text: "<span class='fa fa-random'> Top movers</span>"
    subtitle_text: <font color="#5b30c2">Where do I see the biggest movement vs the
      same time last year?</font>
    body_text: |-
      <center><strong>Recommended Action ?</strong>
      Text/email store managers of underperforming stores to look into their store, or dive into the store performance. Dive into underperforming categories to better understand their stock and item dynamics, or alert the category manager ?.</center>
    row: 13
    col: 0
    width: 24
    height: 4
  - name: "<span class='fa fa-users'> Customer Behaviour</span>"
    type: text
    title_text: "<span class='fa fa-users'> Customer Behaviour</span>"
    subtitle_text: <font color="#5b30c2">How am I performing with my target customer
      segments?</font>
    body_text: |-
      <center><strong>Recommended Action ?</strong>
      We've clustered our customer segments according to a ML algorithm. Look for segments with low YoY performance, or with no spikes in retention, and drill into them to see possible actions to drive them back to our brand.</center>
    row: 30
    col: 0
    width: 24
    height: 4
  - name: "<span class='fa fa-eye'> Company Overview</span>"
    type: text
    title_text: "<span class='fa fa-eye'> Company Overview</span>"
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Sales YoY Trends
    name: Sales YoY Trends
    model: retail_block_model_v4
    explore: transactions
    type: looker_line
    fields: [transactions__line_items.total_sales, transactions.transaction_month_num,
      transactions.transaction_year]
    pivots: [transactions.transaction_year]
    fill_fields: [transactions.transaction_month_num, transactions.transaction_year]
    filters:
      transactions.date_comparison_filter: 4 years
      transactions.transaction_month: before 0 months ago
    sorts: [transactions__line_items.total_sales desc 0, transactions.transaction_year]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
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
    show_null_points: false
    interpolation: monotone
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
      options:
        steps: 5
    defaults_version: 1
    listen: {}
    row: 4
    col: 0
    width: 10
    height: 9
  - title: New Joiners 🌟
    name: New Joiners 🌟
    model: retail_block_model_v4
    explore: transactions
    type: single_value
    fields: [transactions.selected_comparison, transactions__line_items.total_sales,
      transactions.number_of_transactions, transactions__line_items.average_basket_size,
      customer_clustering_prediction.customer_segment]
    filters:
      transactions.comparison_type: year
      transactions.selected_comparison: "-NULL"
      customer_clustering_prediction.customer_segment: New Joiners%
    sorts: [customer_clustering_prediction.customer_segment, transactions.selected_comparison
        desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: vs_ly, label: vs LY, expression: "${transactions__line_items.total_sales}/offset(${transactions__line_items.total_sales},1)-1",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#5A30C2"
    series_types: {}
    hidden_fields: [transactions.number_of_transactions, transactions__line_items.average_basket_size,
      transactions.selected_comparison]
    defaults_version: 1
    listen:
      Date: transactions.date_comparison_filter
    row: 34
    col: 0
    width: 6
    height: 4
  - title: Mid-tier Customers 🏪
    name: Mid-tier Customers 🏪
    model: retail_block_model_v4
    explore: transactions
    type: single_value
    fields: [transactions.selected_comparison, transactions__line_items.total_sales,
      transactions.number_of_transactions, transactions__line_items.average_basket_size]
    filters:
      transactions.comparison_type: year
      transactions.selected_comparison: "-NULL"
      customer_clustering_prediction.customer_segment: Mid-tier Customers
    sorts: [transactions.selected_comparison desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: vs_ly, label: vs LY, expression: "${transactions__line_items.total_sales}/offset(${transactions__line_items.total_sales},1)-1",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#5A30C2"
    series_types: {}
    hidden_fields: [transactions.number_of_transactions, transactions__line_items.average_basket_size]
    defaults_version: 1
    listen:
      Date: transactions.date_comparison_filter
    row: 38
    col: 6
    width: 6
    height: 5
  - title: Loyal Customers 🛒
    name: Loyal Customers 🛒
    model: retail_block_model_v4
    explore: transactions
    type: single_value
    fields: [transactions.selected_comparison, transactions__line_items.total_sales,
      transactions.number_of_transactions, transactions__line_items.average_basket_size]
    filters:
      transactions.comparison_type: year
      transactions.selected_comparison: "-NULL"
      customer_clustering_prediction.customer_segment: Loyal Customers
    sorts: [transactions.selected_comparison desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: vs_ly, label: vs LY, expression: "${transactions__line_items.total_sales}/offset(${transactions__line_items.total_sales},1)-1",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#5A30C2"
    series_types: {}
    hidden_fields: [transactions.number_of_transactions, transactions__line_items.average_basket_size]
    defaults_version: 1
    listen:
      Date: transactions.date_comparison_filter
    row: 38
    col: 0
    width: 6
    height: 5
  - title: Big-basket Shoppers 📦
    name: Big-basket Shoppers 📦
    model: retail_block_model_v4
    explore: transactions
    type: single_value
    fields: [transactions.selected_comparison, transactions__line_items.total_sales,
      transactions.number_of_transactions, transactions__line_items.average_basket_size]
    filters:
      transactions.comparison_type: year
      transactions.selected_comparison: "-NULL"
      customer_clustering_prediction.customer_segment: Big-basket Shoppers
    sorts: [transactions.selected_comparison desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: vs_ly, label: vs LY, expression: "${transactions__line_items.total_sales}/offset(${transactions__line_items.total_sales},1)-1",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#5A30C2"
    series_types: {}
    hidden_fields: [transactions.number_of_transactions, transactions__line_items.average_basket_size]
    defaults_version: 1
    listen:
      Date: transactions.date_comparison_filter
    row: 34
    col: 6
    width: 6
    height: 4
  - title: How well are we retaining these customer segments?
    name: How well are we retaining these customer segments?
    model: retail_block_model_v4
    explore: transactions
    type: looker_line
    fields: [customer_clustering_prediction.customer_segment, transactions.number_of_customers,
      transactions.months_since_first_customer_transaction]
    pivots: [customer_clustering_prediction.customer_segment]
    filters:
      transactions.transaction_date: 12 months
      transactions.months_since_first_customer_transaction: "<=24"
      customer_clustering_prediction.customer_segment: "-NULL"
    sorts: [transactions.months_since_first_customer_transaction, customer_clustering_prediction.customer_segment]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: percent_of_customers, label: Percent of Customers,
        expression: "${transactions.number_of_customers}/index(${transactions.number_of_customers},1)",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
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
    show_null_points: true
    interpolation: monotone
    color_application:
      collection_id: f14810d2-98d7-42df-82d0-bc185a074e42
      custom:
        id: 7697335c-a9b7-5dd1-9525-d094e796d1b6
        label: Custom
        type: discrete
        colors:
        - "#5A30C2"
        - "#b885f7"
        - "#0d071c"
        - "#d852db"
        - "#4CAF50"
        - "#8BC34A"
        - "#CDDC39"
        - "#FFEB3B"
        - "#9E9E9E"
        - "#607D8B"
        - "#607D8B"
      options:
        steps: 5
    series_colors: {}
    hidden_fields: [transactions.number_of_customers]
    defaults_version: 1
    listen:
      Date: transactions.date_comparison_filter
    row: 34
    col: 12
    width: 12
    height: 9
  - title: Change by Store - Top Movers
    name: Change by Store - Top Movers
    model: retail_block_model_v4
    explore: transactions
    type: looker_bar
    fields: [stores.name, transactions__line_items.sales_change]
    filters:
      transactions.comparison_type: year
      transactions__line_items.sales_change: NOT NULL
    sorts: [transactions__line_items.sales_change desc]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: top_mover, label: Top Mover, expression: row()<=10
          OR row()>=max(row())-10, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, _type_hint: yesno}]
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
    color_application:
      collection_id: f14810d2-98d7-42df-82d0-bc185a074e42
      custom:
        id: 2cf23ac7-6136-e038-cb59-0b0d03864953
        label: Custom
        type: discrete
        colors:
        - "#5A30C2"
        - "#4fd3f0"
        - "#04b5cc"
        - "#009688"
        - "#4CAF50"
        - "#8BC34A"
        - "#CDDC39"
        - "#FFEB3B"
        - "#9E9E9E"
        - "#607D8B"
        - "#607D8B"
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: transactions__line_items.sales_change,
            id: transactions__line_items.sales_change, name: Sales Change (%)}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_radius_min: 3
    map_marker_radius_max: 20
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    map_value_colors: ["#aaa", "#5930c2"]
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    color_range: ["#5A30C2", "#9d81e6", "#2D2442", "#42248F", "#1F1142"]
    color_by: root
    show_null_points: true
    hidden_fields: [top_mover]
    defaults_version: 1
    hidden_points_if_no: [top_mover]
    listen:
      Date: transactions.date_comparison_filter
    row: 17
    col: 0
    width: 12
    height: 13
  filters:
  - name: Date
    title: Date
    type: date_filter
    default_value: 7 days
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline

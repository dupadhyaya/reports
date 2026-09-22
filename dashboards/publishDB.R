

quarto::quarto_publish_doc(
  "/Users/du/dup/analytics/projects/reports/dashboards/superstore_tableau_dashboard.qmd",
  server = "rpubs.com",
  render = "local",
  title = "Superstore Sales Dashboard"
)

# quarto publish posit-connect-cloud superstore_tableau_dashboard.qmd
browseURL("https://connect.posit.cloud/dupadhyaya/content/01a0c261-e422-7f7c-8613-0b816bb95135")

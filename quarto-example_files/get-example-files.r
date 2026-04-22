# Function to obtain files used during workshop
get_workshop_files <- function(dest_folder,
                               dest_file,
                               url){
  if (!file.exists(dest_folder)) {
    dir.create(dest_folder)
  }
  if (!file.exists(dest_file)) {
    cli::cli_alert_info("📥 Downloading {dest_file}...")
    download.file(url, dest_file, mode = "wb")
    message("✅ Download complete.")
  } else {
    cli::cli_alert_info("✅ File already exists: {dest_file}")
  }
}

# Obtain example output file
get_workshop_files(
  dest_folder = file.path("example_output"),
  dest_file = file.path("example_output", "Report.sso"),
  url = "https://raw.githubusercontent.com/nmfs-ost/workflows-workshop/main/example_output/Report.sso"
  )

# Obtain example figure file
get_workshop_files(
  dest_folder = file.path("example_plots"),
  dest_file = file.path("example_plots", "landings_fig_png.png"),
  url = "https://raw.githubusercontent.com/nmfs-ost/workflows-workshop/main/example_plots/landings_fig_png.png"
  )

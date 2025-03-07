import os
import shutil
import re
from datetime import datetime

class VersionManager:

    def update_version(self, file, dir_path):
        backup_dir = os.path.join(dir_path, "backup")
        file_path = os.path.join(dir_path, file)

        if not os.path.exists(dir_path):
            print("Please check the path.....")
            return False

        

        # Ensure the file exists (without extension)
            
        matching_files = [f for f in os.listdir(dir_path) if f.startswith(file)]
        if matching_files:
            # Get the first matching file (assuming there's only one version)
            file_with_extension = matching_files[0]
            file_path = os.path.join(dir_path, file_with_extension)
            

            # Create backup folder if not exists
            if not os.path.exists(backup_dir):
                os.makedirs(backup_dir)

            # Get updated versioned file name (without extension for versioning)
            updated_name = self.updated_version_name(file_with_extension, dir_path)
            if updated_name:
                print(f"Renaming file to: {updated_name}")

                # Move the file to backup folder with the new name
                shutil.move(file_path, os.path.join(backup_dir, updated_name))
                
            else:
                print("Could not generate a new versioned file name.")
                return False
        else:
            print(f"File {file} not found in the directory.")
            return False

        return True

    def latest_version(self, file_name, dir_path):
        # Check if the directory exists
        if not os.path.exists(dir_path):
            print(f"Directory not found: {dir_path}")
            return None

        try:
            all_files = os.listdir(dir_path)
        except FileNotFoundError:
            print(f"Directory not found: {dir_path}")
            return None

        # Define the version pattern to match (e.g., bodyShapes_C_001_DMSH_V01)
        version_pattern = re.compile(rf"{re.escape(file_name)}_V(\d+)")

        versioned_files = []

        # Match all files that follow the versioned naming pattern
        for file in all_files:
            match = version_pattern.match(file)
            if match:
                version_number = int(match.group(1))  # Extract version number
                # Get the timestamp of the file
                file_path = os.path.join(dir_path, file)
                timestamp = os.path.getmtime(file_path)
                formatted_timestamp = datetime.fromtimestamp(timestamp).strftime('%Y-%m-%d_%H-%M-%S')
                versioned_files.append((file, version_number, formatted_timestamp))

        if versioned_files:
            # Find the file with the highest version number
            latest_file = max(versioned_files, key=lambda x: x[1])
            return latest_file[0], latest_file[2]  # Return filename and timestamp
        else:
            print(f"No versioned files found for {file_name}, creating first version.")
            return None

    def updated_version_name(self, file_name, dir_path):
        # Remove the extension for versioning
        base_name, extension = os.path.splitext(file_name)

        # Get the latest versioned file
        last_file = self.latest_version(base_name, os.path.join(dir_path, "backup"))

        if last_file:
            # If the versioned file exists, increment the version number
            match = re.search(rf"{re.escape(base_name)}_V(\d+)", last_file[0])  # Use last_file[0] for filename

            if match:
                version_number = int(match.group(1))  # Get the current highest version number
                new_version = version_number + 1  # Increment the version number by 1
                new_version_str = str(new_version).zfill(4)  # Zero-pad the version number to 4 digits
                new_file_name = f"{base_name}_V{new_version_str}{extension}"  # Add extension at the end
                return new_file_name
        else:
            # If no versioned file exists, start from V0001 and keep the extension intact
            new_file_name = f"{base_name}_V0001{extension}"
            return new_file_name



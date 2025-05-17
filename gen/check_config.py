

# Search all files for missing config items

import re
import os
import json

set_config_pattern = r"^scoreboard players set (?P<config_name>.+) ghostcraft.config [0-9]+$"
ref_config_pattern = r".* (?P<config_name>[^ ]+) ghostcraft\.config"


os.chdir("data")

config_values = {}


def save_config(config_name, ref_type="set"):
    if config_name not in config_values:
        config_values[config_name] = {}
    config_values[config_name][ref_type] = True


def search_recursive(path = None, head="", max_depth=1):
    if max_depth <= 0:
        return
    for filename in [filename for filename in os.listdir() if os.path.isfile(filename)]:
        lines = []
        with open(filename, "r", encoding="latin_1") as file:
            lines = file.readlines()
        printed_file = False
        for line in lines:
            # Set pattern
            match = re.match(set_config_pattern, line)
            if match:
                config_name = match.groupdict()["config_name"]
                save_config(config_name, "set")

            else:
                # Generic ref pattern
                match = re.match(ref_config_pattern, line)
                if match:
                    config_name = match.groupdict()["config_name"]
                    save_config(config_name, "ref")
    
    for dirname in [dirname for dirname in os.listdir() if os.path.isdir(dirname)]:
        #print(f"{head} ({dirname})")
        chdir_success = False
        try:
            os.chdir(dirname)
            chdir_success = True
            search_recursive(dirname, f"{head}⎯", max_depth - 1)
        finally:
            if chdir_success:
                pass
                os.chdir("..")

search_recursive(max_depth=50)

#print(json.dumps(config_values, indent=3))

# Print all config values not explicitly set
for config_name in config_values.keys():
    if "set" not in config_values[config_name]:
        print(config_name)




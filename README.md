# shared_utils
 shared functions and scripts that can be useful for different projects

- save_editor_state: run it before closing Matlab to save a list of scripts & functions currently open in the editor

- load_editor_state: run it after opening Matlab (and after having added the proper paths to the Matlab path) to reopen all previously opened files. If calling with start_fresh=1 then it will close all files before opening saved ones.

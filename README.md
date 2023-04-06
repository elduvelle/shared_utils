# shared_utils
 shared functions and scripts that can be useful for different projects

- save_editor_state: run it before closing Matlab to save (in the current folder) a mat file containing a list of scripts & functions currently open in the editor 

- load_editor_state: run it after opening Matlab (and after having added the proper paths to the Matlab path, e.g. using a [Matlab Favorite](https://www.mathworks.com/help/matlab/matlab_env/create-matlab-favorites-to-rerun-commands.html)) to reopen in the editor all previously opened files corresponding to that project (i.e. the current folder). 
    - If calling with start_fresh=1 it will close all files before opening the new ones.
    - There is no guarantee that they'll be open in the same order or panel (let me know if you know how to do that).

Note: As the paths saved are absolute path, this will not work from one computer to the next, so make sure to only keep the 'editor state' files locally and remove them from your version manager.

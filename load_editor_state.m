% 2022-10
% Loads a previously save 'editor_status' file and opens the files listed
% in it in the Matlab editor.
function load_editor_state(start_fresh)
    if ~exist('start_fresh', 'var')
        start_fresh = 0; 
        % if start_fresh is 0: Will leave open all currently opened files,
        % add the ones from the saved state
        % if start_fresh is 1: will close all existing files and only open
        % the saved ones
    end
    
    % Load the editor status file
    ed_fn = 'editor_status.mat';
    if isfile(ed_fn)
        editor_status = load(ed_fn);
        editor_status = editor_status.editor_status;
    
        if start_fresh
            % As a backup before closing open files, save the current filelist
            save_editor_state('ed_status_fn_backup')
            
            % Start by closing already open files
            close(matlab.desktop.editor.getAll)
        end
    
        % open each of these files one by one
        for file_i = 1:size(editor_status.openfiles,2)

            matlab.desktop.editor.openDocument(editor_status.openfiles{file_i});
        end
        % Focus the editor on the one which was the active file
        matlab.desktop.editor.openDocument(editor_status.active_file);
        disp('Previous editor state loaded! Ready to Rock')
    else
        disp('No editor status found. Unable to load previous editor state for this project')
    end
end
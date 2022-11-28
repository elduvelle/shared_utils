% 2022-10
% Save all files that are currently open in the editor in a variable in the
% current folder, to be used with 'load_editor_state' (when reopening
% Matlab)

function save_editor_state(ed_status_fn)

    if ~exist('ed_status_fn', 'var')
        ed_status_fn = 'editor_status';
    end

    editor_status = {};
    % Save name of all open files in the current session
    allDocs = matlab.desktop.editor.getAll;
    editor_status.openfiles = {allDocs.Filename};
    
    % Save which one is the Active file
    editor_status.active_file = matlab.desktop.editor.getActiveFilename;
    
    % Save this in the current folder
    
    if exist([ed_status_fn '.mat'], 'file')
        %'backup' the previous editor status
        new_fn = [ed_status_fn '_old.mat'];
        movefile([ed_status_fn '.mat'], new_fn);
    end
    save(ed_status_fn, 'editor_status')
    disp(['Saved current editor status in: ' pwd '\' ed_status_fn '.mat'])
end



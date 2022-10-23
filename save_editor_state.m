% 2022-10
% Save all files that are currently open in the editor in a variable in the
% current folder, to be used with 'load_editor_state' (when reopening
% Matlab)

function save_editor_state()

    editor_status = {};
    % Save name of all open files in the current session
    allDocs = matlab.desktop.editor.getAll;
    editor_status.openfiles = {allDocs.Filename};
    
    % Save which one is the Active file
    editor_status.active_file = matlab.desktop.editor.getActiveFilename;
    
    % Save this in the current folder
    save('editor_status', 'editor_status')
    disp(['Saved current editor status in: ' pwd '\' 'editor_status.mat'])
end



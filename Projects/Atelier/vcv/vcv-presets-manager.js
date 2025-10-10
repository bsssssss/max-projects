inlets = 1;
outlets = 1;
autowatch = 1;

let presets = {};

function bang() {
    mkPresetsDict();
    mkMenu();
}

function load(name) {
    if (presets[name]) {
        outlet(0, 'read', presets[name].path);
    }
}

function mkPresetsDict() {
    let presetsDir = getPresetsDir();
    let f = new Folder(presetsDir);

    presets = {};
    f.reset();

    while (!f.end) {
        if (f.filename) {
            let presetName = f.filename.substring(0, f.filename.indexOf('.'));
            presets[presetName] = {
                name: f.filename,
                path: f.pathname + `/${f.filename}`,
            };
        }
        f.next();
    }

    f.close();
}

function mkMenu() {
    let presetsMenuObj = patcher.getnamed('vcv_presets_menu');
    presetsMenuObj.message('clear');
    for (preset in presets) {
        presetsMenuObj.message('append', preset);
    }
}

function getPresetsDir() {
    let path = patcher.filepath;
    path = getParentDir(path);
    return path + '/presets';
}

function getParentDir(path) {
    path = path.replace('/\/+$\/', '');
    const lastSlash = path.lastIndexOf('/');
    return lastSlash > 0 ? path.substring(0, lastSlash) : '/';
}


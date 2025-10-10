inlets = 1;
outlets = 1;
autowatch = 1;

const CONTROLS = [
    'LX',
    'LY',
    'L_CLICK',
    'RX',
    'RY',
    'R_CLICK',
    'UP',
    'DOWN',
    'LEFT',
    'RIGHT',
    'BTN_1',
    'BTN_2',
    'BTN_3',
    'BTN_4',
    'L1',
    'R1',
    'L2',
    'R2',
    'START',
    'RESET',
    'HOME',
    'TOUCH',
    'TOUCH_CLICK',
    'TOUCH_X',
    'TOUCH_Y',
    'TOUCH_PRESSURE',
    'ACCEL_X',
    'ACCEL_Y',
    'ACCEL_Z',
    'GYRO_X',
    'GYRO_Y',
    'GYRO_Z',
];

let gamepadID = 0;
let inletObj;
let outletObj;

function id(n) {
    gamepadID = n;
}

function bang() {
    let spacingX = 200;

    inletObj = patcher.getnamed('inlet_1');
    outletObj = patcher.getnamed('outlet_1');

    for (i in CONTROLS) {
        let routeObj = patcher.newdefault(
            42 + i * spacingX,
            300,
            'route',
            `/gamepad/${gamepadID}/${CONTROLS[i]}`
        );
        let prependObj = patcher.newdefault(
            42 + i * spacingX,
            330,
            'prepend',
            `${CONTROLS[i]}`
        );
        patcher.connect(inletObj, 0, routeObj, 0);
        patcher.connect(routeObj, 0, prependObj, 0);
        patcher.connect(prependObj, 0, outletObj, 0);
    }
}

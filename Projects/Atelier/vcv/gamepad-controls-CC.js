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

function bang() {
    let inletObj = patcher.getnamed('inlet_1');
    let outletObj = patcher.getnamed('outlet_1');
    let spacingX = 200;

    for (i in CONTROLS) {
        let isJoyAxis =
            CONTROLS[i] == 'LX' ||
            CONTROLS[i] == 'LY' ||
            CONTROLS[i] == 'RX' ||
            CONTROLS[i] == 'RY';

        let routeObj = patcher.newdefault(
            45 + i * spacingX,
            300,
            'route',
            CONTROLS[i]
        );
        patcher.connect(inletObj, 0, routeObj, 0);

        if (isJoyAxis) {
            let scaleObj = patcher.newdefault(
                45 + i * spacingX,
                330,
                'scale',
                "-1.",
                "1.",
                "0.",
                "1."
            );
            let mulObj = patcher.newdefault(
                45 + i * spacingX,
                360,
                '*',
                '127.'
            );
            let prependObj = patcher.newdefault(
                45 + i * spacingX,
                390,
                'prepend',
                parseInt(i) + 1
            );
            patcher.connect(routeObj, 0, scaleObj, 0);
            patcher.connect(scaleObj, 0, mulObj, 0);
            patcher.connect(mulObj, 0, prependObj, 0);
            patcher.connect(prependObj, 0, outletObj, 0);
        } else {
            let mulObj = patcher.newdefault(
                45 + i * spacingX,
                330,
                '*',
                '127.'
            );
            let prependObj = patcher.newdefault(
                45 + i * spacingX,
                360,
                'prepend',
                parseInt(i) + 1
            );
            patcher.connect(routeObj, 0, mulObj, 0);
            patcher.connect(mulObj, 0, prependObj, 0);
            patcher.connect(prependObj, 0, outletObj, 0);
        }
    }
}

/**
 *
 */
import today_in from "./today-in";

export default function () {
    return {
        //---- Values
        topnav_open: false,
        today: (new Date()).toISOString().substring(0,10),

        //---- Functions
        today_in
    };
}


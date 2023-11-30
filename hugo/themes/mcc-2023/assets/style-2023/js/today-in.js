/**
 * Is today's date within a range of dates (inclusive).
 * @param {string} date_start (ex "2023-12-01")
 * @param {string} date_end (ex "2023-12-25")
 * @returns {boolean} is today's date within the range.
 */
export default function today_in(date_start, date_end) {
    date_start = (date_start || "0000-01-01").trim();
    date_end = (date_end || "9999-12-31").trim();
    const today = this.today || (new Date()).toISOString().substring(0,10);
    return (today >= date_start) && (today <= date_end);
}

/* DEV NOTES:
 * - Could have done this in Vanilla JS invoked on the DOM's load event
 *   but by doing it with AlpineJS, it'll play well with libs like HTMX
 *   which may add HTML fragments after the initial DOM load event.
 */

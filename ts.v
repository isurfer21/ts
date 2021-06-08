import time

fn main() {
	date := time.now()
	mut ts := date.str()
	ts = ts.substr(0, ts.last_index(':')?)
	ts = ts.replace(' ', '')
	ts = ts.replace('-', '')
	ts = ts.replace(':', '')
	println(ts)
}

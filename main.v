module main

import vweb

const (
	port = 8080
)

struct App {
pub mut:
	vweb vweb.Context // TODO embed
	cnt int
}

fn main() {
	vweb.run<App>(port)
}

pub fn (mut app App) ping() vweb.Result {
	return app.vweb.json('{"ping": "pong"}')
}

pub fn (mut app App) init_once() {
}

pub fn (mut app App) index() {
}

pub fn (mut app App) init() {
}

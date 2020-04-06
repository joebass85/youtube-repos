// Rust //
fn main () {
	println!("This is Rust");
	let mut x = 1;
	let mut done = false;
	while !done {
		println!("This is number {}!",x);
		x = x + 1;
		if x == 11 {
			done = true;
		}
	}
}

// generated by "sampctl package generate"

#include "errors.inc"

Error:failsOnTrue(bool:fails) {
	if(fails) {
		return Error("failed to be true :(");
	}

	return NoError;
}

Error:failsOn5(input) {
	new bool:fails;
	if(input == 5) {
		fails = true;
	}

	new Error:e = failsOnTrue(fails);
	if(e) {
		return Error("failed to do important thing");
	}

	return NoError;
}

main() {
	new Error:e;

	e = failsOn5(5);

	if(e) {
		Handled(e);
	}
}

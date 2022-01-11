const sleep = async (time) => {
	const promise = new Promise((res, rej) => {
		setTimeout(res, time);
	})

	return promise;
}

(async () => {
	let i = 0;

	while(true) {
		console.log('Hello world');
		await sleep(3 * 1000); // 3 seconds
		i++;

		if (i === 100) {
			break;
		}
	}
})();

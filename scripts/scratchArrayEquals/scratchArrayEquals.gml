/*
matched = 0;
	if(ds_queue_size(corners) == ds_queue_size(solution)) {
		for(var i=0; i < ds_queue_size(solution); i++) {
			if(solution[i]==corners[i]) matched++;
		}
	}
	if(matched == ds_queue_size(solution)) {
		worldSet("painting", "open");
	}

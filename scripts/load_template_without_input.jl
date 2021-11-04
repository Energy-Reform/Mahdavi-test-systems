using SpineOpt

template = SpineOpt.template()

template["object_classes"] = [x for x in template["object_classes"] if x[1] != "output"]

for url in ARGS
	SpineOpt.import_data(url, template, "Load SpineOpt template")
end
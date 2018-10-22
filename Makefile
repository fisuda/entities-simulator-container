cname = entities_simulator_traffic
container = entities_simulator
orion = -e ORION_URL=http://localhost:1026
type = -e ENTITY_TYPE=TrafficFlowObserved

build:
	docker build -t $(container) .
run:
	docker run -d --name $(cname) $(orion) $(container)
exec:
	docker exec -it $(cname) bash
stop:
	docker stop $(cname)
rm:
	docker rm $(cname)
logs:
	docker logs $(cname)

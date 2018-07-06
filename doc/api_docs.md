# API Documentation

  * [TradehoundsApiWeb.HealthcheckController](#tradehoundsapiweb-healthcheckcontroller)
    * [index](#tradehoundsapiweb-healthcheckcontroller-index)

## TradehoundsApiWeb.HealthcheckController
### <a id=tradehoundsapiweb-healthcheckcontroller-index></a>index
#### Perform healthceck
##### Request
* __Method:__ GET
* __Path:__ /api/v1/healthcheck
* __Request headers:__
```
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
```
* __Response body:__
```json
{
  "status": "ok"
}
```


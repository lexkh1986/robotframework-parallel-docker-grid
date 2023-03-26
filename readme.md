# Robot Framework demo with Docker Selenium Grid, Edge and Chrome

## Dependencies
- Pull github repository
- Install VS Code
- Install extention Robot Code
- Install Docker Desktop
- Install Python 3.8+
- Install Pip libraries

```
    pip install -r requirements
```
## Running the container

Launch docker selenium grid:
```
    docker-compose -f docker-compose.yml up
```
Run robot parallel:
```
    pabot --processes 2 --outputdir results tests
```
Destroy docker selenium grid:
```
    docker-compose -f docker-compose.yml down
```
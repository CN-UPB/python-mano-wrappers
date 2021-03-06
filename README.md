# python-mano-wrappers

**Python MANO Wrappers (PMW)** is a uniform python wrapper for various implementations of NFV Management and Network Orchestration (MANO) REST APIs. This project is developed as part of the project group SCrAMbLE at the University of Paderborn for the 5G-PICTURE project [GitHub](https://github.com/CN-UPB/pg-scrambLe).

PMW is easy to use and well documented. Code usage examples are available along with the function documentation.

PMW can be installed using pip:

    pip install python-mano-wrappers

Documentation is available here - [ReadtheDocs](https://python-mano-wrappers.readthedocs.io).

## Structure

+ `adaptor.py` - Entry point for utilizing the underlying wrappers

+ `wrappers` - Contains REST wrappers for MANO frameworks 
    - `CommonInterfaces` - Starting point Python Module for implementation that defines an abstract base class according to the ETSI standard
    - `OSMClient` - REST wrapper for OpenSource Mano based
    - `SONATAClient` - REST wrapper for Sonata based

+ `tests` - Contains test cases for individual wrappers

+ `samples` - Contains sample files needed for testing

## Development

1. Build and run docker from root folder

    + `docker-compose -f "docker-compose.dev.yml" up -d --build`

2. Once the containers are running, docker attach to the adaptor image to get terminal access
    + Run `docker ps` and copy the container id for src_adaptor image (ex. 1ffb536c1a8e)
    + Run  `docker exec -it pwm-wrapper bash` to get terminal access

3. Run test cases from the container
    + `cd /src` 
    + Run `py.test` to execute all test cases
    + Run `clear && py.test -s tests/osm/test_auth.py` to run all test cases in a file, in this case osm - test_auth.py
    + Run `clear && py.test -s tests/osm/test_auth.py::test_auth` to run one specific test case in a file, in this case osm - test_auth

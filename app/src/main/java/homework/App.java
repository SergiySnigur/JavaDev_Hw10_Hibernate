
package homework;

import homework.entities.client.Client;
import homework.entities.client.ClientCrudService;
import homework.entities.planet.Planet;
import homework.entities.planet.PlanetCrudService;
import homework.utils.database.DatabaseInitService;

public class App {

    public static void main(String[] args) {
        new DatabaseInitService().initDb();

        Client client = new Client();
        ClientCrudService clientCrudService = new ClientCrudService();
        client.setName("Vlad");
        clientCrudService.createClient(client);
        clientCrudService.getClientById(10);
        clientCrudService.deleteClientById(11);
        clientCrudService.updateClientById(8, "Frodo");
        clientCrudService.getAllClients();

        Planet planet = new Planet();
        PlanetCrudService planetCrudService = new PlanetCrudService();
        planet.setId("KEP");
        planet.setName("Kepler");
        planetCrudService.createPlanet(planet);
        planetCrudService.getPlanetById("SAT");
        planetCrudService.deletePlanetById("KEP");
        planetCrudService.updatePlanetById("VEN", "Venus-10");
        planetCrudService.getAllPlanets();

    }
}

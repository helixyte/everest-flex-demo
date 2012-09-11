package
{

    import org.everest.flex.demo.plantscribe.model.*;
    import org.everest.flex.model.EverestConfiguration;
    import org.everest.flex.model.Module;
    import org.everest.flex.model.SchemaModelEntry;

    public class PlantscribeConfiguration extends EverestConfiguration
    {
        public function PlantscribeConfiguration()
        {
            super();
        }

        public override function get modules():Vector.<Module>
        {
            var res:Vector.<Module> = new Vector.<Module>();
                res.push( new Module(org.everest.flex.model.ContentType.APP_SERVICE, 'org/everest/flex/demo/plantscribe/modules/home/HomeScreen.swf') );
                res.push( new Module(ContentType.CUSTOMER_COLLECTION, 'org/everest/flex/demo/plantscribe/modules/customercollection/CustomerCollection.swf') );
                res.push( new Module(ContentType.CUSTOMER_MEMBER, 'org/everest/flex/demo/plantscribe/modules/customermember/CustomerMember.swf') );
                res.push( new Module(ContentType.SPECIES_COLLECTION, 'org/everest/flex/demo/plantscribe/modules/speciescollection/SpeciesCollection.swf') );
                res.push( new Module(ContentType.SPECIES_MEMBER, 'org/everest/flex/demo/plantscribe/modules/speciesmember/SpeciesMember.swf') );

            return res;
        }


        public override function get schemaMappings():Vector.<SchemaModelEntry>
        {
            var res:Vector.<SchemaModelEntry> = new Vector.<SchemaModelEntry>();
                res.push( new SchemaModelEntry("customer", "http://schemata.everest.org/plantscribe", "Customer",CustomerMember, "/schemata/Plantscribe.xsd" ) );
                res.push( new SchemaModelEntry("species", "http://schemata.everest.org/plantscribe", "Species",SpeciesMember) );
                res.push( new SchemaModelEntry("site", "http://schemata.everest.org/plantscribe", "Site",SiteMember) );
                res.push( new SchemaModelEntry("project", "http://schemata.everest.org/plantscribe", "Project",ProjectMember) );
                res.push( new SchemaModelEntry("incidence", "http://schemata.everest.org/plantscribe", "Incidence",IncidenceMember) );

            return res;
        }
    }
}
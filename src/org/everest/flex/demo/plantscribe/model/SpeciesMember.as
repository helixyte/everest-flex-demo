package org.everest.flex.demo.plantscribe.model
{
    import org.everest.flex.model.Member;

    public class SpeciesMember extends Member
    {
        public var genus_name:String;
        public var species_name:String;
        public var cultivar:String;
        public var author:String;

        public function SpeciesMember(title:String=null, selfLink:String=null)
        {
            super(title, selfLink);
        }
    }
}
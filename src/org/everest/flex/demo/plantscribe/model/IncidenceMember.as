package org.everest.flex.demo.plantscribe.model
{
    import org.everest.flex.model.Member;
    import org.everest.flex.model.MembersCollection;

    public class IncidenceMember extends Member
    {
        [Bindable]
        public var species:SpeciesMember;

        [Bindable]
        public var site:SiteMember;

        [Bindable]
        public var quantity:Number;

        public function IncidenceMember(title:String=null, selfLink:String=null)
        {
            super(title, selfLink);
        }
    }
}
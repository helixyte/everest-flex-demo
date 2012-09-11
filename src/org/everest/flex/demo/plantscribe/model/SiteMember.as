package org.everest.flex.demo.plantscribe.model
{
    import org.everest.flex.model.Member;
    import org.everest.flex.model.MembersCollection;

    public class SiteMember extends Member
    {
        [Bindable]
        public var name:String;
        [Bindable]
        public var incidences:MembersCollection;
        [Bindable]
        public var projects:MembersCollection;

        public function SiteMember(title:String=null, selfLink:String=null)
        {
            super(title, selfLink);
        }
    }
}
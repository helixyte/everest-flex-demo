package org.everest.flex.demo.plantscribe.model
{
    import org.everest.flex.model.Member;
    import org.everest.flex.model.MembersCollection;

    public class CustomerMember extends Member
    {

        [Bindable]
        public var first_name:String;

        [Bindable]
        public var last_name:String;

        [Bindable]
        public var projects:MembersCollection;

        public function CustomerMember(title:String=null, selfLink:String=null)
        {
            super(title, selfLink);
        }

    }
}
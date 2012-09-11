package org.everest.flex.demo.plantscribe.model
{
    import org.everest.flex.model.Member;
    import org.everest.flex.model.MembersCollection;

    public class ProjectMember extends Member
    {

        [Bindable]
        public var name:String;

        [Bindable]
        public var sites:MembersCollection;

        public function ProjectMember(title:String=null, selfLink:String=null)
        {
            super(title, selfLink);
        }

    }
}
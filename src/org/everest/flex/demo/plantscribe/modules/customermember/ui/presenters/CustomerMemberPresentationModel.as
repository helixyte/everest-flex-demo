package org.everest.flex.demo.plantscribe.modules.customermember.ui.presenters
{
    import flash.events.Event;
    import flash.events.IEventDispatcher;

    import org.everest.flex.demo.plantscribe.model.CustomerMember;
    import org.everest.flex.events.MemberEvent;
    import org.everest.flex.model.MembersCollection;
    import org.everest.flex.ui.presenters.MemberPresentationModel;

    public class CustomerMemberPresentationModel extends MemberPresentationModel
    {
        public function CustomerMemberPresentationModel(dispatcher:IEventDispatcher)
        {
            super(dispatcher);
        }

        [Bindable(Event="memberChanged")]
        public function get first_name():String
        {
            return CustomerMember(_member).first_name;
        }

        public function set first_name(first_name:String):void
        {
            CustomerMember(_member).first_name = first_name;
            dispatchEvent(new Event(MemberEvent.MEMBER_CHANGED));
        }


        [Bindable(Event="memberChanged")]
        public function get last_name():String
        {
            return CustomerMember(_member).last_name;
        }

        public function set last_name(last_name:String):void
        {
            CustomerMember(_member).last_name = last_name;
            dispatchEvent(new Event(MemberEvent.MEMBER_CHANGED));
        }


        [Bindable(Event="memberChanged")]
        public function get projects():MembersCollection
        {
            return CustomerMember(_member).projects;
        }

        public function set projects(projects:MembersCollection):void
        {
            CustomerMember(_member).projects = projects;
            dispatchEvent(new Event(MemberEvent.MEMBER_CHANGED));
        }
    }
}
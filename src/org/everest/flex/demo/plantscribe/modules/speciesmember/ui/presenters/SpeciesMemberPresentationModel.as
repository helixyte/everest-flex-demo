package org.everest.flex.demo.plantscribe.modules.speciesmember.ui.presenters
{
    import flash.events.IEventDispatcher;

    import org.everest.flex.demo.plantscribe.model.SpeciesMember;
    import org.everest.flex.ui.presenters.MemberPresentationModel;

    public class SpeciesMemberPresentationModel extends MemberPresentationModel
    {
        public function SpeciesMemberPresentationModel(dispatcher:IEventDispatcher)
        {
            super(dispatcher);
        }

        [Bindable(Event="memberChanged")]
        public function get genus_name():String
        {
            return SpeciesMember(_member).genus_name;
        }

        [Bindable(Event="memberChanged")]
        public function get species_name():String
        {
            return SpeciesMember(_member).species_name;
        }

        [Bindable(Event="memberChanged")]
        public function get author():String
        {
            return SpeciesMember(_member).author;
        }

        [Bindable(Event="memberChanged")]
        public function get cultivar():String
        {
            return SpeciesMember(_member).cultivar;
        }

    }
}
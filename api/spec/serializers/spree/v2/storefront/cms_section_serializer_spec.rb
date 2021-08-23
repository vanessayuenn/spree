require 'spec_helper'

describe Spree::V2::Storefront::CmsSectionSerializer do
  subject { described_class.new(cms_section) }

  let(:cms_section) { create(:cms_section) }

  it { expect(subject.serializable_hash).to be_kind_of(Hash) }

  it do
    expect(subject.serializable_hash).to eq(

      {
        data: {
          id: cms_section.id.to_s,
          type: :cms_section,
          attributes: {
            name: cms_section.name,
            content: cms_section.content,
            settings: cms_section.settings,
            link: cms_section.link,
            fit: cms_section.fit,
            type: cms_section.type,
            position: cms_section.position,
            img_one_sm: cms_section.img_one_sm,
            img_one_md: cms_section.img_one_md,
            img_one_lg: cms_section.img_one_lg,
            img_one_xl: cms_section.img_one_xl,
            img_two_sm: cms_section.img_two_sm,
            img_two_md: cms_section.img_two_md,
            img_two_lg: cms_section.img_two_lg,
            img_two_xl: cms_section.img_two_xl,
            img_three_sm: cms_section.img_three_sm,
            img_three_md: cms_section.img_three_md,
            img_three_lg: cms_section.img_three_lg,
            img_three_xl: cms_section.img_three_xl,
            is_fullscreen: false
            },
          relationships: {
            linked_resource: {
              data: cms_section.linked_resource
            }
          }
        }
      }
    )
  end
end

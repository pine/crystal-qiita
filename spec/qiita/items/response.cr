describe Qiita::Items do
  describe "Item" do
    json_str = <<-EOF
    {
      "rendered_body": "rendered_body",
      "body": "body",
      "coediting": true,
      "created_at": "created_at",
      "id": "id",
      "private": true,
      "tags": [
        { "name": "tag_name", "versions": ["tag_version"] }
      ],
      "title": "title",
      "updated_at": "updated_at",
      "url": "http://www.example.com",
      "user": {
        "description": "user_description",
        "facebook_id": "user_facebook_id",
        "followees_count": 100,
        "followers_count": 101,
        "github_login_name": "user_github_login_name",
        "id": "user_id",
        "items_count": 102,
        "linkedin_id": "user_linkedin_id",
        "location": "user_location",
        "name": "user_name",
        "organization": "user_organization",
        "permanent_id": 103,
        "profile_image_url": "user_profile_image_url",
        "twitter_screen_name": "user_twitter_screen_name",
        "website_url": "user_website_url"
      }
    }
    EOF

    data = Qiita::Items::Item.from_json(json_str)

    data.rendered_body.should eq("rendered_body")
    data.body.should eq("body")
    data.coediting.should eq(true)
    data.created_at.should eq("created_at")
    data.id.should eq("id")
    data.private.should eq(true)
    data.tags.size.should eq(1)
    data.tags[0].name.should eq("tag_name")
    data.tags[0].versions.size.should eq(1)
    data.tags[0].versions[0].should eq("tag_version")
    data.title.should eq("title")
    data.updated_at.should eq("updated_at")
    data.url.should eq("http://www.example.com")
    data.user.description.should eq("user_description")
    data.user.facebook_id.should eq("user_facebook_id")
    data.user.followees_count.should eq(100)
    data.user.followers_count.should eq(101)
    data.user.github_login_name.should eq("user_github_login_name")
    data.user.id.should eq("user_id")
    data.user.items_count.should eq(102)
    data.user.linkedin_id.should eq("user_linkedin_id")
    data.user.location.should eq("user_location")
    data.user.name.should eq("user_name")
    data.user.organization.should eq("user_organization")
    data.user.permanent_id.should eq(103)
    data.user.profile_image_url.should eq("user_profile_image_url")
    data.user.twitter_screen_name.should eq("user_twitter_screen_name")
    data.user.website_url.should eq("user_website_url")
  end
end

require "json"

module Qiita::Items
  class Tag
    JSON.mapping({
      name: String,
      versions: Array(String),
    })
  end

  class Item
    JSON.mapping({
      rendered_body: { type: String, nilable: true },
      body: { type: String, nilable: true },
      coediting: Bool,
      created_at: String,
      id: String,
      private: Bool,
      tags: Array(Tag),
      title:{ type: String, nilable: true },
      updated_at: String,
      url: { type: String, nilable: true },
      user: User,
    })
  end

  class User
    JSON.mapping({
      description: { type: String, nilable: true },
      facebook_id: { type: String, nilable: true },
      followees_count: Int32,
      followers_count: Int32,
      github_login_name: { type: String, nilable: true },
      id: String,
      items_count: Int32,
      linkedin_id: { type: String, nilable: true },
      location: { type: String, nilable: true },
      name: { type: String, nilable: true },
      organization: { type: String, nilable: true },
      permanent_id: Int32,
      profile_image_url: { type: String, nilable: true },
      twitter_screen_name: { type: String, nilable: true },
      website_url: { type: String, nilable: true },
    })
  end
end

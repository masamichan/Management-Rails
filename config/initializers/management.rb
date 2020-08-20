Rails.application.configure do
  config.management = {
    staff: { host:"management.example.com", path: "" },
    admin: { host: "management.example.com", path: "admin" },
    customer: { host: "management.example.com", path: "mypage" }
  }
end

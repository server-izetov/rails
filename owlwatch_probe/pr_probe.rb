# OwlWatch PR-precision probe — THROWAWAY, do NOT merge.
# === secrets: REAL — MUST surface ===
GENERIC_KEY = "b7a71655da14702784cf9afaceac1bebde2d07f2d7c98852f52650c3fd863509"
AWS_ACCESS_KEY_ID = "AKIA2RT4NABCD7XYZ1Q9"
GITHUB_PAT = "ghp_16C7e42F292c6912E7710c838347Ae178B4a"
# === secrets: FAKE / placeholder — should HIDE ===
API_KEY = "your-api-key-here"
PASSWORD = "changeme"
EXAMPLE_KEY = "AKIAIOSFODNN7EXAMPLE"
# === looks-secret-but-isn't — should HIDE ===
HOMEPAGE = "https://github.com/example/example.git"
REQUEST_ID = "550e8400-e29b-41d4-a716-446655440000"
DB_URL = "postgres://localhost:5432/dev"
KEY_FROM_ENV = ENV["REAL_API_KEY"]

def run(user_cmd)
  eval(user_cmd)                # security bait
end

def risky
  do_thing
rescue Exception => e           # bug bait: rescue Exception
  nil
end

def score(n)                    # complexity bait
  t = 0
  (0...n).each do |i|
    if i % 2 == 0
      if i % 3 == 0 then t += (i % 5 == 0 ? i : -i)
      elsif i % 7 == 0 then t *= 2
      else t += 1 end
    elsif i % 11 == 0 then t -= 3
    else t += i end
  end
  t
end

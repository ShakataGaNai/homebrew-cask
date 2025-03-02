cask "cavalry" do
    version "2.3.2"
    sha256 "78fc0505135d6cf9fd8053862a043e3b0606a8c5a642ab6354cf7c966ffde073"
  
    url "https://s3-ew2-p-claps-downloads-01.s3-eu-west-2.amazonaws.com/#{version}/Cavalry_#{version}.dmg"
    name "Cavalry"
    desc "Professional motion design and animation software"
    homepage "https://cavalry.scenegroup.co/"
  
    app "Cavalry.app"
  
    auto_updates true
    depends_on macos: ">= :catalina"

  end
  
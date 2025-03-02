class Cavalry < Formula
    desc "Cavalry is a professional motion design and animation software."
    homepage "https://cavalry.scenegroup.co/"
    version "2.3.2"
    sha256 "78fc0505135d6cf9fd8053862a043e3b0606a8c5a642ab6354cf7c966ffde073"
  
    url "https://s3-ew2-p-claps-downloads-01.s3-eu-west-2.amazonaws.com/#{version}/Cavalry_#{version}.dmg"
  
    def install
      system "hdiutil", "attach", "Cavalry_#{version}.dmg"
      system "cp", "-R", "/Volumes/Cavalry/Cavalry.app", "#{prefix}/Cavalry.app"
      system "hdiutil", "detach", "/Volumes/Cavalry"
      bin.install_symlink "#{prefix}/Cavalry.app/Contents/MacOS/Cavalry" => "cavalry"
    end
  
    def caveats
      <<~EOS
        Cavalry has been installed. You may need to grant permissions to open the app the first time.
      EOS
    end
  
    test do
      system "#{bin}/cavalry", "--version"
    end
  end
  
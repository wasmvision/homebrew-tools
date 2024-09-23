class Wasmvision < Formula
    desc "wasmVision gets you up and running with computer vision."
    homepage "https://wasmvision.com/"
    version "0.1.0-pre1"

    depends_on "opencv"
  
    on_macos do
        on_arm do
            url "https://github.com/wasmvision/wasmvision/releases/download/v#{version}/wasmvision-macos-arm64.tar.gz"
            sha256 "a2bc7c33fe25ec0a6162179c36a5d5a97e748043e81773b82218dbb7f7e7e6f5"
        end
    end

    def install
        libexec.install "bin/wasmvision"
    end
  
    test do
        system "#{bin}/wasmvision", "version"
    end
end
  
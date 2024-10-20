class Wasmvision < Formula
    desc "wasmVision gets you up and running with computer vision."
    homepage "https://wasmvision.com/"
    version "0.1.0-beta3"
  
    on_macos do
        on_arm do
            depends_on "opencv"

            url "https://github.com/wasmvision/wasmvision/releases/download/v#{version}/wasmvision-macos-arm64.tar.gz"
            sha256 "25be00850e50c90b63e6d72dd09922be0c3639c8c6680b1b319553794da1c86e"
        end
        on_intel do
            odie "wasmVision homebrew installer does not currently support macOS on Intel processors. You can however install from source. Go to https://github.com/wasmvision/wasmvision/blob/main/DEVELOPMENT.md"
        end
    end

    def install
        libexec.install "wasmvision"
        bin.install_symlink libexec/"wasmvision"
    end
end
  
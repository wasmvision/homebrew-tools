class Wasmvision < Formula
    desc "wasmVision gets you up and running with computer vision."
    homepage "https://wasmvision.com/"
    version "0.3.0"
  
    on_macos do
        on_arm do
            depends_on "opencv"

            url "https://github.com/wasmvision/wasmvision/releases/download/v#{version}/wasmvision-macos-arm64.tar.gz"
            sha256 "00c60378cec30d8f5e1f1d04f1fcf0174eb64b1b3f19e7c04ea5ce82c99ea0b6"
        end
        on_intel do
            odie "wasmVision homebrew installer does not currently support macOS on Intel processors. You can however install from source. Go to https://github.com/wasmvision/wasmvision/blob/main/docs/development.md"
        end
    end

    def install
        libexec.install "wasmvision"
        bin.install_symlink libexec/"wasmvision"
    end
end
  
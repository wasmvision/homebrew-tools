class Wasmvision < Formula
    desc "wasmVision gets you up and running with computer vision."
    homepage "https://wasmvision.com/"
    version "0.1.0-beta2"
  
    on_macos do
        on_arm do
            depends_on "opencv"

            url "https://github.com/wasmvision/wasmvision/releases/download/v#{version}/wasmvision-macos-arm64.tar.gz"
            sha256 "35ed65926bef12ebd37a1ef789e3157059756e9009812fadc4f3c3fcbeb56d37"
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
  
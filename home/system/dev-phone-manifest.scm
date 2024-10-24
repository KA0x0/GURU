;; This "manifest" file can be passed to 'guix package -m' to reproduce
;; the content of your profile.  This is "symbolic": it only specifies
;; package names.  To reproduce the exact same profile, you also need to
;; capture the channels being used, as returned by "guix describe".
;; See the "Replicating Guix" section in the manual.

;;; Code:

(specifications->manifest
  (list "adb"
        "ascii"
        "binutils"
        "buildah"
        "curl-ssh"
        "diffoscope"
        "my-emacs-next"
        "emacs-bluetooth"
        "emacs-dape"
        "emacs-ement"
        "emacs-emms"
        "emacs-forge"
        "emacs-hyperbole"
        "emacs-mentor"
        "emacs-modbus"
        "emacs-notmuch"
        "emacs-consult-not-much"
        "emacs-plz"
        "emacs-x509-mode"
        "emacs-yasnippet"
        "ffmpeg"
        "file"
        "flashrom"
        "fontconfig"
        "font-iosevka-term-slab"
        "freerdp"
        "gcc"
        "gdb"
        "gnuradio"
        "go"
        "graphviz"
        "guile-aws"
        "imagemagick"
        "iw"
        "libfaketime"
        "librewolf"
        "mariadb"
        "monero"
        "mpd"
        "mpv"
        "mysql"
        "openssh"
        "openvpn"
        "patch"
        "patchelf"
        "podman"
        "poke"
        "emacs-poke-mode"
        "pwntools"
        "python-ipython"
        "python-scapy"
        "qemu"
        "rust"
        "sigrock-cli"
        "skopeo"
        "socat"
        "sshfs"
        "tesseract-ocr"
        "tiled"
        "umoci"
        "upx"
        "valgrind"
        "wine64"
        "wireguard-tools"
        "wireshark"
        "xclip"
        "emacs-xclip"
        "yt-dlp"))

;;; dev-phone-manifest.scm ends here

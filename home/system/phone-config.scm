;;; Code:

(use-modules (gnu) (guix) (guix packages) (srfi srfi-1))
(use-package-modules bootloaders certs fonts package-management shepherd ssh)
(use-service-modules desktop mcron networking ssh virtualization xorg)

(operating-system
  (host-name "phone")
  (users (cons* (user-account
                  (name "mobile")
                  (comment "Mobile")
                  (group "users")
                  (shell (file-append bash "/bin/bash"))
                  (home-directory "/home/mobile")
                  (supplementary-groups
                    '("adbusers" "audio" "incus" "kvm" "netdev" "video" "wheel")))
                %base-user-accounts))
  (bootloader
    (bootloader-configuration
      (bootloader grub-efi-bootloader)
      (target "/boot/efi")
      (keyboard-layout keyboard-layout)))
  (mapped-devices
    (list (mapped-device
            (source
              (uuid ""))
            (target "cryptroot")
            (type luks-device-mapping))))
  (file-systems
    (cons* (file-system
             (mount-point "/")
             (device "/dev/mapper/cryptroot")
             (type "bcachefs")
             (dependencies mapped-devices))
           (file-system
             (mount-point "/boot/efi")
             (device (uuid "" 'fat32))
             (type "vfat"))
           %base-file-systems))
  (packages
    (append
      (list
        bluez
        dbus
        emacs-with-native-comp-no-x
        emacs-exwm
        iwd
        picom
        pipewire
        xorg-server-xwayland)
      %my-base-packages))
  (services
    (append
      (list 
        (service autofs-service-type
         (autofs-configuration
          (mounts
           (list
            (autofs-mount-configuration ;; mount -t fuse and autofs
              (target "/mnt/storage/kaox")
              (source ":sshfs\\#node.home.arpa\\:/mnt/storage/kaox"))))))
             (extra-special-file "/bin/sshfs"
                (file-append sshfs "/bin/sshfs"))
              (extra-special-file "/bin/ssh"
                (file-append openssh "/bin/ssh"))
        (service elogind-service-type)
        (service libvirt-service-type)
      %base-services
      %my-base-services))))

;;; phone-config.scm ends here

;;; GNU Guix --- Functional package management for GNU
;;;
;;; This file is NOT part of GNU Guix.
;;;
;;; This program is free software: you can redistribute it and/or modify
;;; it under the terms of the GNU General Public License as published by
;;; the Free Software Foundation, either version 3 of the License, or
;;; (at your option) any later version.
;;;
;;; This program is distributed in the hope that it will be useful,
;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU General Public License for more details.
;;;
;;; You should have received a copy of the GNU General Public License
;;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

(define-module (gnu system)
  #:use-module (gnu packages admin)
  #:use-module (gnu packages base)
  #:use-module (gnu packages bash)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages cross-base)
  #:use-module (gnu packages cryptsetup)
  #:use-module (gnu packages disk)
  #:use-module (gnu packages file-systems)
  #:use-module (gnu packages firmware)
  #:use-module (gnu packages gawk)
  #:use-module (gnu packages guile)
  #:use-module (gnu packages guile-xyz)
  #:use-module (gnu packages hurd)
  #:use-module (gnu packages less)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages nvi)
  #:use-module (gnu packages package-management)
  #:use-module (gnu packages pciutils)
  #:use-module (gnu packages texinfo)
  #:use-module (gnu packages text-editors)
  #:use-module (gnu packages wget)
  #:export (%bare-packages)
  #:export (%bare-settings))


(define-public %my-base-packages
  (map specification->package
  '("awscli"
    "aws-vault"
    "bash"
    "bash-completion"
    "emacs-bash-completion"
    "bzip2"
    "chrony"
    "coreutils"
    "curl"
    "diffutils"
    "emacs-next-gcc-no-x"
    "emacs-async"
    "emacs-consult"
    "emacs-consult-org-roam"
    "emacs-embark"
    "emacs-flycheck"
    "emacs-geiser"
    "emacs-geiser-guile"
    "emacs-guix"
    "emacs-magit"
    "emacs-meow"
    "emacs-orderless"
    "emacs-org"
    "emacs-org-roam"
    "emacs-paredit" 
    "emacs-tramp"
    "emacs-undo-tree"
    "emacs-which-key"
    "eshell-prompt-extras"
    "eudev"
    "findutils"
    "gawk"
    "git"
    "grep"
    "guile"
    "guile-colorized"
    "guile-readline"
    "gzip"
    "inotify-tools"
    "kmod"
    "less"
    "lzip"
    "man-db"
    "nss-certs"
    "openssh-sans-x"
    "password-store"
    "emacs-password-store"
    "emacs-password-store-otp"
    "pass-git-helper"
    "pass-otp"
    "pass-rotate"
    "pass-tomb"
    "patch"
    "pinentry-tty"
    "emacs-pinentry"
    "procps"
    "psmisc"
    "python"
    "rsync"
    "sed"
    "shadow"
    "sudo"
    "tar"
    "util-linux-with-udev"
    "wget"
    "which"
    "xonsh"
    "xz")))

(define-public %bare-settings
  (operating-system
   (locale "en_US.utf8")
   (keyboard-layout (keyboard-layout "us" "ru")))
  
;;; system.scm ends here
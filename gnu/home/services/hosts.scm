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
;;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Code:

(simple-service 'my-dns
                    hosts-service-type
                    (list (host "10.0.0.1"
                                "network"
                                "network.home"
                                "network.home.arpa")
                          (host "10.0.0.50"
                                "node"
                                "node.home"
                                "node.home.arpa")))

(simple-service 'my-redirect
                    hosts-service-type
                    (list (host ""
                                "instagram.com")
                          (host ""
                                "twitter.com")
                          (hosts ""
                                "x.com")
                          (host ""
                                "youtube.com")))

(simple-service 'my-adblock
                    hosts-service-type
                    (list (host "0.0.0.0"
                                "")))

;;; hosts.scm ends here
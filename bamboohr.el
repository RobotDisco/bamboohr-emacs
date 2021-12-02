;;; bamboohr.el --- Interact with the BambooHR.com -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2021 Gaelan D'costa
;;
;; Author: Gaelan D'costa <gdcosta@gmail.com>
;; Created: 2021-01-01
;;
;; Keywords: BambooHR
;; URL: https://github.com/RobotDisco/bamboohr-emacs
;;
;; This file is not part of GNU Emacs.
;;
;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;;; Change Log:

;;; Code:

(defgroup bamboohr nil
  "Interact with BambooHR.com."
  :prefix "bamboohr-"
  :group 'applications)

(defcustom bamboohr-api-key ""
  "API Key for interacting with BambooHR's API."
  :type 'string
  :group 'bamboohr)

(defcustom bamboohr-subdomain ""
  "BambooHR account name.

usually found when you access https://<subdomain>.bamboohr.com."
  :type 'string
  :group 'bamboohr)

(defconst bamboohr-url-base
  "https://api.bamboohr.com/api/gateway.php"
  "Base URL for BambooHR API.")

(defconst bamboo-hr-api-version
  "v1"
  "BambooHR API version.")

(defconst bamboohr-whos-out-path
  "time_off/whos_out/"
  "Path for Who's Out list.")

(defun bamboohr-request-url (path)
  "Generate BambooHR URL path using PATH."
  (format "%s/%s/%s/%s"
	  bamboohr-url-base
	  bamboohr-subdomain
	  bamboo-hr-api-version
	  path))

(provide 'bamboohr)
;;; bamboohr.el ends here





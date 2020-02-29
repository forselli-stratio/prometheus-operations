# Changelog

## 0.9.0 (February 04, 2020)

* [EOS-3360] Enable Prometheus admin API to create backups
* [EOS-2593] Bump Prometheus to 2.15.2 and Alertmanager to 0.20.0
* [EOS-3125] Activate Anchore tests

## 0.8.0-aa8a44f (Built: October 22, 2019 | Released: November 28, 2019)

* Update kms_utils to fix mktemp in alpine
* [EOS-3031] Bump kms_utils to 0.4.6
* [EOS-2963] Make prometheus config fully configurable
* [EOS-2955] Make alarms structure in etcd consistent with other config
* [EOS-2923] Improve logs and error control in monitoring components
* [EOS-2892] Store core/default exporters scrape config in etcd
* [EOS-2883] Use consul_sd instead of dns_sd scrapes
* [EOS-2873] Include calico metrics in prometheus
* Use IPs for instance label in all scrapes for consistency
* [EOS-2864] Include etcd metrics in prometheus
* [EOS-2861] Include Vault metrics in prometheus
* [EOS-2593] Include go in Make scripts and replace static scripts with dns scrape jobs 
* [EOS-2728] Make prometheus scraping configuration extensible
* [EOS-1125] Make Prometheus accessible as a service
* Update Prometheus and Alertmanager versions
* Add support for external services
* [EOS-2730] Expose alert_manager and prometheus through nginx

## 0.7.0-d623ce0 (Built: May 28, 2019 | Released: July 11, 2019)

* [EOS-2379] Add port name "monitor" to list of known service discovery ports
* [EOS-1893] Adapt confd templates to etcd securization
* Update Prometheus to version 2.7.1

## 0.6.0-05b9b69 (Built: August 14, 2018 | Released: March 21, 2019)

* [EOS-1308] Prometheus service discovery
* [EOS-1308] Fix bug when parsing JSON from mesos API
* [EOS-1235] Avoid DCOS metrics scrap if not needed (cosmetic)

## 0.5.0-76ed4f7 (Built: June 04, 2018 | Released: June 04, 2018)

* [EOS-1235] DCOS prometheus metrics in addition to nodeexporter & cadvisor
* Remove unused VOLUME directive in Dockerfile

## 0.4.0-02256ac (Built: May 22, 2018 | Released: May 22, 2018)

* [EOS-1213] Adapt repository to new versioning schema 

## 0.3.0 (May 21, 2018)

* [EOS-1188] Update kms-utils to 0.4.1 version
* [EOS-1188] Centralized configuration for alarms
* [EOS-1188] Small refactor in Dockerfile, json and startup script

## 0.2.0 (February 20, 2018)

* [EOS-845] Update prometheus docker base image to 0.2.1 version
* Change deploying path

## 0.1.3 (October 27, 2017)

* [EOS-800] Fix Prometheus run flags 

## 0.1.2 (October 25, 2017)

* Re-tagging docke rimage prior to tar.gz

## 0.1.1 (October 25, 2017)

* Change deploying path

## 0.1.0 (October 25, 2017)

* DCOS Prometheus initial version

#!/usr/bin/bash
ovn-nbctl lsp-del router-port1
sleep 1
ovn-nbctl lsp-del router-port2
sleep 1
ovn-nbctl lsp-del router-port3
sleep 1
ovn-nbctl lrp-del switch-port1
sleep 1
ovn-nbctl lrp-del switch-port2
sleep 1
ovn-nbctl lrp-del switch-port3
sleep 1
ovn-nbctl ls-del join-switch
sleep 1
ovn-nbctl lr-del gateway-router
sleep 1
ovn-nbctl lr-del internal-router
sleep 1
ovn-nbctl show

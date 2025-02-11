---
title: Сравнение с другими решениями
permalink: resources/comparison.html
---

## Гитерминизм vs GitOps

GitOps детерминирует только развертывание заранее подготовленных артефактов приложения, а гитерминизм может детерминировать весь CI/CD-процесс, включая сборку, тестирование, дистрибуцию и развертывание.

GitOps требует наличия CD-решения, которое непрерывно синхронизирует желаемое состояние с действительным, а гитерминизм не накладывает никаких ограничений, и пользователь сам решает, каким способом осуществлять эту синхронизацию.

GitOps требует разделять разработку и эксплуатацию, а гитерминизм допускает как их разделение, так и их объединение в единый процесс для реализации методологии DevOps.

## werf vs Helm

Helm используется только для развертывания и дистрибуции чартов, а werf ещё и для разработки, сборки, тестирования, дистрибуции образов и бандлов, а также очистки container registry. 

В werf встроен Helm с дополнительными возможностями: продвинутым отслеживанием, порядком развертывания не только для хуков, но и для обычных ресурсов, и другими.

## werf vs ArgoCD

ArgoCD используется только для развертывания, а werf ещё и для разработки, сборки, тестирования, дистрибуции, очистки container registry. 

Развертывание в werf происходит по push-модели с Helm, но доступна и интеграция с ArgoCD для реализации GitOps.

## werf vs Skaffold/DevSpace

Skaffold и DevSpace по сути являются обёрткой популярных сборщиков и инструментов развёртывания с дополнительной функциональностью, ориентированной на разработку.

werf в свою очередь концентрируется на CI/CD и более тесной интеграции единственного способа сборки и развёртывания – пользователям предлагаются решения их прикладных задач, а не инструменты (они в контексте werf вторичны).

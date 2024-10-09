# Changelog

## [4.0.0](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/compare/v3.6.0...v4.0.0) (2024-10-09)


### ⚠ BREAKING CHANGES

* point the Argo CD provider to the new repository ([#39](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/issues/39))

### Features

* point the Argo CD provider to the new repository ([#39](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/issues/39)) ([8b9453e](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/commit/8b9453ed6f612d8374a091e3dcac02047e8843d2))

## [3.6.0](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/compare/v3.5.0...v3.6.0) (2024-08-29)


### Features

* **chart:** minor update of dependencies on ebs-csi-driver chart ([#36](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/issues/36)) ([585fd86](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/commit/585fd86321869182e52fa6f4bde01c25f04ec248))

## [3.5.0](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/compare/v3.4.1...v3.5.0) (2024-08-20)


### Features

* **chart:** minor update of dependencies on ebs-csi-driver chart ([#33](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/issues/33)) ([d9d113e](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/commit/d9d113e141a97f1ab4867842662d24ef377c3130))

## [3.4.1](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/compare/v3.4.0...v3.4.1) (2024-08-14)


### Bug Fixes

* re-set the EBS storage class as the default ([0424d2c](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/commit/0424d2c5337cc3e7ad8b3785f16e2a4b6c1f0723))

## [3.4.0](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/compare/v3.3.0...v3.4.0) (2024-07-10)


### Features

* **chart:** minor update of dependencies on ebs-csi-driver chart ([#30](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/issues/30)) ([c64bda9](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/commit/c64bda99f6c5e9d4c2ec611bf4a81ee33daadf82))

## [3.3.0](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/compare/v3.2.0...v3.3.0) (2024-06-19)


### Features

* **chart:** minor update of dependencies on ebs-csi-driver chart ([#26](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/issues/26)) ([bcaa648](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/commit/bcaa648ae05e25875235fbbbfab4499bbe79499a))

## [3.2.0](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/compare/v3.1.0...v3.2.0) (2024-04-16)


### Features

* add variable to set resources with default values ([#27](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/issues/27)) ([9c10157](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/commit/9c101571ecd8b7c513f78b0d0717e359ca94d22f))

## [3.1.0](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/compare/v3.0.0...v3.1.0) (2024-02-23)


### Features

* **chart:** minor update of dependencies on ebs-csi-driver chart ([#22](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/issues/22)) ([746fce9](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/commit/746fce9d7b447ecb80114b1da8684ba904fccd29))

## [3.0.0](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/compare/v2.4.0...v3.0.0) (2024-01-19)


### ⚠ BREAKING CHANGES

* remove the ArgoCD namespace variable
* hardcode the release name to remove the destination cluster

### Bug Fixes

* hardcode the release name to remove the destination cluster ([5a01293](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/commit/5a012935d6928b8b36ba9c9d64b610431fbad611))
* remove the ArgoCD namespace variable ([b881f16](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/commit/b881f1688c95beec523fcbeaac71dded72952a0c))

## [2.4.0](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/compare/v2.3.0...v2.4.0) (2023-11-02)


### Features

* **chart:** minor update of dependencies on ebs-csi-driver chart ([#19](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/issues/19)) ([bc14dfa](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/commit/bc14dfa2afeae8a2cc444b8810742cc5a7b56264))

## [2.3.0](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/compare/v2.2.0...v2.3.0) (2023-10-19)


### Features

* add standard variables and variable to add labels to Argo CD app ([02aff70](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/commit/02aff703eb9134eb7584e5a43fedb0e240710ac0))
* add variables to set AppProject and destination cluster ([143598b](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/commit/143598bae920dea3e0494fcba91dc7e2071753e8))

## [2.2.0](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/compare/v2.1.0...v2.2.0) (2023-08-18)


### Features

* **chart:** minor update of dependencies on ebs-csi-driver chart ([#16](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/issues/16)) ([6e8e29e](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/commit/6e8e29eae297d3644d6cf7655a1fffc40ee440eb))

## [2.1.0](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/compare/v2.0.1...v2.1.0) (2023-08-10)


### Features

* **chart:** minor update of dependencies on ebs-csi-driver chart ([#14](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/issues/14)) ([e692e52](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/commit/e692e52b101966586ae5b3f205b284acd9712ad6))

## [2.0.1](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/compare/v2.0.0...v2.0.1) (2023-08-09)


### Bug Fixes

* readd support to deactivate auto-sync which was broken by [#10](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/issues/10) ([10e7fe4](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/commit/10e7fe43b04b8c40e28d1f10171fcad63a9a6e05))

## [2.0.0](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/compare/v1.0.2...v2.0.0) (2023-07-11)


### ⚠ BREAKING CHANGES

* add support to oboukili/argocd >= v5 ([#10](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/issues/10))

### Features

* add support to oboukili/argocd &gt;= v5 ([#10](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/issues/10)) ([b4ccf83](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/commit/b4ccf83f598d44b3bb959b122ea622e031fa5e7a))

## [1.0.2](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/compare/v1.0.1...v1.0.2) (2023-05-30)


### Bug Fixes

* add missing provider ([6164191](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/commit/616419163e7582eb82ff9c5561d98e86ec10221e))

## [1.0.1](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/compare/v1.0.0...v1.0.1) (2023-03-17)


### Documentation

* add Antora Docs folder structure ([#4](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/issues/4)) ([b2e3a07](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/commit/b2e3a0768563bfcc0e86abbd0dde7693760150a9))

## 1.0.0 (2023-03-08)


### Features

* first commit ([43e3668](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/commit/43e3668e02edf42f6f5e3ae3a0ae60bca9ec4902))
* first implementation of the EBS CSI driver ([#2](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/issues/2)) ([2cc1ec6](https://github.com/camptocamp/devops-stack-module-ebs-csi-driver/commit/2cc1ec693c6069db826c26adb22b515f8c130586))

;;; sigma/fanyi/config.el -*- lexical-binding: t; -*-


(use-package! fanyi
  :ensure t
  :custom
  (fanyi-providers '(;; 海词
                     fanyi-haici-provider
                     ;; 有道同义词词典
                     fanyi-youdao-thesaurus-provider
                     ;; Etymonline
                     fanyi-etymon-provider
                     ;; Longman
                     fanyi-longman-provider))
  :config
  (setq fanyi-auto-select nil)
  (map! :desc "dict " :n "SPC d f" #'fanyi-dwim)
  )

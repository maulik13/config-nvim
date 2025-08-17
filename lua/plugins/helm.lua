return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "b0o/SchemaStore.nvim",
    version = false, -- last release is way too old
  },
  opts = {
    servers = {
      yamlls = {
        -- lazy-load schemastore when needed
        on_new_config = function(new_config)
          new_config.settings.yaml.schemas = new_config.settings.yaml.schemas or {}
          vim.list_extend(new_config.settings.yaml.schemas, require("schemastore").yaml.schemas())
        end,
        settings = {
          redhat = { telemetry = { enabled = false } },
          yaml = {
            keyOrdering = false,
            format = {
              enable = true,
            },
            validate = true,
            hover = true,
            completion = true,
            schemaStore = {
              -- Must disable built-in schemaStore support to use
              -- schemas from SchemaStore.nvim plugin
              enable = false,
              -- Avoid TypeError: Cannot read properties of undefined (reading 'length')
              url = "",
            },
            -- schemas = {
            --   ["http://json.schemastore.org/github-workflow"] = ".github/workflows/*",
            --   ["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
            --   ["http://json.schemastore.org/ansible-stable-2.9"] = "roles/tasks/*.{yml,yaml}",
            --   ["http://json.schemastore.org/prettierrc"] = ".prettierrc.{yml,yaml}",
            --   ["http://json.schemastore.org/kustomization"] = "kustomization.{yml,yaml}",
            --   ["http://json.schemastore.org/ansible-playbook"] = "*play*.{yml,yaml}",
            --   ["http://json.schemastore.org/chart"] = "Chart.{yml,yaml}",
            --   ["https://json.schemastore.org/dependabot-v2"] = ".github/dependabot.{yml,yaml}",
            --   ["https://json.schemastore.org/gitlab-ci"] = "*gitlab-ci*.{yml,yaml}",
            --   ["https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/schemas/v3.1/schema.json"] = "*api*.{yml,yaml}",
            --   ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "*docker-compose*.{yml,yaml}",
            --   ["https://raw.githubusercontent.com/argoproj/argo-workflows/master/api/jsonschema/schema.json"] = "*flow*.{yml,yaml}",
            --   ["https://raw.githubusercontent.com/datreeio/CRDs-catalog/refs/heads/main/argoproj.io/application_v1alpha1.json"] = "*.yaml",
            --   kubernetes = "templates/**",
            -- },
          },
        },
      },
    },
  },
}

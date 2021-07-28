# Set TFC Workspace Variables

A GitHub Action to create or update a set of Terraform Cloud workspace variables.

## Inputs

### `tfcToken`

**required** A Terraform Cloud API token with access to manage workspaces.

### `orgName`

**required** The name of the Terraform Cloud organization in which to create the workspace.

### `workspaceName`

**required** The name of the Terraform Cloud workspace.

### `workspaceVariables`

**required** A JSON array of variable definitions to create or update.

## Outputs

This Action has no outputs.

## Usage

Example:

```yaml
uses: cbsinteractive/set-tfc-workspace-variables@v1
with:
  tfcToken: ${{ secrets.tfc_token }}
  orgName: ${{ secrets.tfc_organization }}
  workspaceName: ${{ needs.preflight.outputs.workspace-name }}
  workspaceVariables: >
    [
      {
        "key": "some_env_var",
        "category": "env",
        "value": "some value"
      },
      {
        "key": "some_sensitive_env_var",
        "category": "env",
        "sensitive": true,
        "value": "${{ secrets.sensitive_value }}"
      },
      {
        "key": "some_tf_var",
        "category": "terraform",
        "value": "some other value"
      },
      {
        "key": "some_sensitive_tf_var",
        "category": "terraform",
        "sensitive": true,
        "value": "${{ secrets.other_sensitive_value }}"
      }
    ]
```

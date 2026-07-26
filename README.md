# kata-azure-cli

This project is a small Azure CLI kata for practicing basic resource group lifecycle management from the command line.

It is trying to achieve a simple, repeatable workflow for:

- creating and tagging Azure resource groups
- listing matching resource groups in a readable format
- tearing down those groups once a kata session is complete

The shell scripts are intentionally lightweight, but they now validate required environment variables before calling the Azure CLI so they fail fast when a value is missing.

1. **Creating** an Azure resource group
2. **Tagging** it with ownership and cleanup metadata
3. **Listing** matching resource groups in a readable format
4. **Deleting** a resource group when it is no longer needed

## What is in the project

The repository currently contains three shell scripts:

| Script | Purpose |
| --- | --- |
| `0.create.resource-group.sh` | Creates a resource group and applies tags |
| `0.list.resource-group.sh` | Lists resource groups whose names start with `RESOURCE_GROUP_NAME` |
| `0.delete.resource-group.sh` | Deletes a resource group |

## Why this exists

This looks intended as a hands-on exercise for learning:

- how to use the `az` CLI
- how to parameterize shell scripts with environment variables
- how to apply governance-oriented tags such as owner and deletion date
- how to automate basic Azure cleanup workflows

## Required environment variables

The scripts expect values to be provided through environment variables:

| Variable | Meaning |
| --- | --- |
| `RESOURCE_GROUP_NAME` | Name of the Azure resource group |
| `LOCATION` | Azure region, used during creation |
| `OWNER_EMAIL` | Tag for identifying the owner |
| `OWNER_PLATFORM` | Tag for identifying the owning platform/team |
| `DATE_DELETE_AFTER` | Tag for planned cleanup date |

## Typical usage

```sh
export RESOURCE_GROUP_NAME=my-kata-rg
export LOCATION=australiaeast
export OWNER_EMAIL=me@example.com
export OWNER_PLATFORM=learning
export DATE_DELETE_AFTER=2026-08-01
```

Create:

```sh
./0.create.resource-group.sh
```

List:

```sh
./0.list.resource-group.sh
```

Delete:

```sh
./0.delete.resource-group.sh
```

## Prerequisites

- Azure CLI installed
- An authenticated Azure session (`az login`)
- Permission to create and delete resource groups in the target subscription

## Summary

In short, this repository appears to be a minimal practice project for learning how to manage Azure resource groups with Azure CLI commands and lightweight shell automation.

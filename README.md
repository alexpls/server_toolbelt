# server_toolbelt
A collection of scripts I use when setting up servers.

### scripts/disk\_usage\_alert.sh

Emails the server admin when disk usage is above 80% on the root file system. Should be set up to run as a cron job.

**Note: Requires the SERVER_ADMIN_EMAIL environment variable to be set**

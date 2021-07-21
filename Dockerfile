# syntax=docker/dockerfile:1
FROM frostedcarbon/manage-tfc-workspace-image:release-1.1.0

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

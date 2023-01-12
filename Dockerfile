FROM dshearer/jobber

USER root

# Install dependencies
RUN apk add --no-cache curl perl-utils sudo iputils openssh

# Configure sudo
RUN echo '%wheel ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/wheel \
    && adduser jobberuser wheel

# Switch back to jobbuser user
USER jobberuser

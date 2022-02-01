FROM rockylinux:8.5

RUN yum -y install libguestfs-tools && yum -y update && yum clean all

ENV LIBGUESTFS_BACKEND direct

ENTRYPOINT ["/usr/bin/guestfish"]

CMD ["-h"]

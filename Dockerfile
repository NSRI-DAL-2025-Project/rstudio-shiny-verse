FROM lcbs2/rstudio:latest

COPY scripts/install_tidyverse.sh /rocker_scripts/install_tidyverse.sh
RUN /rocker_scripts/install_tidyverse.sh

COPY scripts/install_shiny_server.sh /rocker_scripts/install_shiny_server.sh
RUN /rocker_scripts/install_shiny_server.sh

EXPOSE 3838
CMD ["/init"]

COPY scripts /rocker_scripts

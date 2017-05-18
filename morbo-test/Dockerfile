# docket build -t morbo-test .

# run it with 
# docker run -t -P morbo-test
# and check via docker ps on what port server is present

FROM perl
COPY test.pl ./
RUN cpanm Mojolicious
EXPOSE 3000
CMD ["morbo", "test.pl"]


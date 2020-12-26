git clone https://github.com/phenomrascalov/katacoda-scenarios.git
cd katacoda-scenarios
chmod +x check.sh && ./check.sh
docker run -it --entrypoint bash -v /download:/download phenomrascalov/centos7.7

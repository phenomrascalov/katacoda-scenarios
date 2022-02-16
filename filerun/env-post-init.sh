git clone https://github.com/phenomrascalov/katacoda-scenarios.git
cd katacoda-scenarios && chmod +x filerun.sh 
./filerun.sh
docker-compose up -d
cd katacoda-scenarios
chmod +x check.sh && ./check.sh 
chmod +x jirafeau.sh && ./jirafeau.sh

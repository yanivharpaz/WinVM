choco install -y anaconda3

choco install -y vcredist-all

choco install -y docker-desktop

choco install -y visualstudio2019buildtools --package-parameters "--add Microsoft.VisualStudio.Workload.VCTools --includeRecommended --includeOptional --passive --locale en-US"

choco install -y ssms

start chrome aka.ms/buildtools

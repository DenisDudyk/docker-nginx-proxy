### Docker nginx proxy: quick start

1 sudo chmod +x setup.sh 

2 cd ~ && vi .bashrc

2.1 alias dp='#FULL_PATH#setup.sh'

3 source ~/.bashrc && exec bash

4 Now we can run the dp command
```
user:~$ dp
cfbfcd1594c0
Starting docker-nginx-proxy ... done
```

```Notes: #FULL_PATH# must be replaced with real path to the "setup.sh" script```
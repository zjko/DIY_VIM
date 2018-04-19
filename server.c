#include <stdio.h> 
#include <stdlib.h> 
#include <errno.h> 
#include <string.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <sys/socket.h> 
#include <sys/wait.h> 
#include <unistd.h> 
#include <arpa/inet.h> 

#define SERVER_PORT 22468

#define MAXDATASIZE 50  



#define SERVER_IP "Your IP" 

int main() { 
		int server_sockfd;
		int new_sockfd;
		struct sockaddr_in server_addr;
		struct sockaddr_in client_addr;
		int client_addr_len;
		char buf[MAXDATASIZE];
		int numbytes;
		server_sockfd = socket(AF_INET, SOCK_STREAM, 0);
		server_addr.sin_family = AF_INET; 
    server_addr.sin_port = htons(SERVER_PORT); 
    server_addr.sin_addr.s_addr = inet_addr(SERVER_IP);
		bind();
		listen(,5) ;
		while(1){
			client_addr_len = sizeof(struct sockaddr_in);
			new_sockfd = accept();
			numbytes = recv();
			
			if(numbytes){
				
			}
			sleep(3) ;
			send();
			close(new_sockfd);
			if('8'==getchar())break;}
			close(server_sockfd);
			return 0;
			
			
			
		}
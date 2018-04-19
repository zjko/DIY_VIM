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
		int sockfd;
		
		struct sockaddr_in address_addr;

		char buf[MAXDATASIZE];
		int numbytes;
		
		sockfd = socket(AF_INET, SOCK_STREAM, 0);
		address_addr.sin_family = AF_INET; 
    address_addr.sin_port = htons(SERVER_PORT); 
    address_addr.sin_addr.s_addr = inet_addr(SERVER_IP);
		result = connect();
		send();
		sleep(3);
		numbytes = recv();
		
		if(numbytes){
			
		}
		
		close(sockfd);
		return 0;
	}
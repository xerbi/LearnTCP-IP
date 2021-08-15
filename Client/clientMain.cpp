#include "clientMain.h"

//create simple TCP-IP client
/*
    1)create socket
    2)connect (used struct for setting network: sockaddr_in for TCP)
    3)function recv and send!
*/
int main(int argc, char **argv)
{
    std::cout << "This is client! \n";

    const short size_buf = 100;
    const short port = 5150;
    const char domain[] = "127.0.0.1";

    char buffer[size_buf];
    strcpy(buffer, argv[1]); //copy text from argv

    //extern int socket (int __domain, int __type, int __protocol) __THROW;
    int socket_c = socket(AF_INET, SOCK_STREAM, 0); 
    if(socket_c < 0)
    {
        /* Print a message describing the meaning of the value of errno.
        This function is a possible cancellation point and therefore not
        marked with __THROW.  */
        //extern void perror (const char *__s);
        perror("Error create socket!");
        exit(10);
    }

    struct sockaddr_in peer;
    peer.sin_family = AF_INET;
    peer.sin_port = htons(port);
    peer.sin_addr.s_addr = inet_addr(domain);

    //extern int connect (int __fd, __CONST_SOCKADDR_ARG __addr, socklen_t __len);
    int connect_c = connect(socket_c, (const sockaddr *)&peer, sizeof(peer));
    if(connect_c < 0)
    {
        perror("Error connect!");
        exit(11);
    }

    //extern ssize_t send (int __fd, const void *__buf, size_t __n, int __flags);
    int se = send(socket_c, buffer, sizeof(buffer), 0);
    if(se < 0)
    {
        perror("Error send messege!");
        exit(12);
    }

    //clear buffer
    memset(buffer, 0, size_buf);

    //recv (int __fd, void *__buf, size_t __n, int __flags)
    int rc = recv(socket_c, buffer, sizeof(buffer), 0);
    if(rc < 0)
    {
        perror("Error receive!");
        exit(13);
    }

    else printf("%s \n", buffer);
    
    return 0;
}
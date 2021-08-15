#include "serverMain.h"

/*
    1)Create Socket
    2)bind a socket to an address
    3)listen sokcet
        switching to listening mode for socket
    4)accept (if succesfull, a new socket is created)
    5)receive and send message
*/
int main(int argc, char **argv)
{
    std::cout << "This is server! \n";

    const char domain[] = "172.0.0.1";
    const short port = 5150;
    const short size_buf = 100;
    char buf[size_buf];

    //1) create socket: int socket (int __domain, int __type, int __protocol)
    int socket_s = socket(AF_INET, SOCK_STREAM, 0);
    if(socket_s < 0)
    {
        perror("Error create socket!");
        exit(10);
    }

    struct sockaddr_in local;
    local.sin_family = AF_INET;
    local.sin_port = htons(port);
    local.sin_addr.s_addr = htonl(INADDR_ANY);

    //2) bind the socket to the address
    //(int bind (int __fd, __CONST_SOCKADDR_ARG __addr, socklen_t __len))
    int rc = bind(socket_s, (const sockaddr *)&local, sizeof(local));
    if(rc < 0)
    {
        perror("Error bind!");
        exit(11);
    }

    //3) listen socket
    //int listen (int __fd, int __n) socket and number of pending connections
    rc = listen(socket_s, 5);
    if(rc < 0)
    {
        perror("Error listen!");
        exit(12);
    }

    //4) eccept
    /*
    int accept (int __fd, __SOCKADDR_ARG __addr,
                            socklen_t *__restrict __addr_len);
    */
    int socket_s1 = accept(socket_s, NULL, NULL);
    if(socket_s1 < 0)
    {
        perror("Error create new socket!");
        exit(10);
    }

    //recv(int __fd, void *__buf, size_t __n, int __flags)
    rc = recv(socket_s1, buf, size_buf, 0);
    if(rc < 0)
    {
        perror("Error recv");
        exit(13);
    }

    printf("%s \n", buf);
    
    //clear buffer and input message
    memset(buf, 0, size_buf);
    std::string messege;
    std::cout << "Input message!" << std::endl;
    std::cin >> messege;
    strcpy(buf, messege.c_str());
    std::cout << std::endl;
    std::cout << buf << std::endl;

    //ssize_t send (int __fd, const void *__buf, size_t __n, int __flags)
    rc = send(socket_s1, buf, sizeof(buf), 0);
    if(rc < 0)
    {
        perror("Error send message!");
        exit(14);
    }

    return 0;
}
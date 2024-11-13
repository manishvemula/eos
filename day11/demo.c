#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <sys/wait.h>
#include <errno.h>

// Signal handler for SIGINT
void handle_sigint(int sig) {
    printf("\nCaught SIGINT (signal %d). Use 'exit' to quit the shell.\n", sig);
}

// Signal handler for SIGCHLD
void handle_sigchld(int sig) {
    int status;
    pid_t pid;

    // Wait for all dead child processes
    while ((pid = waitpid(-1, &status, WNOHANG)) > 0) {
        printf("Child %d exited with status %d\n", pid, WEXITSTATUS(status));
    }
}

int main() {
    // Set up SIGINT handler
    if (signal(SIGINT, handle_sigint) == SIG_ERR) {
        perror("signal");
        exit(EXIT_FAILURE);
    }

    // Set up SIGCHLD handler
    if (signal(SIGCHLD, handle_sigchld) == SIG_ERR) {
        perror("signal");
        exit(EXIT_FAILURE);
    }

    // Fork a child process as an example
    pid_t pid = fork();
    if (pid < 0) {
        perror("fork");
        exit(EXIT_FAILURE);
    } else if (pid == 0) {
        // Child process
        printf("Child process running...\n");
        sleep(2); // Simulate some work
        exit(42); // Exit with a status
    } else {
        // Parent process
        printf("Parent process running...\n");

        // Wait for child process, handling EINTR error
        while (1) {
            pid_t wpid = waitpid(pid, NULL, 0);
            if (wpid == -1) {
                if (errno == EINTR) {
                    continue; // Retry waitpid if interrupted by a signal
                } else {
                    perror("waitpid");
                    break;
                }
            } else {
                break; // Child process terminated
            }
        }
    }

    return 0;
}


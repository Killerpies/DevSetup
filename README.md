# My Dev Setup
This is a repeatable Ubuntu virtual machine dev environment. The script will install most of my standard dev services:

- **Services**
    - **Python 3**: A widely-used programming language known for its simplicity and versatility, commonly used for web development, scripting, data analysis, and more.

    - **CloudFormation Linter (cfn-lint)**: A tool for identifying and fixing common issues in AWS CloudFormation templates, ensuring they adhere to best practices and standards.

    - **Git**: A distributed version control system used for tracking changes in source code during software development, facilitating collaboration among developers and teams.

    - **Net-tools**: A suite of networking tools for Linux systems, providing commands like `netstat`, `ifconfig`, and `arp` for network diagnostics and management.

    - **Docker**: A platform for developing, shipping, and running applications inside containers, enabling lightweight and portable deployment of software across different environments.

    - **AWS CLI (Command Line Interface)**: A unified tool for managing AWS services from the command line, allowing users to automate tasks, configure resources, and interact with AWS services programmatically.

    - **Visual Studio Code**: A popular code editor developed by Microsoft, offering a wide range of features for coding, debugging, and version control, along with a rich ecosystem of extensions for customizing the editor to suit different development needs.

    - **Node.js**: A JavaScript runtime built on Chrome's V8 JavaScript engine, used for building scalable and high-performance network applications, particularly web servers and command-line tools.

    - **NPM (Node Package Manager)**: The package manager for Node.js, allowing users to install, manage, and share JavaScript packages and dependencies for their Node.js projects.


- **VS Code (With extensions)**
    - **GitLens** (`eamodio.gitlens`): Enhances Git integration with features like blame annotations, code lens, and commit searching, making it easier to navigate and understand your codebase's history.

    - **CloudFormation Linter** (`kddejong.vscode-cfn-lint`): Provides linting support for AWS CloudFormation templates, helping you catch errors and ensure best practices are followed while working with infrastructure as code.

    - **Remote - Containers** (`ms-vscode-remote.remote-containers`): Enables development inside Docker containers, providing consistent development environments across different machines and making it easy to manage dependencies.

    - **Sort Lines** (`Tyriar.sort-lines`): Adds the ability to sort lines of text within your editor, useful for organizing lists, imports, or any other content that needs to be ordered.

    - **Python** (`ms-python.python`): Offers rich Python language support with features like syntax highlighting, code completion, and debugging capabilities, enhancing your Python development experience.

    - **Pylance** (`ms-python.vscode-pylance`): Provides advanced Python language support powered by the Pylance language server, offering features like type checking, auto-imports, and intelligent code suggestions.

    - **Prettier - Code Formatter** (`esbenp.prettier-vscode`): Integrates the Prettier code formatter into VS Code, allowing you to automatically format your code according to predefined rules, ensuring consistent code style across your projects.

    - **Docker** (`ms-azuretools.vscode-docker`): Offers Dockerfile and docker-compose.yml language support, Docker command palette integration, and Docker debugging capabilities, streamlining Docker-based development workflows.

    - **Python Debug** (`ms-python.debugpy`): Provides debugging support for Python code, allowing you to set breakpoints, inspect variables, and step through your code for troubleshooting purposes.

    - **YAML Support by Red Hat** (`redhat.vscode-yaml`): Enhances YAML editing with features like syntax highlighting, validation, and auto-completion, improving your experience when working with YAML configuration files.


## How to Setup

### Prerequisites
Install these in their default locations:
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads) - C:\Program Files\Oracle\VirtualBox
- [Vagrant](https://developer.hashicorp.com/vagrant/install) - C:\Program Files\Vagrant\bin\vagrant.exe

### Clone or Download the Repo
This should be what you have:
```
DevSetup/
│
├── Provisioning_Files/
│ ├── postprovision.sh
│ ├── Vagrantfile
│ ├── deletevm.bat
│ └── ubuntu_setup.sh
│
├── run.bat
├── install.bat
├── config.txt
└── README.md
```
### Adjust Your Config
- **RESOLUTION**: The screen resolution of the virtual machine. This setting determines the dimensions of the virtual display when the VM is running. Adjust this value to match your monitor's resolution or your preferred display settings.
  
- **CPU_CORES**: The number of CPU cores allocated to the virtual machine. Increasing this value can improve performance for CPU-intensive tasks but may also consume more system resources.

- **MEMORY**: The amount of memory (RAM) allocated to the virtual machine, in megabytes (MB). This setting determines the amount of memory available to the VM for running applications and processes. Adjust this value based on the requirements of your development environment and the available system resources.

- **VRAM**: The amount of video memory allocated to the virtual machine's graphics adapter, in megabytes (MB). This setting affects the performance and capabilities of the virtual display, such as resolution support and graphics rendering speed. The maximum limit for VRAM allocation in VirtualBox is typically 128 MB per virtual machine.

- **MONITOR_COUNT**: The number of virtual monitors attached to the virtual machine. Increase this value if you need multiple displays for your development workflow, such as for multitasking or working with multiple applications simultaneously.

- **GRAPHICS_CONTROLLER**: The type of graphics controller used by the virtual machine. This setting determines how the VM handles graphics rendering and display management. Options include "VBoxVGA", "VBoxSVGA", "VMSVGA", and others. Adjust this value based on compatibility and performance considerations for your specific use case.

### Run It
- Click `install.bat`
    - Do not touch anything. It will run for a while and then shut off.
- Run `run.bat`

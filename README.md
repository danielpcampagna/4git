# 4git
> Scripts that help Git repositories to compliance with GDPR by allowing forget user information.

The 4Git project aims at allowing organizations, CTO and developers repositories get compliance with
GDPR. The [article 17](https://gdpr-info.eu/art-17-gdpr/) ensures that the data subject must have
right to erase your data ("right to be forgotten"). The problem is that changing the Git history is
dangerous and usually not desirable. For that context, we propose 4Git, which pseudonymize the user
information in commits and keep safe Git history.

## Installation

OS X & Linux:

```sh
make
```

Windows:

Do not support this plataform.

## Usage example

After installation, you will see the explanation by typing `4git help`.

## Development setup

To contribute to the project, we offer some tools:

1. creating a new command:

You just need to add a file in `commands/` folder git pattern `4git-[newcommand]`.
For now, you will need type all commands in [shell script](https://en.wikipedia.org/wiki/Shell_script).

2. testing your commands:

You can use the `experiments/`, which correspond to possible contexts of Git repositories.

* To run a experiment, execute `make exp N="n"`, where `n` is a experiment id (i.e. "01", "02" etc).
* To watch the git files from your running experiment, execute `make watch-exp`.
* Your experiment is running in `running/`. There you can play as if was any other git repository.
* To clean your experiment, `make clean`.

Few free to add new experiments.

## Uninstallation

```sh
make uninstall
```

## Release History

* 0.0.1
    * Release unstabled version.

## Meta

Daniel Prett Campagna – [danielpcampagna](https://github.com/danielpcampagna) - danielcampagna@id.uff.br

Distributed under the MIT license. See [`LICENSE`](https://github.com/danielpcampagna/4git/blob/master/LICENSE)`` for more information.

## Contributing

1. Fork it (<https://github.com/danielpcampagna/4git/fork>)
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Commit your changes (`git commit -am 'Add some fooBar'`)
4. Push to the branch (`git push origin feature/fooBar`)
5. Create a new Pull Request

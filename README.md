[![Build](https://github.com/gentoo-ev/www.gentoo-ev.org/actions/workflows/build.yml/badge.svg)](https://github.com/gentoo-ev/www.gentoo-ev.org/actions/workflows/build.yml)


# How to build and test the website (on Gentoo)

```console
$ sudo emerge www-apps/nikola
$ cd src
$ make
$ nikola serve -b
```


# How to build and run the container

```console
# sudo emerge app-emulation/docker app-emulation/docker-compose
# sudo /etc/init.d/docker start
# docker network create --internal ssl-reverse-proxy
# docker-compose up -d --build
# chromium http://127.0.0.1:50180/ &
```

Enjoy :)


# License

- Main website content: CC-BY-SA-4.0
- Themes: MIT
- Build scripts, configuration, custom CSS: MIT
- Gentoo Newage font: GPL-2+-with-font-exception, CC-BY-SA-4.0 (dual-licensed)
- Other Fonts: OFL-1.1

Gentoo is a trademark of Gentoo Foundation, Inc., New Mexico, USA
(USPTO registration number 2966511) and of Förderverein Gentoo e.V.,
Mainz, Germany (DPMA registration number 30546062, EUIPO registration
number 005275714). The [Gentoo Name and Logo Usage Guidelines][1] apply.

[1]: <https://www.gentoo.org/inside-gentoo/foundation/name-logo-guidelines.html>

És vol intentar aprendre a usar la tecnologia de Jekyll, principalment és on farem experiments per a veure si tot funciona correctament.


First time:
```bash
gem install jekyll bundler
jekyll new <<new_path>>
docker cp <<ruby_container>>:/<<new_path>> .
```

```bash
docker run --rm -ti --entrypoint bash ruby:2.7
gem install bundler


bundle install

```

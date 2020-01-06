
## Install

```bash
yarn install
```


## Start

```bash
yarn start
```

## Build for prod

```bash
yarn build
```

## e2e tests

```bash
yarn e2e
```

## Usage in prod :

```
gunicorn autoapp:app -b 0.0.0.0:$PORT -w 3
```
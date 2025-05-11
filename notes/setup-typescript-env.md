# Shared Environment for multiple projects

## TypeScript environment

Initialize Node project in parent directory and install typescript + max/msp  
type definitions.

```bash
npm init -y
npm install --save-dev typescript @types/maxmsp
```

Create a `tsconfig.base.json` file.

```json
{
  "compilerOptions": {
    "allowUnreachableCode": true,
    "ignoreDeprecations": "5.0",
    "lib": ["es5"],
    "module": "CommonJS",
    "noImplicitAny": true,
    "sourceMap": false,
    "strict": false,
    "target": "es5"
  },
}
```

## Max project 

1. Create directory for the project. 

2. Create Max project inside this directory with same name.  
This is redundant as it creates another directory with same name but  
separates cleanly source files from output files.  
Also Max expects the .maxproj file name to be the same as the directory  
containing it

3. Disable 'Keep Project Folder Organized' option in Project Inspector.  
This avoid file auto-moving when working on the project.

4. Enable 'Always Localize Project Items'.  
Not necessary but good practice i think

## TypeScript in the project

Create `tsconfig.json` in project parent directory.

```json
{
  "extends": "../../tsconfig.base.json",
  "compilerOptions": {
    "rootDir": "./src",
    "outDir": "./project_path",
  },
  "include": ["src/**/*.ts"]
}
```

Change the path to `tsconfig.base.json` if necessary.
Change "outDir" to point to the project directory (where your max files will be).

Create `src` directory.

## Adding source files

With the setups above, the structure inside `src` will be mirrored in your max  
project so you can freely add ts files or directories and it will generate  
js files appropriately.

---

# Per project environment

First, setup a Max project as explained above.

## TypeScript environment

Initialize Node project in parent directory. **not in the max project directory !** 

```bash
npm init -y
npm install --save-dev typescript @types/maxmsp
```

Create `tsconfig.json` file.

```json
{
  "compileOnSave": true,
  "compilerOptions": {
    "allowUnreachableCode": true,
    "ignoreDeprecations": "5.0",
    "lib": ["es5"],
    "module": "CommonJS",
    "noImplicitAny": true,
    "rootDir": "./src",
    "outDir": "./project_directory",
    "sourceMap": false,
    "strict": false,
    "target": "es5"
  },
  "include": ["src/**/*.ts"]
}
```

Change "outDir" to point to the project directory (where your max files will be).

Create the `src` directory.

# Plain JavaScript

It's also possible to reference type definitions in javascript files.  
To do this we need the following in a `jsconfig.json` file :

```json
{
  "compilerOptions": {
    "checkJs": false,
    "typeRoots": ["./node_modules/@types"]
  },
  "include": ["**/*.js"]
}
```

Note that you can enable "checkJs" but find it too noisy.

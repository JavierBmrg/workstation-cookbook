# workstation

## Command list

### Local Mode

- Execute single recipe
```bash
chef-client -z recipes/<recipe-name>.rb
```

- Generate Cookbook
```bash
chef generate cookbook <name/of/the/new/cookbook/>
```

- Execute cookbook's recipe
```bash
chef-client -z --runlist "cookbook-name::recipe-name"
chef-client -z -r "[cookbook-name::recipe-name]"
```

- Execute multiple cookbook's recipes
```bash
chef-client -z -r "recipe[cookbook-name::recipe-name],recipe[cookbook-name::recipe-name]"
```
- Generate templates

```bash
chef generate template <cookbook-name> <name-of-template>
```

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

- Generate cookbook files

```bash
chef generate file <cookbook-name> <name-of-the-file>
```

### Knife Commands - Chef Server

- Upload Cookbook to Chef Server - Inside of the chef-repo directory (downloaded from chef-server)
```bash
knife cookbook upload <name-of-the-cookbook>
```

- List cookbooks inside Chef Server
``` bash
knife cookbook list
```

- Bootstrap server
```bash
knife bootstrap <DNS/IP of the server> --ssh-port 22 --ssh-user <user> --sudo --ssh-identity-file <private-key.pem> -N <name-of-the-node-(for-control-purposes)>
```

- Show nodes registered on Chef Server
```bash
knife node list
```

- Add Run List (recipes)
```bash
knife node run_list add <name-of-the-node-(for-control-purposes)> "recipes[<name-of-the-recipe>],recipe[<name-of-the-recipe>]"
```

- Show general information of Node - Information Provided by Chef Server
```bash
knife node show <name-of-the-node-(for-control-purposes)>
```

## RegEx and Exact Filters for Pi-hole
Customized RegEx and exact filters for use with Pi-hole v5+ (FTLDNS).

The purpose of this filter list is to compliment your existing blocklist's using powerful regular expressions that can cover a broad range of domains in one go.

All commands need to be entered via a Terminal after logging in and you need to have [**Python v3.6 or higher**] installed to execute the curl commands below. You can use PuTTY or your SSH client of choice if you're not on the pc running Pi-hole.

### Add/Remove `RegEx Blacklist`:
```
wget -c -O 'regex-blacklist.sh' 'https://raw.githubusercontent.com/slyfox1186/pihole.regex/main/scripts/shell-install/regex-blacklist.sh' && source 'regex-blacklist.sh'

```

### Add/Remove `Exact Blacklist`:
```
wget -c -O 'exact-blacklist.sh' 'https://raw.githubusercontent.com/slyfox1186/pihole.regex/main/scripts/shell-install/exact-blacklist.sh' && source 'exact-blacklist.sh'

```

### Add/Remove `RegEx Whitelist`:
```
wget -c -O 'regex-whitelist.sh' 'https://raw.githubusercontent.com/slyfox1186/pihole.regex/main/scripts/shell-install/regex-whitelist.sh' && source 'regex-whitelist.sh'

```

### Add/Remove `Exact Whitelist`:
```
wget -c -O 'exact-whitelist.sh' 'https://raw.githubusercontent.com/slyfox1186/pihole.regex/main/scripts/shell-install/exact-whitelist.sh' && source 'exact-whitelist.sh'

```

rserve Cookbook
===============
Installs and does some configuration for [R](https://www.r-project.org/) and [Rserve](https://rforge.net/Rserve/).  Package is downloaded from [rforge.net](http://rforge.net).  Rserve listens on port 6311 by default and accepts connections from all source IP addresses.  No implementation of the /etc/rserve.conf file has been added to this cookbook yet.  Feel free to add your own with your own cookbook or contribute to this repository.

[Documentation on rserve](https://rforge.net/Rserve/doc.html)

Requirements
------------

# Cookbooks
- yum-epel

# Operating Systems
- Centos 6 x86_64

Attributes
----------
TODO: List cookbook attributes here.

e.g.
#### rserve::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['rserve']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
#### rserve::default

Just include the `rserve` recipe in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[rserve]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: [Eric Greer](http://ericgreer.info)

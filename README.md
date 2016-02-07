rserve Cookbook
===============
Installs and does some configuration for [R](https://www.r-project.org/) and [Rserve](https://rforge.net/Rserve/).

Requirements
------------

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

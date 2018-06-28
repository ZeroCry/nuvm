# Configure images to download

To add new images, you need to edit the  nuvm/nuvm.d/.config/images.json, but remember, the ideia of this project is use pre-installed images, like the images used on openstack.

# images.json

It's very simple to add a new image, just add a new entry on this json file, the key will be the name that you'll use on nuvm, and the value is the url used to download the image.

## Example

```json
{
  "debian-9": "http://cdimage.debian.org/cdimage/openstack/current-9/debian-9-openstack-amd64.raw",
  "debian-8": "http://cdimage.debian.org/cdimage/openstack/current-8/debian-8-openstack-amd64.raw",
  "new-image": "http:///images.new-image.com/cdimage/openstack/current/new-image-openstack-amd64.raw"
} 
```

# Available Images

To check the available images, just run:

```bash
nuvm list images
``` 
output:
```bash
debian-9
debian-8
centos-7
fedora
ubuntu-xenial
```

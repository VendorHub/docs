# Paths in VendorHub

VendorHub represents much of the underlying data as a file system. The path schema follows the CloudPath definition, with code on [GitHub](https://github.com/rixian/drive-common).

## Cloud Path

`CloudPath` is an immutable class intended to represent a path and it's various components. You can find the specification here: [CloudPath Spec](https://github.com/rixian/drive-common/blob/master/docs/cloudpath_spec.md)

### Examples

To get an idea of what CloudPath is and how it looks here are some examples to start off:

* `C:/images/foo.png`
* `//shared/images/foo.png`
* `C:/images/foo.png:metadata`
* `/foo/../images/foo.png`

There are four components to a cloud path:

* Label - The name given to the partition or share.
* Path - The path itself.
* Stream - The name of a specific stream in the file.
* Type - The type of path: Partition, Share, or None

Lets use the examples and show how they are interpreted:

| Full Path                          | Label   | Path              | Stream     | Type        |
|------------------------------------|---------|-------------------|------------|-------------|
| `C:/images/foo.png`                | `C`     | `/images/foo.png` |            | `partition` |
| `//share:/images/foo.png`          | `share` | `/images/foo.png` |            | `share`     |
| `C:/images/foo.png:metadata`       | `C`     | `/images/foo.png` | `metadata` | `partition` |
| `/foo/../images/foo.png`           |         | `/images/foo.png` |            | `none`      |

More information to come soon...

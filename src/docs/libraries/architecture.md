# Libraries Architecture

Libraries are made up of a core set of services that are available to all users, and several additional features that are disabled by default. For the full list of features see: [Features](features.md)

## Core Library Service

The core services offered by Rixian Libraries are:

- Storage
- [Multi-Tenant](multi_tenant.md)
- [Tagging](tagging.md)
- [Alternate Streams](alternate_streams.md)
- [Metadata Searching](metadata_searching.md)
- [Dashboard](dashboard.md)
- [Webhooks](webhooks.md)

Libraries provides an abstract file system over the top of an object storage provider such as Azure Blob Storage or Amazon S3. The directory structure is mantained within Libraries, with the binary data being stored in the storage provider:

<img alt="Screenshot 1" src="/images/LibraryStorageOverview.svg" style="width: 100%; max-width: 500px;">

!!! note "Note"
    A **storage provider instance** could be an S3 account or bucket, an Azure Blob account or container, and so on.

Multiple libraries can be stored withing a single instance of a storage provider. This allows for dense storage of all your data accross multiple libraries onto a single storage provider instance.

!!! note "Note"
    A single library cannot span multiple storage provider instances. Libraries are also not portable between storage providers.

<img alt="Screenshot 2" src="/images/DrivePartitionFileLayout.svg" style="width: 100%; max-width: 375px;">

Distinct libraries can each use a different storage provider. For advanced scenarios distinct libraries can also use the same storage provider instance. One advanced scenario is file indexing.

In order to understand indexing it is important to understand how files are tracked and stored. Each file has a unique ID associated with it. That is used to look up file information and to also locate the data within the storage provider. That ID will never change, even if the file is renamed or moved within the library.

<img alt="Basic File" src="/images/AlternateIdFile.svg" style="width: 100%; max-width: 200px;">

A file can optionally have an **Alternate ID**. This indicates a custom storage location for the file. When an Alternate ID is provided, it will override the generated storage location. When a new file is created and an Alternate ID is provided, it will be stored directly in that location. For Azure Blob Storage, and Alternate ID might look like the following:

<img alt="Indexed File" src="/images/AlternateIdFileFull.svg" style="width: 100%; max-width: 200px;">

Indexed files are files that already exist and simply need to be tracked inside of a library. An indexed file is a regular file with an Alternate ID set and no data had been uploaded. An example of what this might look like is this:

<img alt="Screenshot 3" src="/images/FileIndexing.svg" style="width: 100%; max-width: 800px;">

The three libraries are all referencing the same storage provider instance, but are referencing different files from within that provider. This allows you to retro-fit an existing set of files into Rixian Libraries with zero changes to the underlying storage provider or their files.

!!! note "Note"
    You may notice that you can absolutly have two libraries reference the same files. This is completly valid, but care must be taken when changing the underlying file. Libraries does not actively watch for file changes and will not be aware of a missing file until it is accessed.

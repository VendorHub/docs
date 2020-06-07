# Feature Summary

In addition the following features, you can vote on the most important upcoming features or submit your own ideas here: **https://ideas.vendorhub.io**

---

## :regular-users: Multi-Tenant

> <h3>Multi-tenancy allows you to create managed accounts for use by your own customers, keeping their data and access separate, all while still maintaining control via your primary account.</h3>

The multi-tenant feature of the VendorHub Document Library allows for the creation of Software-as-a-Service (SaaS) products based on the Document Library technology. All the following features are managed within the scope of an account. For maximum separation, secondary accounts are created under the control of the primary account. Each account comes with the following:

- Separate storage systems
- Dedicated search indexes
- Account-specific area in the VendorHub dashboard
- Custom user access permissions

**[Learn more...](multi_tenant.md)**

---

## :regular-hdd: Bring-Your-Own-Storage (BYOS)

> <h3>Use your own Azure Blob or Amazon S3 account, SFTP server, or other storage types for document storage with more options on the way.*

The VendorHub Document Library allows you to provide your storage for each account rather than use the VendorHub maintained storage. We currently support the following storage providers:

- Azure Blob Storage
- Amazon S3
- SFTP
- Azure KeyVault (preview)
- FTP/FTPS (preview)
- SCP (preview)

More storage providers will be added soon, e.g., WebDAV, network shares, file systems, and others.

!!! note "Note"
    A BYOS account is required for document indexing.

**[Learn more...](byos.md)**

---

## :regular-cloud-upload: Indexing

> <h3>If you have existing documents on your own storage device, you can index them where they are instead of uploading them into the Document Library.</h3>

Traditional document management systems (DMS) require centralized storage of documents in a single logical repository to make use of DMS supported document indexing tagging and searching features.

Document Indexing allows you to treat documents as part of a document library without moving or relocating the files. Document Indexing allows you to centralize the document access while keeping the files in your datacenter. You can associate metadata about the existing files without having to move, copy, or modify the files. Document Indexing also is available for content stored in your BYOS account.

!!! note "Note"
    Document indexing requires a BYOS account to function.

**[Learn more...](indexing.md)**

---

## :regular-server: SFTP Server

> <h3>No need for staging files on an intermediate SFTP server. Upload, download, and manage the files directly in your Document Library via SFTP.</h3>

VendorHub provides direct access to the Document Library via SFTP using any standard SFTP client, such as FileZilla or WinSCP. When accessing the Document Library via SFTP, you are not accessing an intermediate server. Files are accessed directly within the Document Library with no staging areas and no extra delays.
The following are important aspects of the credentials used to connect:

- Each account may have multiple credentials.
- Credentials are maintained and controlled within the account.
- Credential management occurs using either the Interactive Dashboard or the API.
- Credentials can be assigned either read or write permissions.

SFTP access to the Document Library allows for integration with existing systems or those that are not able to communicate via the API.

**[Learn more...](sftp_server.md)**

---

## :regular-virus-slash: Anti-Virus Scans

> <h3>Accepting unknown files from outside your organization can be dangerous. Files can be scanned as they are uploaded to ensure they are safe to open.</h3>

Documents that are uploaded into the Document Library come from various locations, not all of which are trustworthy. With the anti-virus feature of the Document Library, documents can be scanned as they are uploaded, and indexed files can be retroactively scanned for threats. The anti-virus database is constantly kept up to date with the latest virus data, ensuring that new threats can be quickly found.

**[Learn more...](anti_virus.md)**

---

## :regular-tags: Tagging

> <h3>Apply tags to your documents to make looking up related documents easy. Using key attribute as tags allows for quick retrieval, no matter where the document is stored.</h3>

Tagging is a tool to add extra text metadata to files. When tags are added to a file:

- Searching and filtering can consider tags when retrieving results.
- Data attached to the file is accessible without loading the file out of storage.

Tagging allows for storing arbitrary data such as custom identifiers, reference numbers, or customer information and make it accessible for retrieval later.

**[Learn more...](tagging.md)**

---

## :regular-search: Searching

> <h3>Searching and filtering over documents and folders, tags, and other attributes makes finding what you are looking for easy and fast.</h3>

Being able to find specific documents buried among the thousands and thousands of others is a requirement for many document management systems (DMS). With Document Library you get full searching capabilities over the following information (but not limited to these):

- Filename
- File path (search on directories as well)
- Creation date
- File size
- Tags

**[Learn more...](searching.md)**

---

## :regular-stream: Alternate Streams

> <h3>Store arbitrary information along with files inside of alternate streams, allowing for limitless types of file metadata.</h3>

Document Library supports multiple data streams associated with any file to store any extra data that must always live alongside the file. E.g., store an image associated with a text file, or a text blob with an image, or group a set of logically related file streams into a single logical file.

**[Learn more...](alternate_streams.md)**

---

## :regular-tachometer-alt: Interactive Dashboard

> <h3>Using the VendorHub dashboard, you can browse and manage your documents via an easy web interface.</h3>

VendorHub provides a dashboard for exploring the data stored inside of the Document Library. File system management activities, such as manipulating folders or uploading files, can be performed manually via the web-based dashboard.

The interactive dashboard also provides online viewing capabilities of supported file contents, allowing users to get a quick look at the file internals.

The dashboard also allows for switching between various accounts within the same login session. The user can then manage the document libraries for multiple accounts easily.

The VendorHub dashboard can be white-labeled, as well as ported into an existing system to provide an integrated in-house solution. Both options provide the users with the look and feel of your brand.

**[Learn more...](dashboard.md)**

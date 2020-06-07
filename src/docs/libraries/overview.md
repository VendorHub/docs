# Libraries

The Libraries platform is Rixian's cloud document management solution. Libraries services offer cloud-scale management for any type of data object via a file system api. The services offered are:

- **Flexible storage.** Data is kept within the Rixian storage solution by default. You have the capability to provide your own custom storage account, and optionally index and import existing files in place without moving them.
- **Discoverability.** Find important files by using a mixture of tagging, folder structure, and rich searching over tags, names, and file contents.
- **High-availability and redundancy.** All files are replicated multiple times across datacenters and geographical regiond for protection from unexpected outages.
- **Security.** All data is encrypted at rest, and uses TLS 1.2 for all traffic ove the internet. Anti-virus scanning ensures your files are safe and free of malware.
- **Availability.** Data in Libraries are available worldwide over HTTPS. Rixian provides a mature REST API, an SFTP endpoint, as well as client libraries for global access.

## General File Storage

Rixian Libraries can be used for storing any type of binary object. Rixian Libraries is a perfect platform for building applications that require structured data storage as well as important value-added features such as full-text searching. Some examples of scenarios that are enabled by using Rixian Libraries are:

| Feature | Description | Scenario |
|-|-|-|
| Multi-Tenant | Offers the ability to create managed accounts that are tied to your principal account. Each tenant has independent libraries, storage, and permissions. | As a Software-as-a-Service (SaaS) vendor you can maintain a primary Rixian Library account, with each of your customer having a managed account maintained by your primary account. You can ensure customer data is not mixed, and can provide them each access to their own account.<br><br>For example:<br>Contoso needs to upload invoice images. With their managed account, they can create SFTP credentials, upload the invoice images via the SFTP server, and manage those images via the dashboard. They never see files or credentials for any other of your customers during this process. |
| Bring-Your-Own-Storage (BYOS) | Allows the storage of files on storage provides outside the control of Rixian Libraries. | By using a BYOS account you can maintain full control over all data that is stored, including extra layers of backups, integrity checking, and any other processes.<br>By using a BYOS account you will retain all documents if you were to cease using Rixian Libraries or any other Rixian product.<br><br>You can offload access to customer SFTP servers by creating a Document Library for each customer and their documents. |
| Indexing | Allows you to treat documents as part of a document library without   moving or relocating the files.<br><br>Allows you to centralize document access while keeping the files in your datacenter.<br><br>Allows associating metadata about the existing files without having to move, copy, or modify files. | You have a large number of files on a blob storage device, such as AWS S3, and need to have searching and filtering over those files.<br><br>You want to add easy to find attributes on existing files you have. |
| SFTP Server | Provides access to your library via SFTP. | You want to provide your enterprise customers with an easy way to integrate without writing code.<br><br>You want to integrate with any of the existing tools via SFTP. |
| Alternate Streams | Offers the ability to store files as metadata. | You want to store multiple resolutions of the same image.<br><br>You want to store the raw scans alongside the transcribed scan data.<br><br>Store JSON data together with the raw XML. |

## Document Management System

Rixian Libraries is a Document Management System designed to be flexible and used in modern applications. Documents can be uploaded through various channels, stored on many mediums, organized, augmented with metadata, searched, and retrieved through the Document Library.

Rixian Libraries deviates from traditional document management systems in a few key areas:

- Documents are not required to relocate into Libraries to take advantage of the provided features and services.
- Managed accounts provide the ability for external organizations to access their private Document Library while being managed by the primary account.
- There are multiple methods of interacting with Libraries, including a Web Browser or SFTP client.
- Libraries is an API-first product, meaning that all features are accessible by any custom software or integration.

These key areas, along with many others, set Rixian Libraries apart from other document management systems. Together they provide key services to the enterprise for collecting, storing, and retrieving all types of documents.

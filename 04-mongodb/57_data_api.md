# MongoDB — Topic 57: Data API

## What is the MongoDB Data API?

The MongoDB Data API was a way for applications to interact
with MongoDB data over HTTP without requiring a traditional
MongoDB driver.

Typical operations included:

- Find documents
- Insert documents
- Update documents
- Delete documents

## Important Note

The MongoDB Atlas Data API was deprecated by MongoDB and is
not the recommended approach for new applications.

For new development, use an official MongoDB driver or
another currently supported MongoDB application interface.

Examples of official drivers include:

- Node.js
- Python
- Java
- C#
- Go

## Conceptual HTTP Example

A Data API request historically looked conceptually like:

```http
POST <data-api-endpoint>/action/findOne
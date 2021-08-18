# tsks-api

## API

**Headers:**

```
authorization: 'Bearer <token>'
```

### `GET /tsks`

#### `200`

**Response:**

```json
{
  tsks: [
      {
        id: 1,
        tsk: "t",
        context: "Inbox",
        done: 0,
        created_at: nil,
        updated_at: nil
      }
    }
  ]
}
```

#### `401`

```json
{
  "status_code": 401,
  "message": "401 Unauthorized"
}
```

### `POST /tsks`

**Body:**

```json
{
  "tsks": [
      {
        id: 1,
        tsk: "t",
        context: "Inbox",
        done: 0,
        created_at: nil,
        updated_at: nil
      }
    }
  ]
}
```

#### `201`

```json
{
  "status_code": 201,
  "tsks": [
      {
        id: 1,
        tsk: "t",
        context: "Inbox",
        done: 0,
        created_at: nil,
        updated_at: nil
      }
    }
  ]
}
```

#### `401`

```json
{
  "status_code": 401,
  "message": "401 Unauthorized"
}
```

#### `400`

```json
{
  "status_code": 400,
  "message": "400 Bad request"
}
```

### `DELETE /tsks/:id`

**Params**

```
id = tsk_id
```

#### `203`

**Response:**

```json
{
  "status_code": 203
}
```

#### `401`

```json
{
  "status_code": 401,
  "message": "401 Unauthorized"
}
```

#### `400`

```json
{
  "status_code": 400,
  "message": "400 Bad request"
}
```

## Development

* Create a user `tsks` with `superuser` privilegies for **PostgreSQL** so we 
would be able to create the necessary extension `pgcrypto`


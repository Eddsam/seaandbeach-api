define({ "api": [
  {
    "type": "post",
    "url": "/login",
    "title": "Request an authentication token to use the application.",
    "version": "0.1.0",
    "name": "Login",
    "group": "AUTH",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "integer",
            "optional": false,
            "field": "identifier",
            "description": "<p>User unique citizen id.</p>"
          },
          {
            "group": "Parameter",
            "type": "string",
            "optional": false,
            "field": "password",
            "description": "<p>User password.</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "json",
            "description": "<p>Success message.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "authtoken  Use this to send every request to server.",
          "content": "{\n\"response\": {\n    \"token\": \"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9......\",\n    \"user\": {\n        \"id\": 1,\n        \"identifier\": \"1082940074\",\n        \"created_at\": \"2016-12-11 17:22:08\",\n        \"updated_at\": \"2016-12-11 17:22:08\"\n    }\n}\n}",
          "type": "json"
        }
      ]
    },
    "error": {
      "fields": {
        "Error 4xx": [
          {
            "group": "Error 4xx",
            "type": "JSON",
            "optional": false,
            "field": "json",
            "description": "<p>Error message.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "error Invalid credentials.",
          "content": "{\n\"error\": \"invalid_credentials\"\n}",
          "type": "json"
        }
      ]
    },
    "filename": "app/Http/Controllers/Auth/AuthController.php",
    "groupTitle": "AUTH"
  },
  {
    "type": "get",
    "url": "/logout",
    "title": "Request to destroy authtoken authorization.",
    "version": "0.1.0",
    "name": "Logout",
    "group": "AUTH",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.......\"\n}",
          "type": "json"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "json",
            "description": "<p>Success message.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "authtoken  Use this to send every request to server.",
          "content": "{\n    \"response\": \"logged out successfully\"\n}",
          "type": "json"
        }
      ]
    },
    "error": {
      "fields": {
        "Error 4xx": [
          {
            "group": "Error 4xx",
            "type": "JSON",
            "optional": false,
            "field": "json",
            "description": "<p>Error message.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "error Invalid credentials.",
          "content": "{\n    \"error\": \"invalid_credentials\"\n}",
          "type": "json"
        }
      ]
    },
    "filename": "app/Http/Controllers/Auth/AuthController.php",
    "groupTitle": "AUTH"
  },
  {
    "type": "get",
    "url": "/apartamentos/:id",
    "title": "Show single resource.",
    "version": "0.1.0",
    "name": "GetApartamento",
    "group": "Apartamento",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/ApartamentoController.php",
    "groupTitle": "Apartamento"
  },
  {
    "type": "get",
    "url": "/apartamentos",
    "title": "Show all the resource.",
    "version": "0.1.0",
    "name": "GetApartamentos",
    "group": "Apartamento",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of users.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/ApartamentoController.php",
    "groupTitle": "Apartamento"
  },
  {
    "type": "patch",
    "url": "/apartamentos/:id",
    "title": "Update a single element.",
    "version": "0.1.0",
    "name": "PatchApartamento",
    "group": "Apartamento",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/ApartamentoController.php",
    "groupTitle": "Apartamento"
  },
  {
    "type": "post",
    "url": "/apartamentos",
    "title": "Creates a new element.",
    "version": "0.1.0",
    "name": "PostApartamento",
    "group": "Apartamento",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/ApartamentoController.php",
    "groupTitle": "Apartamento"
  },
  {
    "type": "get",
    "url": "/categorias/:id",
    "title": "Show single resource.",
    "version": "0.1.0",
    "name": "GetCategoria",
    "group": "Categoria",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/CategoriaController.php",
    "groupTitle": "Categoria"
  },
  {
    "type": "get",
    "url": "/categorias",
    "title": "Show all the resource.",
    "version": "0.1.0",
    "name": "GetCategoriaas",
    "group": "Categoria",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of users.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/CategoriaController.php",
    "groupTitle": "Categoria"
  },
  {
    "type": "get",
    "url": "/categoria_items/:id",
    "title": "Show single resource.",
    "version": "0.1.0",
    "name": "GetCategoriaItem",
    "group": "CategoriaItem",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/CategoriaItemController.php",
    "groupTitle": "CategoriaItem"
  },
  {
    "type": "get",
    "url": "/categoria_items",
    "title": "Show all the resource.",
    "version": "0.1.0",
    "name": "GetCategoriaItems",
    "group": "CategoriaItem",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of users.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/CategoriaItemController.php",
    "groupTitle": "CategoriaItem"
  },
  {
    "type": "patch",
    "url": "/categoria_items/:id",
    "title": "Update a single element.",
    "version": "0.1.0",
    "name": "PatchCategoriaItem",
    "group": "CategoriaItem",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/CategoriaItemController.php",
    "groupTitle": "CategoriaItem"
  },
  {
    "type": "post",
    "url": "/categoria_items",
    "title": "Creates a new element.",
    "version": "0.1.0",
    "name": "PostCategoriaItem",
    "group": "CategoriaItem",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/CategoriaItemController.php",
    "groupTitle": "CategoriaItem"
  },
  {
    "type": "patch",
    "url": "/categorias/:id",
    "title": "Update a single element.",
    "version": "0.1.0",
    "name": "PatchCategoria",
    "group": "Categoria",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/CategoriaController.php",
    "groupTitle": "Categoria"
  },
  {
    "type": "post",
    "url": "/categorias",
    "title": "Creates a new element.",
    "version": "0.1.0",
    "name": "PostCategoria",
    "group": "Categoria",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/CategoriaController.php",
    "groupTitle": "Categoria"
  },
  {
    "type": "get",
    "url": "/cierredecajas",
    "title": "Show all the resource.",
    "version": "0.1.0",
    "name": "GetCierredecajas",
    "group": "CierreDeCaja",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of users.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/CierreDeCajaController.php",
    "groupTitle": "CierreDeCaja"
  },
  {
    "type": "get",
    "url": "/cierredecajas/:id",
    "title": "Show single resource.",
    "version": "0.1.0",
    "name": "GetOrden",
    "group": "CierreDeCaja",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/CierreDeCajaController.php",
    "groupTitle": "CierreDeCaja"
  },
  {
    "type": "patch",
    "url": "/cierredecajas/:id",
    "title": "Update a single element.",
    "version": "0.1.0",
    "name": "PatchOrden",
    "group": "CierreDeCaja",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/CierreDeCajaController.php",
    "groupTitle": "CierreDeCaja"
  },
  {
    "type": "post",
    "url": "/cierredecajas",
    "title": "Creates a new element.",
    "version": "0.1.0",
    "name": "PostOrden",
    "group": "CierreDeCaja",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/CierreDeCajaController.php",
    "groupTitle": "CierreDeCaja"
  },
  {
    "type": "delete",
    "url": "/empleados/:id",
    "title": "Delete a single element.",
    "version": "0.1.0",
    "name": "DeleteEmpleado",
    "group": "EMPLEADO",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Success-Response:",
          "content": "HTTP/1.1 200 OK\n{\n    \"msg\": \"ok\"\n}",
          "type": "JSON"
        },
        {
          "title": "Success-Response:",
          "content": "HTTP/1.1 500 internal server error\n{\n    \"msg\": \"error\"\n}",
          "type": "JSON"
        }
      ]
    },
    "error": {
      "fields": {
        "Error 4xx": [
          {
            "group": "Error 4xx",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>error message.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/EmpleadoController.php",
    "groupTitle": "EMPLEADO"
  },
  {
    "type": "get",
    "url": "/empleados/:id",
    "title": "Show single resource.",
    "version": "0.1.0",
    "name": "GetEmpleado",
    "group": "EMPLEADO",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Success-Response:",
          "content": "HTTP/1.1 200 OK\n{\n    \"empleados\": [\n    {\n        \"Cedula\": 1082940074,\n        \"RUT\": \"1082940074\",\n        \"Nombre\": \"Eduardo\",\n        \"Apellido\": \"Boada\",\n        \"Telefono\": \"3008339122\",\n        \"Direccion\": \"Calle falsa 123\",\n        \"Password\": \"$2y$10$5yS.ea6vQsA3qHa83KipN.7dwQ5yc9orVsiaCSvkLT53qfe5DIa9S\",\n        \"CodigoRol\": 1,\n        \"Usuario\": 1,\n        \"usuario\": {\n            \"id\": 1,\n            \"identifier\": \"eddsama\",\n            \"password\": \"$2y$10$H04thcxFujWT6Fs9hRoMr.B4zRkNRIvfrxD0MP7DXrHvjKwyQ42Pa\",\n            \"remember_token\": null,\n            \"created_at\": \"2017-06-26 05:12:16\",\n            \"updated_at\": \"2017-06-26 05:12:16\",\n            \"deleted_at\": null\n        },\n        \"rolempleado\": {\n            \"CodigoRol\": 1,\n            \"DescripcionRol\": \"Administrador\"\n        }\n    }\n    ]\n}",
          "type": "JSON"
        }
      ]
    },
    "filename": "app/Http/Controllers/EmpleadoController.php",
    "groupTitle": "EMPLEADO"
  },
  {
    "type": "get",
    "url": "/empleados",
    "title": "Show all the resource.",
    "version": "0.1.0",
    "name": "GetEmpleados",
    "group": "EMPLEADO",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Success-Response:",
          "content": "HTTP/1.1 200 OK\n{\n    \"empleados\": [\n    {\n        \"Cedula\": 1082940074,\n        \"RUT\": \"1082940074\",\n        \"Nombre\": \"Eduardo\",\n        \"Apellido\": \"Boada\",\n        \"Telefono\": \"3008339122\",\n        \"Direccion\": \"Calle falsa 123\",\n        \"Password\": \"$2y$10$5yS.ea6vQsA3qHa83KipN.7dwQ5yc9orVsiaCSvkLT53qfe5DIa9S\",\n        \"CodigoRol\": 1,\n        \"Usuario\": 1,\n        \"usuario\": {\n            \"id\": 1,\n            \"identifier\": \"eddsama\",\n            \"password\": \"$2y$10$H04thcxFujWT6Fs9hRoMr.B4zRkNRIvfrxD0MP7DXrHvjKwyQ42Pa\",\n            \"remember_token\": null,\n            \"created_at\": \"2017-06-26 05:12:16\",\n            \"updated_at\": \"2017-06-26 05:12:16\",\n            \"deleted_at\": null\n        },\n        \"rolempleado\": {\n            \"CodigoRol\": 1,\n            \"DescripcionRol\": \"Administrador\"\n        }\n    }\n    ]\n}",
          "type": "JSON"
        }
      ]
    },
    "filename": "app/Http/Controllers/EmpleadoController.php",
    "groupTitle": "EMPLEADO"
  },
  {
    "type": "patch",
    "url": "/empleados/:id",
    "title": "Update a single element.",
    "version": "0.1.0",
    "name": "PatchEmpleado",
    "group": "EMPLEADO",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Success-Response:",
          "content": "HTTP/1.1 200 OK\n{\n    \"empleados\": [\n    {\n        \"Cedula\": 1082940074,\n        \"RUT\": \"1082940074\",\n        \"Nombre\": \"Eduardo\",\n        \"Apellido\": \"Boada\",\n        \"Telefono\": \"3008339122\",\n        \"Direccion\": \"Calle falsa 123\",\n        \"Password\": \"$2y$10$5yS.ea6vQsA3qHa83KipN.7dwQ5yc9orVsiaCSvkLT53qfe5DIa9S\",\n        \"CodigoRol\": 1,\n        \"idUsuario\": 1,\n        \"usuario\": {\n            \"id\": 1,\n            \"identifier\": \"eddsama\",\n            \"password\": \"$2y$10$H04thcxFujWT6Fs9hRoMr.B4zRkNRIvfrxD0MP7DXrHvjKwyQ42Pa\",\n            \"remember_token\": null,\n            \"created_at\": \"2017-06-26 05:12:16\",\n            \"updated_at\": \"2017-06-26 05:12:16\",\n            \"deleted_at\": null\n        },\n        \"rolempleado\": {\n            \"CodigoRol\": 1,\n            \"DescripcionRol\": \"Administrador\"\n        }\n    }\n  ]\n}",
          "type": "JSON"
        }
      ]
    },
    "filename": "app/Http/Controllers/EmpleadoController.php",
    "groupTitle": "EMPLEADO"
  },
  {
    "type": "post",
    "url": "/empleados",
    "title": "Creates a new element.",
    "version": "0.1.0",
    "name": "PostEmpleados",
    "group": "EMPLEADO",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Success-Response:",
          "content": "HTTP/1.1 200 OK\n{\n    \"empleados\": [\n    {\n        \"Cedula\": 1082940074,\n        \"RUT\": \"1082940074\",\n        \"Nombre\": \"Eduardo\",\n        \"Apellido\": \"Boada\",\n        \"Telefono\": \"3008339122\",\n        \"Direccion\": \"Calle falsa 123\",\n        \"Password\": \"$2y$10$5yS.ea6vQsA3qHa83KipN.7dwQ5yc9orVsiaCSvkLT53qfe5DIa9S\",\n        \"CodigoRol\": 1,\n        \"idUsuario\": 1,\n        \"usuario\": {\n            \"id\": 1,\n            \"identifier\": \"eddsama\",\n            \"password\": \"$2y$10$H04thcxFujWT6Fs9hRoMr.B4zRkNRIvfrxD0MP7DXrHvjKwyQ42Pa\",\n            \"remember_token\": null,\n            \"created_at\": \"2017-06-26 05:12:16\",\n            \"updated_at\": \"2017-06-26 05:12:16\",\n            \"deleted_at\": null\n        },\n        \"rolempleado\": {\n            \"CodigoRol\": 1,\n            \"DescripcionRol\": \"Administrador\"\n        }\n    }\n  ]\n}",
          "type": "JSON"
        }
      ]
    },
    "filename": "app/Http/Controllers/EmpleadoController.php",
    "groupTitle": "EMPLEADO"
  },
  {
    "type": "get",
    "url": "/facturas/:id",
    "title": "Show single resource.",
    "version": "0.1.0",
    "name": "GetOrden",
    "group": "Factura",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/FacturaController.php",
    "groupTitle": "Factura"
  },
  {
    "type": "get",
    "url": "/facturas",
    "title": "Show all the resource.",
    "version": "0.1.0",
    "name": "Getfacturas",
    "group": "Factura",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of users.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/FacturaController.php",
    "groupTitle": "Factura"
  },
  {
    "type": "patch",
    "url": "/facturas/:id",
    "title": "Update a single element.",
    "version": "0.1.0",
    "name": "PatchOrden",
    "group": "Factura",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/FacturaController.php",
    "groupTitle": "Factura"
  },
  {
    "type": "post",
    "url": "/facturas",
    "title": "Creates a new element.",
    "version": "0.1.0",
    "name": "PostOrden",
    "group": "Factura",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/FacturaController.php",
    "groupTitle": "Factura"
  },
  {
    "type": "get",
    "url": "/formadepagos/:id",
    "title": "Show single resource.",
    "version": "0.1.0",
    "name": "GetOrden",
    "group": "FormadePago",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/FormadePagoController.php",
    "groupTitle": "FormadePago"
  },
  {
    "type": "get",
    "url": "/formadepagos",
    "title": "Show all the resource.",
    "version": "0.1.0",
    "name": "Getformadepagos",
    "group": "FormadePago",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of users.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/FormadePagoController.php",
    "groupTitle": "FormadePago"
  },
  {
    "type": "patch",
    "url": "/formadepagos/:id",
    "title": "Update a single element.",
    "version": "0.1.0",
    "name": "PatchOrden",
    "group": "FormadePago",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/FormadePagoController.php",
    "groupTitle": "FormadePago"
  },
  {
    "type": "post",
    "url": "/formadepagos",
    "title": "Creates a new element.",
    "version": "0.1.0",
    "name": "PostOrden",
    "group": "FormadePago",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/FormadePagoController.php",
    "groupTitle": "FormadePago"
  },
  {
    "type": "get",
    "url": "/ingredientes/:id",
    "title": "Show single resource.",
    "version": "0.1.0",
    "name": "GetIngrediente",
    "group": "INGREDIENTE",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/IngredienteController.php",
    "groupTitle": "INGREDIENTE"
  },
  {
    "type": "get",
    "url": "/ingredientes",
    "title": "Show all the resource.",
    "version": "0.1.0",
    "name": "GetIngredientes",
    "group": "INGREDIENTE",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of users.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/IngredienteController.php",
    "groupTitle": "INGREDIENTE"
  },
  {
    "type": "patch",
    "url": "/ingredientes/:id",
    "title": "Update a single element.",
    "version": "0.1.0",
    "name": "PatchIngrediente",
    "group": "INGREDIENTE",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/IngredienteController.php",
    "groupTitle": "INGREDIENTE"
  },
  {
    "type": "post",
    "url": "/ingredientes",
    "title": "Creates a new element.",
    "version": "0.1.0",
    "name": "PostIngrediente",
    "group": "INGREDIENTE",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/IngredienteController.php",
    "groupTitle": "INGREDIENTE"
  },
  {
    "type": "get",
    "url": "/menu_items/:id",
    "title": "Show single resource.",
    "version": "0.1.0",
    "name": "GetMenuItem",
    "group": "MenuItem",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/MenuItemController.php",
    "groupTitle": "MenuItem"
  },
  {
    "type": "get",
    "url": "/menu_items",
    "title": "Show all the resource.",
    "version": "0.1.0",
    "name": "GetMenuItems",
    "group": "MenuItem",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of users.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/MenuItemController.php",
    "groupTitle": "MenuItem"
  },
  {
    "type": "patch",
    "url": "/menu_items/:id",
    "title": "Update a single element.",
    "version": "0.1.0",
    "name": "PatchMenuItem",
    "group": "MenuItem",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/MenuItemController.php",
    "groupTitle": "MenuItem"
  },
  {
    "type": "post",
    "url": "/menu_items",
    "title": "Creates a new element.",
    "version": "0.1.0",
    "name": "PostMenuItem",
    "group": "MenuItem",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/MenuItemController.php",
    "groupTitle": "MenuItem"
  },
  {
    "type": "get",
    "url": "/mesas/:id",
    "title": "Show single resource.",
    "version": "0.1.0",
    "name": "GetMesa",
    "group": "Mesa",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/MesaController.php",
    "groupTitle": "Mesa"
  },
  {
    "type": "get",
    "url": "/mesas",
    "title": "Show all the resource.",
    "version": "0.1.0",
    "name": "GetMesas",
    "group": "Mesa",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of users.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/MesaController.php",
    "groupTitle": "Mesa"
  },
  {
    "type": "patch",
    "url": "/mesas/:id",
    "title": "Update a single element.",
    "version": "0.1.0",
    "name": "PatchMesa",
    "group": "Mesa",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/MesaController.php",
    "groupTitle": "Mesa"
  },
  {
    "type": "post",
    "url": "/mesas",
    "title": "Creates a new element.",
    "version": "0.1.0",
    "name": "PostMesa",
    "group": "Mesa",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/MesaController.php",
    "groupTitle": "Mesa"
  },
  {
    "type": "get",
    "url": "/modocierredecajas",
    "title": "Show all the resource.",
    "version": "0.1.0",
    "name": "GetModocierredecajas",
    "group": "ModoCierreDeCaja",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of users.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/ModoCierreDeCajaController.php",
    "groupTitle": "ModoCierreDeCaja"
  },
  {
    "type": "get",
    "url": "/modocierredecajas/:id",
    "title": "Show single resource.",
    "version": "0.1.0",
    "name": "GetOrden",
    "group": "ModoCierreDeCaja",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/ModoCierreDeCajaController.php",
    "groupTitle": "ModoCierreDeCaja"
  },
  {
    "type": "patch",
    "url": "/modocierredecajas/:id",
    "title": "Update a single element.",
    "version": "0.1.0",
    "name": "PatchOrden",
    "group": "ModoCierreDeCaja",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/ModoCierreDeCajaController.php",
    "groupTitle": "ModoCierreDeCaja"
  },
  {
    "type": "post",
    "url": "/modocierredecajas",
    "title": "Creates a new element.",
    "version": "0.1.0",
    "name": "PostOrden",
    "group": "ModoCierreDeCaja",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/ModoCierreDeCajaController.php",
    "groupTitle": "ModoCierreDeCaja"
  },
  {
    "type": "get",
    "url": "/modo_consumos/:id",
    "title": "Show single resource.",
    "version": "0.1.0",
    "name": "GetModoConsumo",
    "group": "ModoConsumo",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/ModoConsumoController.php",
    "groupTitle": "ModoConsumo"
  },
  {
    "type": "get",
    "url": "/modo_consumos",
    "title": "Show all the resource.",
    "version": "0.1.0",
    "name": "Getmodo_consumos",
    "group": "ModoConsumo",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of users.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/ModoConsumoController.php",
    "groupTitle": "ModoConsumo"
  },
  {
    "type": "patch",
    "url": "/modo_consumos/:id",
    "title": "Update a single element.",
    "version": "0.1.0",
    "name": "PatchModoConsumo",
    "group": "ModoConsumo",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/ModoConsumoController.php",
    "groupTitle": "ModoConsumo"
  },
  {
    "type": "post",
    "url": "/modo_consumos",
    "title": "Creates a new element.",
    "version": "0.1.0",
    "name": "PostModoConsumo",
    "group": "ModoConsumo",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/ModoConsumoController.php",
    "groupTitle": "ModoConsumo"
  },
  {
    "type": "get",
    "url": "/oferta_items/:id",
    "title": "Show single resource.",
    "version": "0.1.0",
    "name": "GetOfertaItem",
    "group": "OfertaItem",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/OfertaItemController.php",
    "groupTitle": "OfertaItem"
  },
  {
    "type": "get",
    "url": "/oferta_items",
    "title": "Show all the resource.",
    "version": "0.1.0",
    "name": "GetOfertaItems",
    "group": "OfertaItem",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of users.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/OfertaItemController.php",
    "groupTitle": "OfertaItem"
  },
  {
    "type": "patch",
    "url": "/oferta_items/:id",
    "title": "Update a single element.",
    "version": "0.1.0",
    "name": "PatchOfertaItem",
    "group": "OfertaItem",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/OfertaItemController.php",
    "groupTitle": "OfertaItem"
  },
  {
    "type": "post",
    "url": "/oferta_items",
    "title": "Creates a new element.",
    "version": "0.1.0",
    "name": "PostOfertaItem",
    "group": "OfertaItem",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/OfertaItemController.php",
    "groupTitle": "OfertaItem"
  },
  {
    "type": "get",
    "url": "/ordenes/:id",
    "title": "Show single resource.",
    "version": "0.1.0",
    "name": "GetOrden",
    "group": "Orden",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/OrdenController.php",
    "groupTitle": "Orden"
  },
  {
    "type": "get",
    "url": "/ordenes",
    "title": "Show all the resource.",
    "version": "0.1.0",
    "name": "GetOrdenes",
    "group": "Orden",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of users.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/OrdenController.php",
    "groupTitle": "Orden"
  },
  {
    "type": "patch",
    "url": "/ordenes/:id",
    "title": "Update a single element.",
    "version": "0.1.0",
    "name": "PatchOrden",
    "group": "Orden",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/OrdenController.php",
    "groupTitle": "Orden"
  },
  {
    "type": "post",
    "url": "/ordenes",
    "title": "Creates a new element.",
    "version": "0.1.0",
    "name": "PostOrden",
    "group": "Orden",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/OrdenController.php",
    "groupTitle": "Orden"
  },
  {
    "type": "get",
    "url": "/roles/:id",
    "title": "Show single resource.",
    "version": "0.1.0",
    "name": "GetRolEmpleado",
    "group": "ROLEMPLEADO",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/RolEmpleadoController.php",
    "groupTitle": "ROLEMPLEADO"
  },
  {
    "type": "get",
    "url": "/roles",
    "title": "Show all the resource.",
    "version": "0.1.0",
    "name": "GetRolEmpleados",
    "group": "ROLEMPLEADO",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of users.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/RolEmpleadoController.php",
    "groupTitle": "ROLEMPLEADO"
  },
  {
    "type": "patch",
    "url": "/roles/:id",
    "title": "Update a single element.",
    "version": "0.1.0",
    "name": "PatchRolEmpleado",
    "group": "ROLEMPLEADO",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/RolEmpleadoController.php",
    "groupTitle": "ROLEMPLEADO"
  },
  {
    "type": "post",
    "url": "/roles",
    "title": "Creates a new element.",
    "version": "0.1.0",
    "name": "PostRolEmpleado",
    "group": "ROLEMPLEADO",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/RolEmpleadoController.php",
    "groupTitle": "ROLEMPLEADO"
  },
  {
    "type": "get",
    "url": "/resercaciones",
    "title": "Show all the resource.",
    "version": "0.1.0",
    "name": "GetResercaciones",
    "group": "Reservacion",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of users.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/ReservacionController.php",
    "groupTitle": "Reservacion"
  },
  {
    "type": "get",
    "url": "/resercaciones/:id",
    "title": "Show single resource.",
    "version": "0.1.0",
    "name": "GetReservacion",
    "group": "Reservacion",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/ReservacionController.php",
    "groupTitle": "Reservacion"
  },
  {
    "type": "patch",
    "url": "/resercaciones/:id",
    "title": "Update a single element.",
    "version": "0.1.0",
    "name": "PatchReservacion",
    "group": "Reservacion",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/ReservacionController.php",
    "groupTitle": "Reservacion"
  },
  {
    "type": "post",
    "url": "/resercaciones",
    "title": "Creates a new element.",
    "version": "0.1.0",
    "name": "PostReservacion",
    "group": "Reservacion",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/ReservacionController.php",
    "groupTitle": "Reservacion"
  },
  {
    "type": "get",
    "url": "/tipo_ingredientes/:id",
    "title": "Show single resource.",
    "version": "0.1.0",
    "name": "GetTipoIngrediente",
    "group": "TIPOINGREDIENTE",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/TipoIngredienteController.php",
    "groupTitle": "TIPOINGREDIENTE"
  },
  {
    "type": "get",
    "url": "/tipo_ingredientes",
    "title": "Show all the resource.",
    "version": "0.1.0",
    "name": "GetTipoIngredientes",
    "group": "TIPOINGREDIENTE",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of users.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/TipoIngredienteController.php",
    "groupTitle": "TIPOINGREDIENTE"
  },
  {
    "type": "patch",
    "url": "/tipo_ingredientes/:id",
    "title": "Update a single element.",
    "version": "0.1.0",
    "name": "PatchTipoIngrediente",
    "group": "TIPOINGREDIENTE",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/TipoIngredienteController.php",
    "groupTitle": "TIPOINGREDIENTE"
  },
  {
    "type": "post",
    "url": "/tipo_ingredientes",
    "title": "Creates a new element.",
    "version": "0.1.0",
    "name": "PostTipoIngrediente",
    "group": "TIPOINGREDIENTE",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of resource.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/TipoIngredienteController.php",
    "groupTitle": "TIPOINGREDIENTE"
  },
  {
    "type": "delete",
    "url": "/users/:id",
    "title": "Delete a single element.",
    "version": "0.1.0",
    "name": "DeleteUser",
    "group": "USER",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of users.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Success-Response:",
          "content": "HTTP/1.1 200 OK\n{\n    \"msg\": \"ok\"\n}",
          "type": "JSON"
        },
        {
          "title": "Success-Response:",
          "content": "HTTP/1.1 500 internal server error\n{\n    \"msg\": \"error\"\n}",
          "type": "JSON"
        }
      ]
    },
    "error": {
      "fields": {
        "Error 4xx": [
          {
            "group": "Error 4xx",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>error message.</p>"
          }
        ]
      }
    },
    "filename": "app/Http/Controllers/UserController.php",
    "groupTitle": "USER"
  },
  {
    "type": "get",
    "url": "/users/:id",
    "title": "Show single resource.",
    "version": "0.1.0",
    "name": "GetUser",
    "group": "USER",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of users.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Success-Response:",
          "content": "HTTP/1.1 200 OK\n{\n    \"users\": [\n        {\n            \"id\": 1,\n            \"identifier\": \"1082940074\",\n            \"created_at\": \"2016-12-11 17:22:08\",\n            \"updated_at\": \"2016-12-11 17:22:08\"\n        }\n    ]\n}",
          "type": "JSON"
        }
      ]
    },
    "filename": "app/Http/Controllers/UserController.php",
    "groupTitle": "USER"
  },
  {
    "type": "get",
    "url": "/users",
    "title": "Show all the resource.",
    "version": "0.1.0",
    "name": "GetUsers",
    "group": "USER",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of users.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Success-Response:",
          "content": " HTTP/1.1 200 OK\n {\n     \"users\": [\n         {\n             \"id\": 1,\n             \"identifier\": \"1082940074\",\n             \"created_at\": \"2016-12-11 17:22:08\",\n\t            \"updated_at\": \"2016-12-11 17:22:08\"\n\t        },\n         { ... },\n         { ... },\n     ]\n }",
          "type": "JSON"
        }
      ]
    },
    "filename": "app/Http/Controllers/UserController.php",
    "groupTitle": "USER"
  },
  {
    "type": "post",
    "url": "/users/:id",
    "title": "Update a single element.",
    "version": "0.1.0",
    "name": "PostUser",
    "group": "USER",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of users.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Success-Response:",
          "content": "HTTP/1.1 200 OK\n{\n    \"users\": [\n        {\n            \"id\": 1,\n            \"identifier\": \"1082940074\",\n            \"created_at\": \"2016-12-11 17:22:08\",\n            \"updated_at\": \"2016-12-11 17:22:08\"\n        }\n    ]\n}",
          "type": "JSON"
        }
      ]
    },
    "filename": "app/Http/Controllers/UserController.php",
    "groupTitle": "USER"
  },
  {
    "type": "post",
    "url": "/users",
    "title": "Creates a new element.",
    "version": "0.1.0",
    "name": "PostUsers",
    "group": "USER",
    "header": {
      "fields": {
        "Header": [
          {
            "group": "Header",
            "type": "String",
            "optional": false,
            "field": "Autorization",
            "description": "<p>Autorization header.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Header-Example:",
          "content": "{\n    \"Authorization\": \"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9...\"\n}",
          "type": "JSON"
        }
      ]
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "JSON",
            "optional": false,
            "field": "Json",
            "description": "<p>list of users.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Success-Response:",
          "content": "HTTP/1.1 200 OK\n{\n    \"users\": [\n        {\n            \"id\": 1,\n            \"identifier\": \"1082940074\",\n            \"created_at\": \"2016-12-11 17:22:08\",\n            \"updated_at\": \"2016-12-11 17:22:08\"\n        }\n    ]\n}",
          "type": "JSON"
        }
      ]
    },
    "filename": "app/Http/Controllers/UserController.php",
    "groupTitle": "USER"
  }
] });

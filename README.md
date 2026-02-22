# flutter crud app

## [Live Demo](https://scafley.github.io/flutter-crud-app/)

## Features

- User authentication with session persistence
- Product listing with grid layout and cached network images
- Product detail view
- Add new products with form validation
- Edit existing products with pre-filled forms
- Delete products with confirmation dialog
- Pull-to-refresh functionality
- BLoC state reset on logout

## Tech Stack

- **Framework:** Flutter (fvm flutter version 3.38.7)
- **State Management:** flutter_bloc (BLoC pattern)
- **Navigation:** go_router
- **API:** DummyJSON (mock REST API)
- **HTTP Client:** Dio
- **Data Models:** Freezed + json_serializable
- **Secure Storage:** flutter_secure_storage
- **Image Caching:** cached_network_image

### Login Credentials (DummyJSON)

- **Username:** `emilys`
- **Password:** `emilyspass`

## Note

This app uses https://dummyjson.com as a mock API for demonstration purposes. Data changes (add, edit, delete) won't persist on the server but demonstrate full CRUD functionality with proper HTTP methods (and http 200 responses).

##  Author

**Dominik Nalepa**
- GitHub: [@scafley](https://github.com/scafley)
- Portfolio: [scafley.github.io](https://scafley.github.io)
- Email: d.nalepa1337@gmail.com

### BLoC + Repository Pattern

### Presentation Layer (UI):
  - screens/

### Business Logic Layer:
 - bloc/

### Data Layer:
  - repositories/     
  - services/        
  - models/        

### Core:
  - config/   
  - router/ (go_router)
  - di/ (shared global singleton instances)
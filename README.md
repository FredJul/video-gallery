# Video Gallery

## Compilation

This project has been developed with Flutter 3.29.3.

You also need to provide your Pixabay api key by providing it at compilation:
`flutter run --dart-define PIXABAY_API_KEY=REPLACE_WITH_YOUR_CURRENT_KEY`

By convenience, you can also create a `env-dev.json` file at the project root folder like this:
```
{
  "PIXABAY_API_KEY": "REPLACE_WITH_YOUR_CURRENT_KEY"
}
```
And then use the defined VSCode launch configurations.

## Architecture

Based on MVVM + Clean Architecture. Each layer is correctly isolated (no data dependencies in domain's classes) and has a dedicated purpose.

*Domain layer*:
- Entities: data definitions
- Repository interfaces: basic data manipulation operations
- Use cases: add intelligence above the repositories

*Data layer*:
- Data sources: basic data query and exception handling
- Repositories: handle several datasources (when needed), convert data models to domain entities and encapsulate them into a Result (to force error handling)

*Presentation layer*:
- View models: retrieve data from usecases and prepare them for the views

WARNING: in this project the UseCase is pretty useless and is here only for the sake of demonstration.

## About the use of Riverpod

While using ChangeNotifiers/Blocs/Signals/whatever could have been possible, I decided to use Riverpod here for its simplificty (especially compared to Bloc) and its auto-dispose feature.

I however didn't use the generator since it does not bring much value, makes it more complex to navigate in the code and can noticeably slow down code generation on big projects.

## TODO
- Logging (via `logger` and/or `sentry`)
- Improve infinite loading (with a loading indicator when reaching the end)
- Make better responsive design to ensure the app looks great on all devices.
- Expand test coverage (no widget test for now)
- Theme creation and spacing centralization

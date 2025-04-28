**GrayscaleApp**: 

App Design & Architecture:

- **MVVM Pattern**:
  - The GrayscaleApp is structured using MVVM for clarity and separation of concerns.
  - `ProcessedImage` is a lightweight model holding original and grayscale images.

- **Thread Safety**:
  - Image processing is performed on the main thread only after proper validation to avoid memory crashes.
 
  - ## Build & Run Instructions
    1. Build GrayscaleSDK using **Product > Build** or `Cmd + B`.
    2. Add GrayscaleSDK.framework under Frameworks, Library and Embedded Content.
    3. Embed & Sign the GrayscaleSDK.framework.
    4. Choose a simulator or device.
    5. Run the GrayscaleApp.


<div align="center">
  <video src="https://github.com/user-attachments/assets/03e68bb6-ac85-4300-a1e0-4238e9ef167d" width="400" />
</div>




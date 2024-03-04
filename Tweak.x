#import <Foundation/Foundation.h>
#import <SpringBoard/SpringBoard.h>
#import <UIKit/UIKit.h>

// Hooking en la clase SpringBoard
%hook SpringBoard

// Método que se ejecuta cuando la aplicación ha terminado de lanzarse
- (void)applicationDidFinishLaunching:(id)arg1 {
    %orig; // Llama a la implementación original del método
    
    // Crea una alerta con un título y un mensaje
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Iphone De QxAngel :)" message:@"Tweak By @6ky_l" preferredStyle:UIAlertControllerStyleAlert];

    // Botón de "Aceptar"
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"Aceptar" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
    }];

    // Establece el color azul del título de la alerta
    NSMutableAttributedString *titleText = [[NSMutableAttributedString alloc] initWithString:@"Iphone De QxAngel :)" attributes:@{NSForegroundColorAttributeName: [UIColor blueColor]}];
    [alert setValue:titleText forKey:@"attributedTitle"];

    // Establece el color azul del mensaje de la alerta
    NSMutableAttributedString *messageText = [[NSMutableAttributedString alloc] initWithString:@"Tweak By @6ky_l" attributes:@{NSForegroundColorAttributeName: [UIColor blueColor]}];
    [alert setValue:messageText forKey:@"attributedMessage"];

    // Establece el color rojo del texto del botón "Aceptar"
    [okAction setValue:[UIColor redColor] forKey:@"titleTextColor"];

    // Agrega el botón "Aceptar" a la alerta
    [alert addAction:okAction];

    // Obtiene la ventana principal de la aplicación
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    // Obtiene el controlador de vista raíz de la ventana principal
    UIViewController *rootViewController = keyWindow.rootViewController;

    [rootViewController presentViewController:alert animated:YES completion:nil];
}

%end // Fin del hooking en la clase SpringBoard

%ctor {
}


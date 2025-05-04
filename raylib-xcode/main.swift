//
//  main.swift
//  raylib-xcode
//
//  Created by Mert Arıcan on 4.05.2025.
//

import Foundation
import Raylib

let screenWidth: Int32 = 800;
let screenHeight: Int32 = 450;

InitWindow(screenWidth, screenHeight, "raylib on macOS");
SetTargetFPS(60)

while (!WindowShouldClose()) {
    BeginDrawing();
    ClearBackground(Color(r: 255, g: 255, b: 255, a: 255));
    DrawText("Hello, raylib!", 190, 200, 20, green/*Color(r: 0, g: 0, b: 0, a: 255)*/);
    EndDrawing();
}

CloseWindow();

/*
 - Go to build settings
 - Select 'All' and then
 - Search for "header search path"
 - Set to module.modulemap's directory (.)
 - Set "library search path" to directory library is in (/usr/local/lib)
 - Search for "other linker flags" and add 'lraylib'
 - Target>Build Phases>Link Binary With Libraries add all necessary frameworks
 */

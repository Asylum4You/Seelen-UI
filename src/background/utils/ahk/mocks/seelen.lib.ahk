/*
 * This file is generated by Seelen UI and will be replaced on each update please don't modify manually.
 * If you want to introduce your own implementation for shortcuts with AHK or any other scripting language
 * just disable Seelen UI intergrated shortcuts in the shortcuts tab, and this file will be ignored.
*/
#Requires AutoHotkey v2.0
#SingleInstance Force

global seelen := "SEELEN_UI_EXE_PATH"

/** Close the AHK if app is crashed or forced to close */
CloseIfNotRunning() {
  if ProcessExist("seelen-ui.exe") == 0 {
    ExitApp()
  }
  SetTimer(CloseIfNotRunning, 1000)
}

; ================= Main =================
OpenSettings() {
  RunWait(seelen " settings", , "Hide")
}

; ================= Debug =================

ToggleWinEventTracing() {
  RunWait(seelen " debugger toggle-win-events", , "Hide")
}

ToggleMutexLockTracing() {
  RunWait(seelen " debugger toggle-trace-lock", , "Hide")
}

; ================= WEG =================

ForegroundOrRun(idx) {
  RunWait(seelen " weg foreground-or-run-app " idx, , "Hide")
}

; ================= Virtual desktop =================

SwitchWorkspace(idx) {
  RunWait(seelen " vd switch-workspace " idx, , "Hide")
}

MoveToWorkspace(idx) {
  RunWait(seelen " vd move-to-workspace " idx, , "Hide")
}

SendToWorkspace(idx) {
  RunWait(seelen " vd send-to-workspace " idx, , "Hide")
}

; ================= Tiling Window Manager =================

Reserve(reservation) {
  RunWait(seelen " wm reserve " reservation, , "Hide")
}

CancelReservation() {
  RunWait(seelen " wm cancel-reservation", , "Hide")
}

WMDebug() {
  RunWait(seelen " wm debug", , "Hide")
}

updateWindowWidth(action) {
  RunWait(seelen " wm width " action, , "Hide")
}

updateWindowHeight(action) {
  RunWait(seelen " wm height " action, , "Hide")
}

resetWorkspaceSize() {
  RunWait(seelen " wm reset-workspace-size", , "Hide")
}

focus(action) {
  RunWait(seelen " wm focus " action, , "Hide")
}

PauseWM() {
  RunWait(seelen " wm pause", , "Hide")
}

/**
 * Resumes the window manager and will start `seelen.wm.ahk` if
 * the included AHK shortcuts are enabled in the settings.
 */
ResumeWM() {
  RunWait(seelen " wm resume", , "Hide")
}

; ================= App Launcher =================

ToggleAppLauncher() {
  RunWait(seelen " launcher toggle", , "Hide")
}
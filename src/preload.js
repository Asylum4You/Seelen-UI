const { contextBridge, ipcRenderer } = require('electron');

contextBridge.exposeInMainWorld('backgroundApi', {
  enableAutostart: () => {
    ipcRenderer.send('enable-autostart');
  },
  disableAutostart: () => {
    ipcRenderer.send('disable-autostart');
  },
  autostartTaskExist: () => {
    return new Promise((resolve, reject) => {
      ipcRenderer.send('get-autostart-task');
      ipcRenderer.on('get-autostart-task-reply', (e, result, error) => {
        if (error) {
          return reject(error);
        }
        resolve(result != null);
      });
    });
  },
});
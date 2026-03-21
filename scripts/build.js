import os from 'os';
import { execFileSync, spawnSync } from 'child_process';

const output = execFileSync('xmake', {
  cwd: './stub',
  encoding: 'utf8',
  stdio: ['ignore', 'pipe', 'pipe']
});
const lib_path = output.match(/^XMAKE_TARGETDIR=(.+)$/m)[1].trim();

const platform = os.platform();

const link_libs = ['c++', 'qt_mbt_stub'];
const link_search_paths = [lib_path];
const link_configs = [];

switch (platform) {
  case 'darwin':
    link_configs.push({
      package: 'KeqingMoe/qt',
      link_libs,
      link_search_paths,
      link_flags: [
        '-F/opt/homebrew/lib',
        '-framework', 'QtGui',
        '-framework', 'QtNetwork',
        '-framework', 'QtWidgets',
        '-framework', 'QtCore',
      ].join(' '),
    })
    break;
  default:
    throw new Error(`不支持的平台：${platform}`);
}

console.log(JSON.stringify({
  vars: { CC: 'clang' },
  link_configs
}));

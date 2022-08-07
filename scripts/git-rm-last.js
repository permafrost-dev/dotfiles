#!/bin/env node
const cp = require('child_process');

const protectedBranches = [
    'main',
    'mainline',
    'master',
];

const lastBranch = cp.execSync(`git lastbr`, { stdio: 'pipe' }).toString().trim();

if (lastBranch && lastBranch.length && !protectedBranches.includes(lastBranch)) {
    cp.execSync(`git branch -D ${lastBranch}`, { stdio: 'pipe' });
}

if (protectedBranches.includes(lastBranch)) {
    console.log(`Cannot delete protected branch ${lastBranch}`);
} 
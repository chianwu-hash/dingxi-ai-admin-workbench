# CDP Policy Template

Use this policy when a workflow needs browser automation through Chrome DevTools Protocol.

## Launch And Profile

- Launch Chrome with `cdp-launch`.
- For guided local workflows, prefer `D:\projects\cbs-workflows` and `npm run guided:cdp-tools`.
- Store CDP browser profiles under `D:\chrome-cdp-profiles`.
- Use a dedicated profile for each workflow class.
- Do not raw launch Chrome with ad hoc `chrome.exe --remote-debugging-port` commands unless there is a documented exception.

## Connection

- Accept only local CDP URLs by default, such as `http://127.0.0.1:9222`.
- Do not connect to remote CDP URLs unless a project has an explicit, reviewed exception.
- Select the intended target page explicitly.
- Do not fall back to the first browser page when the expected target cannot be found.
- Reuse one browser websocket, page, and CDP session where practical.
- Use reconnect backoff instead of tight reconnect loops.

## CDP Domains And Polling

- Do not repeatedly enumerate all browser pages or CDP targets inside polling loops.
- Do not enable `Network`, `Performance`, `Log`, or `Debugger` domains unless the task requires them.
- Default polling interval should be 5000-8000 ms.
- Do not take screenshots on every poll loop.
- Throttle screenshots to at least 10000 ms unless the task explicitly needs more.

## Logs And Sensitive Data

- Write batch logs to files instead of streaming large logs into Codex Desktop.
- Treat browser profiles, cookies, sessions, login screens, screenshots, and command lines with profile paths as sensitive.
- Do not publish profile data, cookies, session files, login screenshots, or real administrative data.
- Stop before formal actions such as submit, delete, send, publish, import, or write-to-system steps, and ask for human confirmation.

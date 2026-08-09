# Public Template Export Policy

This workspace has an internal working copy and a public template export.

## Internal Working Copy

The internal working copy may contain Dingxi Elementary School brand files and school-internal visual assets.

Examples:

- `assets/brand/dingxi-crest.png`
- `assets/brand/four-mascots-reference.png`
- `assets/brand/admin-workbench-banner.webp`
- `assets/brand/admin-action-banner.webp`

These files are for local or school-internal use.

## Public Template Export

The public template export must not include official Dingxi brand image files.

It may include:

- Flow packs
- Markdown templates
- JSON templates
- Fake demo data
- Safety checklists
- Placeholder brand assets
- Public-safe generated mascot derivative examples based on authorized internal brand references
- `brand/brand-source.json`, including the internal UNC path pointer

It must not include:

- Official crest image files
- Official mascot source files
- OAuth tokens
- Client secrets
- API keys
- `.env.local`
- Gmail logs or real mail data
- Google Calendar IDs, backups, or real event data
- Browser profiles, cookies, sessions, or screenshots containing logged-in accounts
- Real official documents or internal records

## Generated Brand Examples

Authorized internal Dingxi mascot and brand-style reference images may be uploaded to ChatGPT for the purpose of generating derivative teaching examples, including mascot-based notice cards, when the workflow is approved by the user.

Generated derivative examples may be committed and published when all of the following are true:

- The original official crest, mascot reference files, source design files, internal banners, and logged-in screenshots are not committed.
- The generated output is a teaching example or reusable template, not a real internal record.
- The generated output contains no personal data, private contact information, internal links, QR codes, account identifiers, or confidential school records.
- The page clearly marks the output as a sample, mockup, or generated example when it could be mistaken for an official notice.

## Internal Brand Source

The public template may include the internal network path as a pointer:

```text
\\10.235.72.5\0-1學校共用資料--行政資料區\00學校徽圖、校歌、校旗、獎狀
```

This path is only useful inside Dingxi Elementary School's internal network.

If it is unavailable, users should keep placeholder assets and must not generate, imitate, redraw, or trace the official school crest.

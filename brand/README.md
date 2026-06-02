# Brand Source

This teaching-site workspace supports two brand modes:

1. Public template mode: use placeholder assets.
2. Dingxi internal mode: load authorized brand assets from the school internal network.

## Dingxi Internal Brand Source

The internal brand source is:

```text
\\10.235.72.5\0-1學校共用資料--行政資料區\00學校徽圖、校歌、校旗、獎狀
```

This path is expected to work only inside Dingxi Elementary School's internal network.

## AI Assistant Instructions

When running inside the school network:

1. Read `brand/brand-source.json`.
2. Inspect the UNC folder listed in `source_root_unc`.
3. Copy authorized brand assets into `assets/brand/`.
4. Use the filenames listed in `expected_outputs`.

When the UNC path is unavailable:

1. Keep placeholder assets.
2. Do not generate, imitate, redraw, or trace the official school crest.
3. Continue building the teaching website without official brand files.

## Public Repository Policy

The public GitHub repository may include this internal path as a configuration pointer, because it is only reachable inside the school network.

The public GitHub repository should not include official crest image files, internal credentials, browser profiles, logs, or private school records.

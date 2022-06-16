# uptime-kuma
Helm chart for [Uptime Kuma](https://github.com/louislam/uptime-kuma)

## Notes
Can manually add monitors using:
```sh
INSERT INTO monitor VALUES (3, "k3s-agent-2.lan", 1, 1, 60, "https://", "ping", 2000, "k3s-agent-2.lan", NULL, "2022-06-16 18:52:16", NULL, 0, 0, 0, 10, '["200-299"]', "A", "1.1.1.1", NULL, 60, NULL, "GET", NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NUll, NULL);
```
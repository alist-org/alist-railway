# railway
Railway for Alist

### Usage
- Fork this repo
- Open https://railway.app/ and click `New Object`
- Choose the repo that you forked and select the `mysql` branch
- Add `mysql` plugin
- Add a new variable: `PORT -> 5244` to rebuild

### Forget password
Query in mysql
```sql
select value from x_setting_items where `key`='password'
```
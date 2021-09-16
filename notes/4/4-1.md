# Linux环境下添加新用户

1. 切换到root用户

```
$ su root
```

2. 增加新用户（-m参数自动生成用户文件夹）

```
# useradd -m **username**
# passwd **username**
Enter new UNIX password:
Retype new UNIX password:
passwd: password updated successfully
```

3. 添加用户到sudo组

```
# cd /etc
# chmod u+w sudoers
# vim sudoers
```

4. 添加如下内容到sudoers文件

```
root ALL=(ALL)  ALL
appuser ALL=(ALL)  NOPASSWD:ALL
```

5. 还原sudoers文件为只读

```
# chmod u=r-- sudoers
```

6. 其他常用命令

    - 添加用户：useradd
    - 设置密码：passwd
    - 修改密码：change
    - 修改用户信息：usermod
    - 删除用户：userdel
Upgrade pip:
sudo -H pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 sudo -H pip install -U

Save read-only file in vim:
:w !sudo tee %


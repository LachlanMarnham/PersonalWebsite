import yaml


class Config:

    def __init__(self, yaml_file_name):
        self._config_all = self._load(yaml_file_name)

    @staticmethod
    def _load(file_name):
        with open(file_name) as f:
            d = yaml.load(f)
        return d

    @property
    def port(self):
        return self._config_all['port']
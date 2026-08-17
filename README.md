# Configuration automatisé d'une VM (compatible Debian/Ubuntu)

## Utilisation :

```bash
git clone https://github.com/r1story/vm_base_config_ciel.git
cd vm_base_config_ciel
chmod +x install.sh
sudo ./install.sh
```

"chmod +x" : rend le scipt executable <br>
'sudo' est nécessaire car l'utilisateur a besoin d'autorisation sudoer pour installer les outils, créer un user, ... <br>

## Elements configurés :

- Mise à jour du système
- installation des utilitaires de base
- Utilisateur 'Ciel' --> le mot de passe est à entrer manuellement
- Créations d'alias

Tout est indiqué en direct, au fur et à mesure des actions.

## Configuration laissé à la charge de l'utilisateur

- Configuration réseau
- Configuration SSH
- Services (eex : Apache)

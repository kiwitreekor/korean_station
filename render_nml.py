from jinja2 import Environment, FileSystemLoader

def main():
    file_loader = FileSystemLoader('src')
    env = Environment(loader = file_loader)
    
    template = env.get_template('korean_station.pnml')
    
    rendered_nml = template.render()
    
    with open('korean_station.nml', mode = 'w', encoding = 'utf-8') as f:
        f.write(rendered_nml)

if __name__ == '__main__':
    main()
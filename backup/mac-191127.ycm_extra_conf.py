cfamlily_flags = [ 
        #'-Wall',
        #'-Wextra',
        #'-Werror', 
        #'-Wno-long-long', 
        #'-Wno-variadic-macros', 
        #'-fexceptions', 
        #'-DNDEBUG', 
        '-std=c++11',                                                                                    
        '-x', 
        'c++', 
        '-I', 
        '/usr/include', 
        '-isystem', 
        '/usr/lib/gcc/x86_64-linux-gnu/8/include', 
        '-isystem', 
        '/usr/include/x86_64-linux-gnu', 
        '-isystem' 
        '/usr/include/c++/8', 
        '-isystem', 
        '/usr/include/c++/8/bits'
        ]   

def Settings(**kwargs):
    language = kwargs['language']
    if language == 'cfamily':
        return {'flags': cfamlily_flags }
    if language == 'python':
        return { 'interperter_path' : '/usr/bin/python3.6' }
    return {}

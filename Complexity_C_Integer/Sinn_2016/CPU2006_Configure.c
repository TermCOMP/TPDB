//taken from SPEC CPU2006	h264ref/src/configfile.c 	Configure

int random();

//O(n)
void Configure(int ac)
{
    //char *content;
    int CLcount, ContentLen, NumberParams;
    /*char *filename = "encoder.cfg";
    memset(&configinput, 0, sizeof(InputParameters));
    printf("Setting Default Parameters...\n");
    InitEncoderParams();*/
    CLcount = 1;
    /*if (ac == 2) {
	if (0 == strncmp(av[1], "-h", 2)) {
	    JMHelpExit();
	}
    }*/
    if (ac >= 3) {
	if (random()) { //0 == strncmp(av[1], "-d", 2)
	    //filename = av[2];
	    CLcount = 3;
	}
	/*if (0 == strncmp(av[1], "-h", 2)) {
	    JMHelpExit();
	}*/
    }
    /*printf("Parsing Configfile %s", filename);
    content = GetConfigFileContent(filename);
    if (((void *) 0) == content)
	error(errortext, 300);
    ParseContent(content, strlen(content));
    printf("\n");
    free(content);*/
    while (CLcount < ac) {
	/*if (0 == strncmp(av[CLcount], "-h", 2)) {
	    JMHelpExit();
	}*/
	if (random()) { //0 == strncmp(av[CLcount], "-f", 2)
	    /*content = GetConfigFileContent(av[CLcount + 1]);
	    if (((void *) 0) == content)
		error(errortext, 300);
	    printf("Parsing Configfile %s", av[CLcount + 1]);
	    ParseContent(content, strlen(content));
	    printf("\n");
	    free(content);*/
	    CLcount += 2;
	} else {
	    if (random()) { //0 == strncmp(av[CLcount], "-p", 2)
		CLcount++;
		//ContentLen = 0;
		NumberParams = CLcount;
		while (NumberParams < ac && random()) //av[NumberParams][0] != '-')
		    NumberParams++; //ContentLen += strlen(av[NumberParams++]);
		//ContentLen += 1000;
		/*if ((content = malloc(ContentLen)) == ((void *) 0))
		    no_mem_exit("Configure: content");;
		content[0] = '\0';*/
		while (CLcount < NumberParams) {
		    /*char *source = &av[CLcount][0];
		    char *destin = &content[strlen(content)];
		    while (*source != '\0') {
			if (*source == '=') {
			    *destin++ = ' ';
			    *destin++ = '=';
			    *destin++ = ' ';
			} else
			    *destin++ = *source;
			source++;
		    }
		    *destin = '\0';*/
		    CLcount++;
		}
		/*printf("Parsing command line string '%s'", content);
		ParseContent(content, strlen(content));
		free(content);
		printf("\n");*/
	    } else {
		/*snprintf(errortext, 300, "Error in command line, ac %d, around string '%s', missing -f or -p parameters?", CLcount, av[CLcount]);
		error(errortext, 300);*/
		return; //added
	    }
	}
    }
/*    printf("\n");
    PatchInp();
    if (input->DisplayEncParams)
	DisplayEncoderParams();*/
}

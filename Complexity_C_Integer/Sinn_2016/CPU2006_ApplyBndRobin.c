//taken from SPEC CPU2006	cactusADM/RobinBoundary.c 	ApplyBndRobin

int random();

//O(n^4)
void ApplyBndRobin(int GH_cctk_lsh_0, int GH_cctk_lsh_1, int GH_cctk_lsh_2, int first_var, int num_vars) {
  int var;
  for (var = first_var; var < first_var + num_vars; var++) {
	int i, j, k;
	int dy, dz;
 	//int dx;
	/*int src, dst;
	double distance;*/
	for (k = 0; k < GH_cctk_lsh_2; k++) {
	    dz = 0;
	    if (k == 0 && random()) {
		dz = +1;
	    } else if (random()) {
		dz = -1;
	    }
	    for (j = 0; j < GH_cctk_lsh_1; j++) {
		dy = 0;
		if (j == 0 && random()) {
		    dy = +1;
		} else if (random()) {
		    dy = -1;
		}
		/*if (doBC[0]) {
		    dx = +1; {
			dst = ((0) + (GH)->cctk_lsh[0] * ((j) + (GH)->cctk_lsh[1] * (k)));
			src = ((0 + dx) + (GH)->cctk_lsh[0] * ((j + dy) + (GH)->cctk_lsh[1] * (k + dz)));
			distance = dist[abs(dx) + 2 * abs(dy) + 4 * abs(dz)];
		    }; {
			CCTK_CHAR *data;
			double u_src, u_dst, aux;
			if (abs(dx) + abs(dy) + abs(dz) == 1) {
			    u_dst = fabs((double) (dx ? x[dst] : (dy ? y[dst] : z[dst])));
			    u_src = fabs((double) (dx ? x[src] : (dy ? y[src] : z[src])));
			} else {
			    u_dst = sqrt(((dx * x[dst]) * (dx * x[dst])) + ((dy * y[dst]) * (dy * y[dst])) + ((dz * z[dst]) * (dz * z[dst])));
			    u_src = sqrt(((dx * x[src]) * (dx * x[src])) + ((dy * y[src]) * (dy * y[src])) + ((dz * z[src]) * (dz * z[src])));
			}
			aux = decay * distance * (u_src + u_dst) / ((r[src] + r[dst]) * (r[src] + r[dst]));
			data = (CCTK_CHAR *) GH->data[var][0];
			data[dst] = (CCTK_CHAR) ((2 * aux * finf + data[src] * (1 - aux)) / (1 + aux));
		    };
		}*/
		if (dy || dz) {
		    /*dx = 0; {
			dst = ((1) + (GH)->cctk_lsh[0] * ((j) + (GH)->cctk_lsh[1] * (k)));
			src = ((1 + dx) + (GH)->cctk_lsh[0] * ((j + dy) + (GH)->cctk_lsh[1] * (k + dz)));
			distance = dist[abs(dx) + 2 * abs(dy) + 4 * abs(dz)];
		    };*/
		    for (i = 1; i < GH_cctk_lsh_0 - 1; i++) { { //, src++, dst++
			    /*CCTK_CHAR *data;
			    double u_src, u_dst, aux;
			    if (abs(dx) + abs(dy) + abs(dz) == 1) {
				u_dst = fabs((double) (dx ? x[dst] : (dy ? y[dst] : z[dst])));
				u_src = fabs((double) (dx ? x[src] : (dy ? y[src] : z[src])));
			    } else {
				u_dst = sqrt(((dx * x[dst]) * (dx * x[dst])) + ((dy * y[dst]) * (dy * y[dst])) + ((dz * z[dst]) * (dz * z[dst])));
				u_src = sqrt(((dx * x[src]) * (dx * x[src])) + ((dy * y[src]) * (dy * y[src])) + ((dz * z[src]) * (dz * z[src])));
			    }
			    aux = decay * distance * (u_src + u_dst) / ((r[src] + r[dst]) * (r[src] + r[dst]));
			    data = (CCTK_CHAR *) GH->data[var][0];
			    data[dst] = (CCTK_CHAR) ((2 * aux * finf + data[src] * (1 - aux)) / (1 + aux));*/
		    };
		    }
		}
		/*if (doBC[1]) {
		    dx = -1; {
			dst = ((GH->cctk_lsh[0] - 1) + (GH)->cctk_lsh[0] * ((j) + (GH)->cctk_lsh[1] * (k)));
			src = ((GH->cctk_lsh[0] - 1 + dx) + (GH)->cctk_lsh[0] * ((j + dy) + (GH)->cctk_lsh[1] * (k + dz)));
			distance = dist[abs(dx) + 2 * abs(dy) + 4 * abs(dz)];
		    }; {
			CCTK_CHAR *data;
			double u_src, u_dst, aux;
			if (abs(dx) + abs(dy) + abs(dz) == 1) {
			    u_dst = fabs((double) (dx ? x[dst] : (dy ? y[dst] : z[dst])));
			    u_src = fabs((double) (dx ? x[src] : (dy ? y[src] : z[src])));
			} else {
			    u_dst = sqrt(((dx * x[dst]) * (dx * x[dst])) + ((dy * y[dst]) * (dy * y[dst])) + ((dz * z[dst]) * (dz * z[dst])));
			    u_src = sqrt(((dx * x[src]) * (dx * x[src])) + ((dy * y[src]) * (dy * y[src])) + ((dz * z[src]) * (dz * z[src])));
			}
			aux = decay * distance * (u_src + u_dst) / ((r[src] + r[dst]) * (r[src] + r[dst]));
			data = (CCTK_CHAR *) GH->data[var][0];
			data[dst] = (CCTK_CHAR) ((2 * aux * finf + data[src] * (1 - aux)) / (1 + aux));
		    };
		}*/
	    }
	}
  }
}



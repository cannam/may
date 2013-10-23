
package may.bits;

public class VectorBits
{
    public static double sum(double[] v) {
	double tot = 0.0;
	int len = v.length;
	for (int i = 0; i < len; ++i) {
	    tot += v[i];
	}
	return tot;
    }

    public static double[] multiply(double[] v1, double[] v2) {
	int len = v1.length;
	if (v2.length < len) {
	    len = v2.length;
	}
	double[] out = new double[len];
	for (int i = 0; i < len; ++i) {
	    out[i] = v1[i] * v2[i];
	}
	return out;
    }

    public static void addTo(double[] out, double[] in, int len) {
	for (int i = 0; i < len; ++i) {
	    out[i] += in[i];
	}
    }

    public static double[] scaled(double[] v, double factor) {
	int len = v.length;
	double[] out = new double[v.length];
	for (int i = 0; i < len; ++i) {
	    out[i] = v[i] * factor;
	}
	return out;
    }
}


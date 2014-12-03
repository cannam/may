
package may.bits;

public class VectorBits
{
    public static void checkLengths(double[] v1, double[] v2) {
	if (v1.length != v2.length) {
	    IllegalArgumentException e = new IllegalArgumentException
		("Found vector of length " + v2.length +
		 ", but all so far in this arithmetic operation have had length " +
		 v1.length);
	    throw e;
	}
    }

    public static double sum(double[] v) {
	double tot = 0.0;
	int len = v.length;
	for (int i = 0; i < len; ++i) {
	    tot += v[i];
	}
	return tot;
    }

    public static void multiplyBy(double[] out, double[] in) {
	checkLengths(out, in);
	for (int i = 0; i < in.length; ++i) {
	    out[i] *= in[i];
	}
    }

    public static void divideBy(double[] out, double[] in) {
	checkLengths(out, in);
	for (int i = 0; i < in.length; ++i) {
	    out[i] /= in[i];
	}
    }

    public static void addTo(double[] out, double[] in) {
	checkLengths(out, in);
	for (int i = 0; i < in.length; ++i) {
	    out[i] += in[i];
	}
    }

    public static void subtractFrom(double[] out, double[] in) {
	checkLengths(out, in);
	for (int i = 0; i < in.length; ++i) {
	    out[i] -= in[i];
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
    
    public static double euclideanDistance(double[] v1, double[] v2) {
	checkLengths(v1, v2);
	double sum = 0.0;
	for (int i = 0; i < v1.length; ++i) {
	    double d = v1[i] - v2[i];
	    sum += d * d;
	}
	return Math.sqrt(sum);
    }
}


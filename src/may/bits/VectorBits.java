
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

    public static void multiplyBy(double[] out, double[] in) {
	for (int i = 0; i < in.length && i < out.length; ++i) {
	    out[i] *= in[i];
	}
	for (int i = in.length; i < out.length; ++i) {
	    out[i] *= 0.0;
	}
    }

    public static void divideBy(double[] out, double[] in) {
	for (int i = 0; i < in.length && i < out.length; ++i) {
	    out[i] /= in[i];
	}
    }

    public static void addTo(double[] out, double[] in) {
	for (int i = 0; i < in.length && i < out.length; ++i) {
	    out[i] += in[i];
	}
    }

    public static void subtractFrom(double[] out, double[] in) {
	for (int i = 0; i < in.length && i < out.length; ++i) {
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
}


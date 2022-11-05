package com.smaato.soma.b;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.os.AsyncTask;
import android.util.Base64;
import com.smaato.soma.exception.CloseButtonBitmapFailed;
import com.smaato.soma.exception.GettingImageFromServerFailed;
import com.smaato.soma.l;
import java.net.URL;
/* compiled from: CloseButtonImage.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static String f4863a = "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";
    private static a b;

    private a() {
    }

    public static a a() {
        if (b == null) {
            b = new a();
        }
        return b;
    }

    public BitmapDrawable a(Resources resources, Context context) throws CloseButtonBitmapFailed {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.b.a.1
            });
            byte[] decode = Base64.decode(f4863a, 0);
            return new BitmapDrawable(resources, BitmapFactory.decodeByteArray(decode, 0, decode.length));
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new CloseButtonBitmapFailed(e2);
        }
    }

    public BitmapDrawable b(Resources resources, Context context) throws CloseButtonBitmapFailed {
        byte[] decode = Base64.decode("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", 0);
        return new BitmapDrawable(resources, BitmapFactory.decodeByteArray(decode, 0, decode.length));
    }

    public BitmapDrawable c(Resources resources, Context context) throws CloseButtonBitmapFailed {
        byte[] decode = Base64.decode("iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAQAAAD9CzEMAAAAl0lEQVR4Ae3WTarDMBAE4TpN8DH7Rv452MPY3nd2IcSWIPIo8GC6loL5tiKXy502MLHhxg4Whvr5Fd9srRETDmimuC0E2CnOMQUACbQugV8AQj0BYYx6AXq9qwcg/JaiAeGPFAkIX6QoQLiQIgDhSmoH4t8TSOB/AAe+rHTg64/XEgKM9c/vXeCPB9SImb0Z2BnP53O53BP4Kn/NNCDUAgAAAABJRU5ErkJggg==", 0);
        return new BitmapDrawable(resources, BitmapFactory.decodeByteArray(decode, 0, decode.length));
    }

    public BitmapDrawable d(Resources resources, Context context) throws CloseButtonBitmapFailed {
        byte[] decode = Base64.decode("iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAQAAAD9CzEMAAABzElEQVR4Ae2Vz0obURTGf5lJF81OFBe2+haKPoi0Qxpfwz8PoK1biwzY7qoWAtmUgM8R8gKK3TROu3WCcLprFl8uc3Lvogj+vt3M8PvC5dwcngUvZOxwxIAxFVOmVIwZcMg2GclscMpPLJB7PrJONKtcMMUaUlOyQgQ9fmPOVBQsxCu+YgumpI2TDjdYRIZ0fL9e9f6KNo18wRJS0kAPS8x7CLPKn+SCB5YJciGfP9Hle1D2jR5P8vScABtMRf8OyLkO6HOgkIqaN8zlVBRdAGYVqgf4IO9OUMj0P4frf5Kcq4A+1yPkjhbCDoY5K0Qv2UI4wubmaibj0qk3DhAGmKfCpTf6CGMsmMuZ1KU3RggV5qlw6Y0JgqwWHUu33qj/Q0Hl1uvVcx3R2KXPyV0VI+eY6tzL1XOP6aFLb5irYh9h26UP3G7JJkLGvUPvq7ilhcIn+bCH6vXq7cm7Y+ayji6cIqCfVXRl4TyyRoBy4ZW5J3rjjCArVFhifrEEYYrkgl0aKJP0n2mkzTBa/4McBx2GkfrXOGlTRhxOzkIUPOCfnF0iWOaculH+yBlLRPOWE+6C8luOWSOZjC0O6DNiQk3NhBF99tmkxTPghb97ojCKEBVDPQAAAABJRU5ErkJggg==", 0);
        return new BitmapDrawable(resources, BitmapFactory.decodeByteArray(decode, 0, decode.length));
    }

    public BitmapDrawable e(Resources resources, Context context) throws CloseButtonBitmapFailed {
        byte[] decode = Base64.decode("iVBORw0KGgoAAAANSUhEUgAAAGAAAABgCAQAAABIkb+zAAADe0lEQVR4Ae3YzWsdVRyH8WduYkJu703TWKygSDG+rKxiS0SKK7XSRanUl1VEwY0Lb23jokLQtgkmNYqSUKWoWNS0VZAGLAouhFYUiyBVaDFRWxel16RJU+NLocHk63rmjEPunTMnGTif5w/I7wfn5gwHzxrP8zzP8zzP827icQYY5RRVrjDPPFeocopR+nmMG6jNHpwJuI8hfkUkN87r3Lvo8YUTq9jFWVRD43TTSrK9CJG5dl7hb1RHs/TSmjw+IlMFKsygFF3kaQJMvSj7BW7nJLLQcdaa42e/wJP8gyw1y6Pm+Fku0MAwstzLBAD0oawXaGYUJVTlEBU20UE7TTRQpoP72cFHTKKERmg0xhfWNfE5io8phljP/wvYyAH+QvHxEzKyrMBRFNt5KrSwGG30cBktMsveQGZcpZ8itbiWt1lwv8ATyIwx1lGPB6i6XeDW2Bv3E0rU63q+dbdAgW+Q0ZsUSKOFY64WeAYZvUV6/W4WaGMa8/AUSKvP1REy/9AYJQfjCytamTX+ca5zMr6wYieK1E9avS4vsjHj1i06Gl9YcA+KtN3Z+MKCV41PthbS2IvcLnAGhRpyOL5IbQ2KtN7h+CK1rShUlfrtQe4X2I1CHXI6vkjtCApVcTq+SMv44N1EzpxDoTrIF+PlrZ18MZ6vmsiZP/O+wIW8H6GxvP+Iv0ahHiJn3jM+pXPmBRTqMDmzBYX6nZxpYx6F2kDOfI9CDZOVd1CoE1gxgEJNUyQLK4231+ex4g4U6Tmy0IOyunN+QKEusAKD9cfLE1izHUXah23DKFIX1hSZQqHmuBObNjJvPJ41ZXs+xylhyyrOokjPYlUrEyjSUQrY0MAXKNJvNGNZFzI6QHoBHyCjrWTgeOwKBdJo5CAyOkYm1nIZGY1STnF1fYaMJllDRh5GZvzMXdRjA78gowU2k6F9yIw5BllBLcoM8i8yYxeZCngfxValmyKLUWInkyi2d8lcI5+i+JhmP50ECet3sp8ZFB8jFMDFCh+ihCb5mB1s5hZW08w1rOQ2HqSbw0yghA7SgCMBg8hyL+HYI/yBLDXDNtzjZr5CFvqSG1kiAU9xEaVogi6WWBu7uYTq6BI9lFkWSnRzGtXQaSqUWWbu5jV+ZAEldoYBOlnGVrONFxnhO84xxVXmmOE8JzlCH1u4Dks8z/M8z/M8z/P+A3VqDyQv4vpCAAAAAElFTkSuQmCC", 0);
        return new BitmapDrawable(resources, BitmapFactory.decodeByteArray(decode, 0, decode.length));
    }

    public BitmapDrawable f(Resources resources, Context context) throws CloseButtonBitmapFailed {
        byte[] decode = Base64.decode("iVBORw0KGgoAAAANSUhEUgAAAGAAAABgCAQAAABIkb+zAAAAiklEQVR4Ae3awQ0BQBCF4WkATdLHoDd0tRwke9iDBBEv+b5p4P33qS8AAAAAgH5csGONGrkJpxrP69j5uQnnOT4x4TCHZyZs6iJBggQJEiRIkCBBggQJEv7UNjvA/A+YfzX/58w33/yb+ea/Z2e++SvzE+xT50+dPX9N6ArU2fNnQnu3AQAAAIAX7hA+3hbrfkJ2AAAAAElFTkSuQmCC", 0);
        return new BitmapDrawable(resources, BitmapFactory.decodeByteArray(decode, 0, decode.length));
    }

    public BitmapDrawable g(Resources resources, Context context) throws CloseButtonBitmapFailed {
        byte[] decode = Base64.decode("iVBORw0KGgoAAAANSUhEUgAAAGAAAABgCAQAAABIkb+zAAAAhUlEQVR4Ae3P7Q2BYRiD0Q7Ajuzh49kNc/H+kNwDSEjlnC7QKwAAAADwBSur+/5z2+q+Pwm19yeh9v4kFN6fHbvv37JLAffdd999991333333XfffQESJPyKhLuENwkS9hIkbCQ8/iVBggQJh6Q54ZRRmHBOodV9fxIuKbZyDQAAAAB87AVpKN1XvQmX3wAAAABJRU5ErkJggg==", 0);
        return new BitmapDrawable(resources, BitmapFactory.decodeByteArray(decode, 0, decode.length));
    }

    public BitmapDrawable h(Resources resources, Context context) throws CloseButtonBitmapFailed {
        byte[] decode = Base64.decode("iVBORw0KGgoAAAANSUhEUgAAAJYAAAAyCAIAAAAx7rVNAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAABAxJREFUeNrsnD9O40AUhxOEqAMnCJwgUjgABRwB6qQBiSodlJRsR0saqOEImyIHyEpcAJQTQG6Q/ZTHzprxeEjiGceD3k9ay/banvH7/P5NtNtoqBJXkz+dTufu7k5tkZwGg8HLy8s2e62FOFajJCS8DmrsbMvxbDYbj8dql4QEMtnZUlukLkWoCFWKUKUIFaFKEaoUoUoR1kDtdpteu9PpKMJUNZ1OB4PBeDyunmKlCA8ODubz+fHxcSpgVprw4+PjRiiGRLi7u3t/fz/PaDKZcGYlZlz/+voa/D273S7zAUlUa26E4lZAG2F6ticnJ81/en5+XsNqHx8fwd/z/Pyc7enpaWyDbsYXj46Oyv9M8XuhegZSwsP7+zshYVX/XnvCvV4vdnUDMsAF80JelfccDof1TGk4HxQvLi5knhWMWKUvhsyF6wVAyVJXV1cmF2a9mQAorsMFeJKkWHZub29XQkhI/7OQRFSnrCHMlGpOcSsUPASMNdwXYL8W8lzz9PQEhrOzM0mx19fXHH4bt7MRAoTssxWPdCYC6PJkGYKxuDIVimFyIW6RdaZlUgumxMPAY1WklhdKZet81DImZmK4lBnReZf4n1V5yfTKJ+9IedHkwmAIDUVeuyjKWQhBlWfjROiMflyZvz0vKyTyxeTv4oxzztwYpP6KQTFwOSMiCu3t7Y1GI7E7xvKEVgBAlA5kmSfzzPxJEhvPd0ZFq5CRKCpiv7tQ1ts45GnOIepf3QRenSEjUvgBEjaYRlp759cNZvLNkhXQ29tb0Ul/3wlC8GdvByGDZhtEwemk5Rx3be3s7CSAMOs3UAQnqKzcQ1wiamGdksWC8SFP6gUVw82/ils8dWkMEUgfHh4uLy9xx2QQiugU+eotVJgPuiuVfB5OHj/m+fwtIaH5VYeHhzywgpWaLL9+vx+DX6OCZW4ClAUA18RHOU/uBOEyK3DOayQAemId34qEzfyUkEHoCcj+RFsHflUgxDSWEc0hvSDms5qKovbfeRISRV5I/GToogWjbIPIHIqa2vLtRGx+gZuKopUXU6/nlxw5YxX9S/aF8mRPSvO3HFaD6OwLUZm+EH7cyzYStcB9IQbN/6gkPTV2NOHIuWosvZdxAidC6SDNNWJxj/sWtfBZWQ2iLIKbb4JJSjnNQOstc0flFwuhVfhhAsuIRQv/WBPzCWknQmsBk4v9eOSz+LZlzH465puzhuAtVkVYAb9YqzMxZBCmomr4xVqdUVVXv1RZkSo/Raj8FGF8tdvtTfFrmH/lqyqj6XS6v7/PdiOj190Lh8Nhs9lMguKmhtZAmrwUoSJUKUKVIlSEKkWoUoSqUvpcnWm1Wv9/fFKlIPk/9D4Rzha6ublRuyQkoaZ2+An6K8AApitbynE0WYwAAAAASUVORK5CYII=", 0);
        return new BitmapDrawable(resources, BitmapFactory.decodeByteArray(decode, 0, decode.length));
    }

    public Bitmap a(String str, int i, int i2) throws GettingImageFromServerFailed {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.b.a.2
            });
            return Bitmap.createScaledBitmap(new AsyncTaskC0540a().execute(str).get(), i, i2, true);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new GettingImageFromServerFailed(e2);
        }
    }

    /* compiled from: CloseButtonImage.java */
    /* renamed from: com.smaato.soma.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class AsyncTaskC0540a extends AsyncTask<String, Void, Bitmap> {
        AsyncTaskC0540a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public Bitmap doInBackground(final String... strArr) {
            return new l<Bitmap>() { // from class: com.smaato.soma.b.a.a.1
                @Override // com.smaato.soma.l
                /* renamed from: a */
                public Bitmap b() throws Exception {
                    return BitmapFactory.decodeStream(new URL(strArr[0]).openConnection().getInputStream());
                }
            }.c();
        }
    }
}

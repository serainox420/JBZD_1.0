package com.google.android.exoplayer2.text;

import com.google.android.exoplayer2.Format;
/* compiled from: SubtitleDecoderFactory.java */
/* loaded from: classes2.dex */
public interface g {

    /* renamed from: a  reason: collision with root package name */
    public static final g f3456a = new g() { // from class: com.google.android.exoplayer2.text.g.1
        @Override // com.google.android.exoplayer2.text.g
        public boolean a(Format format) {
            return a(format.f) != null;
        }

        @Override // com.google.android.exoplayer2.text.g
        public f b(Format format) {
            try {
                Class<?> a2 = a(format.f);
                if (a2 == null) {
                    throw new IllegalArgumentException("Attempted to create decoder for unsupported format");
                }
                return (format.f.equals("application/cea-608") || format.f.equals("application/x-mp4-cea-608")) ? (f) a2.asSubclass(f.class).getConstructor(String.class, Integer.TYPE).newInstance(format.f, Integer.valueOf(format.y)) : format.f.equals("application/cea-708") ? (f) a2.asSubclass(f.class).getConstructor(Integer.TYPE).newInstance(Integer.valueOf(format.y)) : (f) a2.asSubclass(f.class).getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (Exception e) {
                throw new IllegalStateException("Unexpected error instantiating decoder", e);
            }
        }

        private Class<?> a(String str) {
            if (str == null) {
                return null;
            }
            char c = 65535;
            try {
                switch (str.hashCode()) {
                    case -1026075066:
                        if (str.equals("application/x-mp4-vtt")) {
                            c = 2;
                            break;
                        }
                        break;
                    case -1004728940:
                        if (str.equals("text/vtt")) {
                            c = 0;
                            break;
                        }
                        break;
                    case 691401887:
                        if (str.equals("application/x-quicktime-tx3g")) {
                            c = 4;
                            break;
                        }
                        break;
                    case 930165504:
                        if (str.equals("application/x-mp4-cea-608")) {
                            c = 6;
                            break;
                        }
                        break;
                    case 1566015601:
                        if (str.equals("application/cea-608")) {
                            c = 5;
                            break;
                        }
                        break;
                    case 1566016562:
                        if (str.equals("application/cea-708")) {
                            c = 7;
                            break;
                        }
                        break;
                    case 1668750253:
                        if (str.equals("application/x-subrip")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 1693976202:
                        if (str.equals("application/ttml+xml")) {
                            c = 1;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        return Class.forName("com.google.android.exoplayer2.text.e.g");
                    case 1:
                        return Class.forName("com.google.android.exoplayer2.text.c.a");
                    case 2:
                        return Class.forName("com.google.android.exoplayer2.text.e.b");
                    case 3:
                        return Class.forName("com.google.android.exoplayer2.text.b.a");
                    case 4:
                        return Class.forName("com.google.android.exoplayer2.text.d.a");
                    case 5:
                    case 6:
                        return Class.forName("com.google.android.exoplayer2.text.a.a");
                    case 7:
                        return Class.forName("com.google.android.exoplayer2.text.a.c");
                    default:
                        return null;
                }
            } catch (ClassNotFoundException e) {
                return null;
            }
        }
    };

    boolean a(Format format);

    f b(Format format);
}

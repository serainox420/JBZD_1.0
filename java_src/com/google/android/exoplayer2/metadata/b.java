package com.google.android.exoplayer2.metadata;

import com.google.android.exoplayer2.Format;
/* compiled from: MetadataDecoderFactory.java */
/* loaded from: classes2.dex */
public interface b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f3310a = new b() { // from class: com.google.android.exoplayer2.metadata.b.1
        @Override // com.google.android.exoplayer2.metadata.b
        public boolean a(Format format) {
            return a(format.f) != null;
        }

        @Override // com.google.android.exoplayer2.metadata.b
        public a b(Format format) {
            try {
                Class<?> a2 = a(format.f);
                if (a2 == null) {
                    throw new IllegalArgumentException("Attempted to create decoder for unsupported format");
                }
                return (a) a2.asSubclass(a.class).getConstructor(new Class[0]).newInstance(new Object[0]);
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
                    case -1248341703:
                        if (str.equals("application/id3")) {
                            c = 0;
                            break;
                        }
                        break;
                    case 1154383568:
                        if (str.equals("application/x-emsg")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 1652648887:
                        if (str.equals("application/x-scte35")) {
                            c = 2;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        return Class.forName("com.google.android.exoplayer2.metadata.id3.a");
                    case 1:
                        return Class.forName("com.google.android.exoplayer2.metadata.emsg.a");
                    case 2:
                        return Class.forName("com.google.android.exoplayer2.metadata.scte35.a");
                    default:
                        return null;
                }
            } catch (ClassNotFoundException e) {
                return null;
            }
        }
    };

    boolean a(Format format);

    a b(Format format);
}

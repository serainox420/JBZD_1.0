package com.google.android.gms.cast;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.internal.zzze;
import com.google.firebase.a.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class MediaMetadata extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final int MEDIA_TYPE_GENERIC = 0;
    public static final int MEDIA_TYPE_MOVIE = 1;
    public static final int MEDIA_TYPE_MUSIC_TRACK = 3;
    public static final int MEDIA_TYPE_PHOTO = 4;
    public static final int MEDIA_TYPE_TV_SHOW = 2;
    public static final int MEDIA_TYPE_USER = 100;
    private final List<WebImage> zzGq;
    final Bundle zzaot;
    private int zzaou;
    private static final String[] zzaor = {null, "String", "int", "double", "ISO-8601 date String"};
    public static final Parcelable.Creator<MediaMetadata> CREATOR = new zzj();
    public static final String KEY_CREATION_DATE = "com.google.android.gms.cast.metadata.CREATION_DATE";
    public static final String KEY_RELEASE_DATE = "com.google.android.gms.cast.metadata.RELEASE_DATE";
    public static final String KEY_BROADCAST_DATE = "com.google.android.gms.cast.metadata.BROADCAST_DATE";
    public static final String KEY_TITLE = "com.google.android.gms.cast.metadata.TITLE";
    public static final String KEY_SUBTITLE = "com.google.android.gms.cast.metadata.SUBTITLE";
    public static final String KEY_ARTIST = "com.google.android.gms.cast.metadata.ARTIST";
    public static final String KEY_ALBUM_ARTIST = "com.google.android.gms.cast.metadata.ALBUM_ARTIST";
    public static final String KEY_ALBUM_TITLE = "com.google.android.gms.cast.metadata.ALBUM_TITLE";
    public static final String KEY_COMPOSER = "com.google.android.gms.cast.metadata.COMPOSER";
    public static final String KEY_DISC_NUMBER = "com.google.android.gms.cast.metadata.DISC_NUMBER";
    public static final String KEY_TRACK_NUMBER = "com.google.android.gms.cast.metadata.TRACK_NUMBER";
    public static final String KEY_SEASON_NUMBER = "com.google.android.gms.cast.metadata.SEASON_NUMBER";
    public static final String KEY_EPISODE_NUMBER = "com.google.android.gms.cast.metadata.EPISODE_NUMBER";
    public static final String KEY_SERIES_TITLE = "com.google.android.gms.cast.metadata.SERIES_TITLE";
    public static final String KEY_STUDIO = "com.google.android.gms.cast.metadata.STUDIO";
    public static final String KEY_WIDTH = "com.google.android.gms.cast.metadata.WIDTH";
    public static final String KEY_HEIGHT = "com.google.android.gms.cast.metadata.HEIGHT";
    public static final String KEY_LOCATION_NAME = "com.google.android.gms.cast.metadata.LOCATION_NAME";
    public static final String KEY_LOCATION_LATITUDE = "com.google.android.gms.cast.metadata.LOCATION_LATITUDE";
    public static final String KEY_LOCATION_LONGITUDE = "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE";
    private static final zza zzaos = new zza().zzc(KEY_CREATION_DATE, "creationDateTime", 4).zzc(KEY_RELEASE_DATE, "releaseDate", 4).zzc(KEY_BROADCAST_DATE, "originalAirdate", 4).zzc(KEY_TITLE, "title", 1).zzc(KEY_SUBTITLE, "subtitle", 1).zzc(KEY_ARTIST, "artist", 1).zzc(KEY_ALBUM_ARTIST, "albumArtist", 1).zzc(KEY_ALBUM_TITLE, "albumName", 1).zzc(KEY_COMPOSER, "composer", 1).zzc(KEY_DISC_NUMBER, "discNumber", 2).zzc(KEY_TRACK_NUMBER, "trackNumber", 2).zzc(KEY_SEASON_NUMBER, "season", 2).zzc(KEY_EPISODE_NUMBER, "episode", 2).zzc(KEY_SERIES_TITLE, "seriesTitle", 1).zzc(KEY_STUDIO, "studio", 1).zzc(KEY_WIDTH, "width", 2).zzc(KEY_HEIGHT, "height", 2).zzc(KEY_LOCATION_NAME, a.b.LOCATION, 1).zzc(KEY_LOCATION_LATITUDE, "latitude", 3).zzc(KEY_LOCATION_LONGITUDE, "longitude", 3);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zza {
        private final Map<String, String> zzaov = new HashMap();
        private final Map<String, String> zzaow = new HashMap();
        private final Map<String, Integer> zzaox = new HashMap();

        public zza zzc(String str, String str2, int i) {
            this.zzaov.put(str, str2);
            this.zzaow.put(str2, str);
            this.zzaox.put(str, Integer.valueOf(i));
            return this;
        }

        public String zzcG(String str) {
            return this.zzaov.get(str);
        }

        public String zzcH(String str) {
            return this.zzaow.get(str);
        }

        public int zzcI(String str) {
            Integer num = this.zzaox.get(str);
            if (num != null) {
                return num.intValue();
            }
            return 0;
        }
    }

    public MediaMetadata() {
        this(0);
    }

    public MediaMetadata(int i) {
        this(new ArrayList(), new Bundle(), i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaMetadata(List<WebImage> list, Bundle bundle, int i) {
        this.zzGq = list;
        this.zzaot = bundle;
        this.zzaou = i;
    }

    private void zza(JSONObject jSONObject, String... strArr) {
        try {
            for (String str : strArr) {
                if (this.zzaot.containsKey(str)) {
                    switch (zzaos.zzcI(str)) {
                        case 1:
                        case 4:
                            jSONObject.put(zzaos.zzcG(str), this.zzaot.getString(str));
                            continue;
                        case 2:
                            jSONObject.put(zzaos.zzcG(str), this.zzaot.getInt(str));
                            continue;
                        case 3:
                            jSONObject.put(zzaos.zzcG(str), this.zzaot.getDouble(str));
                            continue;
                        default:
                            continue;
                    }
                }
            }
            for (String str2 : this.zzaot.keySet()) {
                if (!str2.startsWith("com.google.")) {
                    Object obj = this.zzaot.get(str2);
                    if (obj instanceof String) {
                        jSONObject.put(str2, obj);
                    } else if (obj instanceof Integer) {
                        jSONObject.put(str2, obj);
                    } else if (obj instanceof Double) {
                        jSONObject.put(str2, obj);
                    }
                }
            }
        } catch (JSONException e) {
        }
    }

    private void zzb(JSONObject jSONObject, String... strArr) {
        HashSet hashSet = new HashSet(Arrays.asList(strArr));
        try {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (!"metadataType".equals(next)) {
                    String zzcH = zzaos.zzcH(next);
                    if (zzcH == null) {
                        Object obj = jSONObject.get(next);
                        if (obj instanceof String) {
                            this.zzaot.putString(next, (String) obj);
                        } else if (obj instanceof Integer) {
                            this.zzaot.putInt(next, ((Integer) obj).intValue());
                        } else if (obj instanceof Double) {
                            this.zzaot.putDouble(next, ((Double) obj).doubleValue());
                        }
                    } else if (hashSet.contains(zzcH)) {
                        try {
                            Object obj2 = jSONObject.get(next);
                            if (obj2 != null) {
                                switch (zzaos.zzcI(zzcH)) {
                                    case 1:
                                        if (obj2 instanceof String) {
                                            this.zzaot.putString(zzcH, (String) obj2);
                                            break;
                                        } else {
                                            continue;
                                        }
                                    case 2:
                                        if (obj2 instanceof Integer) {
                                            this.zzaot.putInt(zzcH, ((Integer) obj2).intValue());
                                            break;
                                        } else {
                                            continue;
                                        }
                                    case 3:
                                        if (obj2 instanceof Double) {
                                            this.zzaot.putDouble(zzcH, ((Double) obj2).doubleValue());
                                            break;
                                        } else {
                                            continue;
                                        }
                                    case 4:
                                        if (!(obj2 instanceof String)) {
                                            continue;
                                        } else if (zzze.zzcW((String) obj2) == null) {
                                            break;
                                        } else {
                                            this.zzaot.putString(zzcH, (String) obj2);
                                            break;
                                        }
                                    default:
                                        continue;
                                }
                            }
                        } catch (JSONException e) {
                        }
                    }
                }
            }
        } catch (JSONException e2) {
        }
    }

    private boolean zzb(Bundle bundle, Bundle bundle2) {
        if (bundle.size() != bundle2.size()) {
            return false;
        }
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            Object obj2 = bundle2.get(str);
            if ((obj instanceof Bundle) && (obj2 instanceof Bundle) && !zzb((Bundle) obj, (Bundle) obj2)) {
                return false;
            }
            if (obj == null) {
                if (obj2 != null || !bundle2.containsKey(str)) {
                    return false;
                }
            } else if (!obj.equals(obj2)) {
                return false;
            }
        }
        return true;
    }

    private void zzg(String str, int i) throws IllegalArgumentException {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("null and empty keys are not allowed");
        }
        int zzcI = zzaos.zzcI(str);
        if (zzcI == i || zzcI == 0) {
            return;
        }
        String valueOf = String.valueOf(zzaor[i]);
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(valueOf).length()).append("Value for ").append(str).append(" must be a ").append(valueOf).toString());
    }

    public void addImage(WebImage webImage) {
        this.zzGq.add(webImage);
    }

    public void clear() {
        this.zzaot.clear();
        this.zzGq.clear();
    }

    public void clearImages() {
        this.zzGq.clear();
    }

    public boolean containsKey(String str) {
        return this.zzaot.containsKey(str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaMetadata)) {
            return false;
        }
        MediaMetadata mediaMetadata = (MediaMetadata) obj;
        return zzb(this.zzaot, mediaMetadata.zzaot) && this.zzGq.equals(mediaMetadata.zzGq);
    }

    public Calendar getDate(String str) {
        zzg(str, 4);
        String string = this.zzaot.getString(str);
        if (string != null) {
            return zzze.zzcW(string);
        }
        return null;
    }

    public String getDateAsString(String str) {
        zzg(str, 4);
        return this.zzaot.getString(str);
    }

    public double getDouble(String str) {
        zzg(str, 3);
        return this.zzaot.getDouble(str);
    }

    public List<WebImage> getImages() {
        return this.zzGq;
    }

    public int getInt(String str) {
        zzg(str, 2);
        return this.zzaot.getInt(str);
    }

    public int getMediaType() {
        return this.zzaou;
    }

    public String getString(String str) {
        zzg(str, 1);
        return this.zzaot.getString(str);
    }

    public boolean hasImages() {
        return this.zzGq != null && !this.zzGq.isEmpty();
    }

    public int hashCode() {
        int i = 17;
        Iterator<String> it = this.zzaot.keySet().iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = this.zzaot.get(it.next()).hashCode() + (i2 * 31);
            } else {
                return (i2 * 31) + this.zzGq.hashCode();
            }
        }
    }

    public Set<String> keySet() {
        return this.zzaot.keySet();
    }

    public void putDate(String str, Calendar calendar) {
        zzg(str, 4);
        this.zzaot.putString(str, zzze.zza(calendar));
    }

    public void putDouble(String str, double d) {
        zzg(str, 3);
        this.zzaot.putDouble(str, d);
    }

    public void putInt(String str, int i) {
        zzg(str, 2);
        this.zzaot.putInt(str, i);
    }

    public void putString(String str, String str2) {
        zzg(str, 1);
        this.zzaot.putString(str, str2);
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("metadataType", this.zzaou);
        } catch (JSONException e) {
        }
        zzze.zza(jSONObject, this.zzGq);
        switch (this.zzaou) {
            case 0:
                zza(jSONObject, KEY_TITLE, KEY_ARTIST, KEY_SUBTITLE, KEY_RELEASE_DATE);
                break;
            case 1:
                zza(jSONObject, KEY_TITLE, KEY_STUDIO, KEY_SUBTITLE, KEY_RELEASE_DATE);
                break;
            case 2:
                zza(jSONObject, KEY_TITLE, KEY_SERIES_TITLE, KEY_SEASON_NUMBER, KEY_EPISODE_NUMBER, KEY_BROADCAST_DATE);
                break;
            case 3:
                zza(jSONObject, KEY_TITLE, KEY_ARTIST, KEY_ALBUM_TITLE, KEY_ALBUM_ARTIST, KEY_COMPOSER, KEY_TRACK_NUMBER, KEY_DISC_NUMBER, KEY_RELEASE_DATE);
                break;
            case 4:
                zza(jSONObject, KEY_TITLE, KEY_ARTIST, KEY_LOCATION_NAME, KEY_LOCATION_LATITUDE, KEY_LOCATION_LONGITUDE, KEY_WIDTH, KEY_HEIGHT, KEY_CREATION_DATE);
                break;
            default:
                zza(jSONObject, new String[0]);
                break;
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzj.zza(this, parcel, i);
    }

    public void zzn(JSONObject jSONObject) {
        clear();
        this.zzaou = 0;
        try {
            this.zzaou = jSONObject.getInt("metadataType");
        } catch (JSONException e) {
        }
        zzze.zza(this.zzGq, jSONObject);
        switch (this.zzaou) {
            case 0:
                zzb(jSONObject, KEY_TITLE, KEY_ARTIST, KEY_SUBTITLE, KEY_RELEASE_DATE);
                return;
            case 1:
                zzb(jSONObject, KEY_TITLE, KEY_STUDIO, KEY_SUBTITLE, KEY_RELEASE_DATE);
                return;
            case 2:
                zzb(jSONObject, KEY_TITLE, KEY_SERIES_TITLE, KEY_SEASON_NUMBER, KEY_EPISODE_NUMBER, KEY_BROADCAST_DATE);
                return;
            case 3:
                zzb(jSONObject, KEY_TITLE, KEY_ALBUM_TITLE, KEY_ARTIST, KEY_ALBUM_ARTIST, KEY_COMPOSER, KEY_TRACK_NUMBER, KEY_DISC_NUMBER, KEY_RELEASE_DATE);
                return;
            case 4:
                zzb(jSONObject, KEY_TITLE, KEY_ARTIST, KEY_LOCATION_NAME, KEY_LOCATION_LATITUDE, KEY_LOCATION_LONGITUDE, KEY_WIDTH, KEY_HEIGHT, KEY_CREATION_DATE);
                return;
            default:
                zzb(jSONObject, new String[0]);
                return;
        }
    }
}
